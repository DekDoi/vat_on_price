class PriceVat
  
  class << self

    def to_vat(percent)
      (1+percent/100.0)
    end

    def before_vat(price_included_vat, percent)
      price_included_vat/to_vat(percent)
    end

    def after_vat(price_excluded_vat, percent)
      price_excluded_vat*to_vat(percent)
    end

    def vat_price(price_excluded_vat, price_included_vat, percent)
      after_vat(price_excluded_vat, percent) - before_vat(price_included_vat, percent)
    end
    
  end
  
end