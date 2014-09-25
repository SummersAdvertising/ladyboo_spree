class Spree::Claim < ActiveRecord::Base
  EMAIL_REGEX = /\A
      [^\s@]+ # non-at-sign characters, at least one
        @     # at-sign
      [^\s.@] # non-at-sign and non-period character
      [^\s@]* # 0 or more non-at-sign characters, accepts any number of periods
       \.     # period
      [^\s@]* # 0 or more non-at-sign characters, accepts any number of periods
      [^\s.@] # non-at-sign and non-period character
    \z/x

  validates :email,   :format => { :with => EMAIL_REGEX },
                      :presence => true
  validates :message, :presence => true
end
