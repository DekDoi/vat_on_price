class PriceVatThree

  def initialize(percent)
    @percent = percent
    @vat = 1+@percent/100.0
  end

  def method_missing(name, *args)
    result = 0.0

    unless args[0].nil?
      if name.eql? :before_vat
        result = args[0]/@vat
      elsif name.eql? :after_vat
        result = args[0]*@vat
      end
    end

    result
  end

  def vat_price(price_excluded_vat, price_included_vat)
    after_vat(price_excluded_vat)-before_vat(price_included_vat)
  end

end
