require 'spec_helper'

describe PriceVatThree do

  before :each do
    @price_vat = PriceVatThree.new 7
  end
  
  describe "#new" do
    it "takes a parameter and returns a PriceVatThree object" do
      @price_vat.should be_an_instance_of PriceVatThree
    end
  end
  
  describe "#method_missing" do
  
    describe "method's name is 'before_vat'" do
      it "returns a price before VAT that equals to 794.3925233644859 " do
        @price_vat.before_vat(850.0).should eq 794.3925233644859 
      end
    end
    
    describe "method's name is 'after_vat'" do
      it "returns a price after VAT that equals to 850" do
        @price_vat.after_vat(794.3925233644859).should eq 850.0 
      end
    end
    
    describe "method's name doesn't match any conditions or incorrect format" do
      it "returns 0" do
        @price_vat.discount_price(794.3925233644859).should eq 0
      end
    end
    
  end
  
  describe "#vat_price" do
    it "returns a VAT that equals to 55.607476635514104" do
      @price_vat.vat_price(794.3925233644859, 850.0).should eq 55.607476635514104
    end
  end

end
