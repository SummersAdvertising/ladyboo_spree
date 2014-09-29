Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "blog_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:blog_entries, :label => Spree.t('admin.tab.blog_entries'), :url => spree.admin_blog_entries_path, :icon => 'icon-file') if can? :manage, Spree::BlogEntry %>",
                     :original =>'a4fe3363f464290cc10b0d8587ee977d555378dd',
                     :disabled => false)
