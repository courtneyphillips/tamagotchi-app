require('rspec')
require('tamagotchi')
require('pry')

describe(Tama) do
   before() do
     Tama.clear()
   end

  describe('#initialize') do
    it("Creates a new pet with user given name") do
      my_pet = Tama.new("sebastian", 10, 10, 10, 10)
      expect(my_pet.name()).to(eq("sebastian"))
      expect(my_pet.tequila_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.burrito_level()).to(eq(10))
      expect(my_pet.bike_level()).to(eq(10))
    end
  end

  describe('.status_report') do
    it("is full of tens") do
      expect(Tama.status_report()).to(eq([10,10,10,10]))
    end
  end

  describe('#time_passes') do
    it("decreases the amount of tequila that Tama has left by 1 each second") do
      my_pet = Tama.new("Crazy Pete", 10, 10, 10, 10)
      my_pet.time_passes()
      expect(my_pet.tequila_level()).to(eq(0))
    end
  end

  describe('.save_status') do
    it('saves current status of all necessary life levels') do
    my_pet = Tama.new("Crazy Pete", 10, 10, 10, 10)
    my_pet.save_status()
    expect(my_pet.status()).to(eq([10, 10, 10, 10]))
  end
end
end
