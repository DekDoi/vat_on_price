class PriceVat
  
  ##############################
  
  def initialize(price)
    @price = price
  end
  
  # PriceVat.new(850).to_vat(7)
  def to_vat(percent)
    @price/(1+percent/100.0)
  end
  
  ############# OR ##############
  
  # PriceVat.to_v(850, 7)
  class << self
    def to_v(price, percent)
      price/(1+percent/100.0)
    end
  end
  
  ###############################
  
end
