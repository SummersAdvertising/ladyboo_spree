module Spree::ClaimsHelper 
  def status_to_word(status)
    case status
      when '1'
        Spree.t(:open)
      when '2'
        Spree.t(:closed)    
      end  
  end  
end
