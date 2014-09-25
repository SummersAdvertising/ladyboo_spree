Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "combination_layout_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:combination_layouts, :label => Spree.t('admin.tab.combination_layouts'), :url => spree.admin_combination_layouts_path, :icon => 'icon-file') if can? :manage, Spree::CombinationLayout %>",
                     :original => "fc4f455f95d8dac0d9202cb647f7b661cde85aea",
                     :disabled => false)
