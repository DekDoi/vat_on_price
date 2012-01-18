class PriceVat
  attr_accessor :percent

  def initialize(percent)
    @percent = percent
    @vat = 1+@percent/100.0
  end
  
  def before_vat(price_included_vat)
    price_included_vat/@vat
  end

  def after_vat(price_excluded_vat)
    price_excluded_vat*@vat
  end

  def vat_price(price_excluded_vat, price_included_vat)
    after_vat(price_excluded_vat) - before_vat(price_included_vat)
  end

end
