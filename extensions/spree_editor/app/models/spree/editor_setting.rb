module Spree
  class EditorSetting < Preferences::Configuration
    preference :enabled,        :boolean, default: true
    preference :current_editor, :string,  default: 'CKEditor' #'TinyMCE'
    preference :ids,            :string,  default: 'product_description page_body'

    def self.editors
      %w(CKEditor)  # %w(TinyMCE CKEditor)
    end
  end
end
