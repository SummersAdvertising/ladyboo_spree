Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "claim_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:claims, :label => Spree.t('admin.tab.claims'), :url => spree.admin_claims_path, :icon => 'icon-file') if can? :manage, Spree::Claim %>",
                     :original => "fc4f455f95d8dac0d9202cb647f7b661cde85aea",
                     :disabled => false)
