require('rspec')
require('phone')

  describe("#number") do
    it("returns phone number") do
    test_phone = Phone.new({:number => "555-5555"})
    expect(test_phone.number()).to(eq("555-5555"))
    end
  end
