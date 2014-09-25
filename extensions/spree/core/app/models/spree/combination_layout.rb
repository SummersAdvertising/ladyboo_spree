module Spree
  class CombinationLayout < Spree::Base
  
    has_attached_file :image, 
       :styles => {:mini => '48x48#', :normal => '200x200>', :large => '600x600>'},
       :default_style => :large,
       :url => "/spree/combination_layout_images/:id/:style/:basename.:extension",
       :path => ":rails_root/public/spree/combination_layout_images/:id/:style/:basename.:extension"  
  
    validates_attachment :image,
        content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] },
        size: { :less_than => 3.megabytes }  
  end
end  
