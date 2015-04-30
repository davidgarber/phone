require('rspec')
require('phone')

  describe("#number") do
    it("returns phone number") do
    test_phone = Phone.new({:number => "555-5555", :area_code => "503"})
    expect(test_phone.number()).to(eq("555-5555"))
    end
  end

  describe('#area_code') do
    it("return the area code") do
      test_phone = Phone.new({:number => "555-5555", :area_code => "503"})
      expect(test_phone.area_code()).to(eq("503"))
    end
  end
