require 'spec_helper'

describe PriceVat do

  describe "#to_vat" do
    it "returns a VAT rate that equals to 1.07" do
      PriceVatTwo.to_vat(7).should eq 1.07
    end
  end
  
  describe "#before_vat" do
    it "returns a price before VAT that equals to 794.3925233644859" do
      PriceVatTwo.before_vat(850.0, 7).should eq 794.3925233644859 
    end
  end
  
  describe "#after_vat" do
    it "returns a price after VAT that equals to 850" do
      PriceVatTwo.after_vat(794.3925233644859, 7).should eq 850.0 
    end
  end
  
  describe "#vat_price" do
    it "returns a VAT that equals to 55.607476635514104" do
      PriceVatTwo.vat_price(794.3925233644859, 850.0, 7).should eq 55.607476635514104
    end
  end

end
