require 'date'
require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  
  def test_should_render_proper_en_us_locale_by_default
    get :index
    assert_equal "Good bye!", assigns(:good_bye)
    assert_select 'p.hello_world', :text => 'Hello World!'
    assert_select 'p.currency',    :text => '$1,024.00'
    # TODO: Implement mocha and +falsify_today+ method
    assert_select 'span.localized_date',    :text => Date.today.strftime("%Y-%m-%d")
  end
  
  def test_should_render_proper_text_in_czech_locale
    get :index, :locale => 'cz'
    assert_equal "Nashledanou!", assigns(:good_bye)
    assert_select 'p.hello_world', :text => 'Dobrý den!'
    assert_select 'p.currency',    :text => '1 024,00 Kč'
    assert_select 'span.localized_date',    :text => Date.today.strftime("22. 08. 2008")
  end
  
end
