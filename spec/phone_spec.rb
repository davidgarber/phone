require('rspec')
require('phone')

  describe(Phone) do
    before() do
      Phone.clear()
    end


  describe("#number") do
    it("returns phone number") do
    test_phone = Phone.new({:number => "555-5555", :area_code => "503", :label => "mobile"})
    expect(test_phone.number()).to(eq("555-5555"))
    end
  end

  describe('#area_code') do
    it("return the area code") do
      test_phone = Phone.new({:number => "555-5555", :area_code => "503", :label => "mobile"})
      expect(test_phone.area_code()).to(eq("503"))
    end
  end

  describe("#label") do
    it("returns the label for the number") do
      test_phone = Phone.new({:number => "555-5555", :area_code => "503", :label => "mobile"})
      expect(test_phone.label()).to(eq("mobile"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the entry") do
      test_phone = Phone.new({:number => "555-5555", :area_code => "503", :label => "mobile"})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved phones") do
      Phone.new({:number => "555-5555", :area_code => "503", :label => "mobile"})
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("id") do
    it("returns the id of the phone number") do
      test_phone = Phone.new({:number => "555-5555", :area_code => "503", :label => "mobile"})
      test_phone.save()
      expect(test_phone.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a phone number+area+label") do
      test_phone = Phone.new({:number => "555-5555", :area_code => "503", :label => "mobile"})
      test_phone.save()
      test_phone2 = Phone.new({:number => "444-4444", :area_code => "206", :label => "home"})
      test_phone2.save()
      expect(Phone.find(test_phone.id())).to(eq(test_phone))
    end
  end

end
