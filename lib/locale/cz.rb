# Czech translation file for standard Rails internalization
# See www.rails-i18n.org for more information about Rails i18n 
# 
# NOTE: In real world, you would obviously split this file into more pieces and load them separately
# 
# Translation by Karel Minařík (karmi@karmi.cz)

I18n.backend.store_translations :cz, {

  # Static texts
  :locale         => 'Jazyk',
  :switch_locale  => 'Jazyky:',
  :hello_world    => 'Dobrý den!',
  :good_bye       => 'Nashledanou!',
  :static_strings => 'Statické texty',
  :numbers        => 'Čísla',
  :time_and_date  => 'Datum a čas',
  :array          => 'Pole',

  # ActiveSupport
  :support => {
    :array => {
      :sentence_connector => 'a',
      :skip_last_comma => true
    }
  },
  
  # Date
  :date => {
    :formats => {
      :default => "%d. %m. %Y",
      :short   => "%d %b",
      :long    => "%d. %B %Y",
    },
    :day_names         => %w{Neděle Pondělí Úterý Středa Čtvrtek Pátek Sobota},
    :abbr_day_names    => %w{Ne Po Út St Čt Pá So},
    :month_names       => %w{Leden Únor Březen Duben Květen Červen Červenec Srpen Září Říjen Listopad Prosinec},
    :abbr_month_names  => %w{Led Úno Bře Dub Kvě Čvn Čvc Srp Zář Říj Lis Pro},
    :order             => [:day, :month, :year]
  },
  
  # Time
  :time => {
    :formats => {
      :default => "%a %d. %B %Y %H:%M %z",
      :short   => "%d. %m. %H:%M",
      :long    => "%A %d. %B %Y %H:%M",
    },
    :am => 'am',
    :pm => 'pm'
  },
  
  # Numbers
  :number => {
    :format => {
      :precision => 3,
      :separator => '.',
      :delimiter => ','
    },
    :currency => {
      :format => {
        :unit => 'Kč',
        :precision => 2,
        :format    => '%n %u',
        :separator => ",",
        :delimiter => " ",
      }
    },
    :human => {
      :format => {
        :precision => 1,
        :delimiter => ''
      }
    },
    :percentage => {
      :format => {
        :delimiter => ''
      }
    },
    :precision => {
      :format => {
        :delimiter => ''
      }
    }
  },
  
  # Distance of time ... helper
  # NOTE: In Czech language, these values are different for the past and for the future. Preference has been given to past here.
  :datetime => {
    :distance_in_words => {
      :half_a_minute       => 'půl minutou',
      :less_than_x_seconds => ['asi před sekundou', 'asi před {{count}} sekundami'],
      :x_seconds           => ['sekundou', '{{count}} sekundami'],
      :less_than_x_minutes => ['před necelou minutou', 'před ani ne {{count}} minutami'],
      :x_minutes           => ['minutou', '{{count}} minutami'],
      :about_x_hours       => ['asi hodinou', 'asi {{count}} hodinami'],
      :x_days              => ['24 hodinami', '{{count}} dny'],
      :about_x_months      => ['asi měsícem', 'asi {{count}} měsíci'],
      :x_months            => ['měsícem', '{{count}} měsíci'],
      :about_x_years       => ['asi rokem', 'asi {{count}} roky'],
      :over_x_years        => ['více než před rokem', 'více než {{count}} roky']
    }
  },
  
  # ActiveRecord validation messages
  :active_record => {
    :error_messages => {
      :inclusion           => "není v seznamu povolených hodnot",
      :exclusion           => "je vyhrazeno pro jiný účel",
      :invalid             => "není platná hodnota",
      :confirmation        => "nebylo potvrzeno",
      :accepted            => "musí být potvrzeno",
      :empty               => "nesmí být prázdný/é",
      :blank               => "je povinná položka",# alternate formulation: "is required"
      :too_long            => "je příliš dlouhá/ý (max. {{count}} znaků)",
      :too_short           => "je příliš krátký/á (min. {{count}} znaků)",
      :wrong_length        => "nemá správnou délku (očekáváno {{count}} znaků)",
      :taken               => "již databáze obsahuje",
      :not_a_number        => "není číslo",
      :greater_than        => "musí být větší než {{count}}",
      :greater_than_or_equal_to => "musí být větší nebo rovno {{count}}",
      :equal_to            => "musí být rovno {{count}}",
      :less_than           => "musí být méně než {{count}}",
      :less_than_or_equal_to    => "musí být méně nebo rovno {{count}}",
      :odd                 => "musí být liché číslo",
      :even                => "musí být sudé číslo"
    },
    :error => {
      :header_message => ["Při ukládání objektu {{object_name}} došlo k chybám a nebylo jej možné uložit", 
                          "Při ukládání objektu {{object_name}} došlo ke {{count}} chybám a nebylo možné jej uložit"],
      :message        => "Následující pole obsahují chybně vyplněné údaje:"
    }
  }

}

