Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "include_rich_text_js",
                     :insert_bottom => "[data-hook='admin_footer_scripts']",
                     :text => "<%= render :partial => 'shared/rich_editor_javascript' %>",
                     :original => '98debd58d80ce56cfe24a4d0ef0e4dc2725c06d7'
                     )