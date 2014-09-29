Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "blog_in_header",
                     :insert_bottom => "#main-nav-bar",
                     :text => "<li class='<%= (request.fullpath.gsub('//','/') == '/blog') ? 'current' : 'not'%>'><%= link_to Spree.t(:blog_title), '/blog'  %></li>",
                     :original => '442eefbb91b46a8773ce1de620f8f0a88a66caf1')
