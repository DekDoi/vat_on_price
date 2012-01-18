require 'spec_helper'

describe PriceVat do

  before :each do
    @price_vat = PriceVat.new 7
  end
  
  describe "#new" do
    it "takes a parameter and returns a PriceVat object" do
      @price_vat.should be_an_instance_of PriceVat
    end
  end
  
  describe "#before_vat" do
    it "returns a price before VAT that equals to 794.3925233644859 " do
      @price_vat.before_vat(850.0).should eq 794.3925233644859 
    end
  end
  
  describe "#after_vat" do
    it "returns a price after VAT that equals to 850" do
      @price_vat.after_vat(794.3925233644859).should eq 850.0 
    end
  end
  
  describe "#vat_price" do
    it "returns a VAT that equals to 55.607476635514104" do
      @price_vat.vat_price(794.3925233644859, 850.0).should eq 55.607476635514104
    end
  end

end
