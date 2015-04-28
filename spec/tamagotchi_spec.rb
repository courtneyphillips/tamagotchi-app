require('rspec')
require('tamagotchi')
require('pry')

describe(Tama) do
   before() do
     Tama.reset()
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
      expect(Tama.status_report()).to(eq([10, 10, 10, 10]))
    end
  end

  describe('#time_passes') do
    it("decreases the amount of tequila that Tama has left by 1 each second") do
      my_pet = Tama.new("Crazy Pete", 1, 1, 1, 1)
      my_pet.time_passes()
      expect(my_pet.tequila_level()).to(eq(0))
    end
  end

  describe('#save_status') do
    it('saves current status of all necessary life levels') do
    my_pet = Tama.new("Crazy Pete", 8, 1, 7, 1)
    expect(my_pet.save_status()).to(eq([my_pet.tequila_level, my_pet.sleep_level, my_pet.burrito_level, my_pet.bike_level]))
  end
end

  describe('#feed') do
    it('resets only the burrito_level to 10') do
      my_pet = Tama.new("Pancake", 10, 10, 10, 10)
      my_pet.feed()
      expect(my_pet.burrito_level()).to(eq(10))
    end
  end

  describe('#bike_ride') do
    it('resets only the bike_leve to 10') do
      my_pet = Tama.new("That guy", 1, 8, 7, 2)
      my_pet.bike_ride()
      expect(my_pet.bike_level()).to(eq(10))
    end
  end

  describe('#margarita') do
    it('resets only the tequila_leve to 10') do
      my_pet = Tama.new("That guy", 1, 8, 7, 2)
      my_pet.margarita()
      expect(my_pet.tequila_level()).to(eq(10))
    end
  end

  describe('#nap') do
    it('resets only the sleep_leve to 10') do
      my_pet = Tama.new("That guy", 1, 8, 7, 2)
      my_pet.nap()
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end

  describe('#is_alive') do
    it("is alive if all life levels are not zero") do
      my_pet = Tama.new("That guy", 0, 8, 7, 2)
      expect(my_pet.is_alive()).to(eq(false))
    end
  end


end
