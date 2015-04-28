require('rspec')
require('tamagotchi')

describe(Tama) do
  describe('#initialize') do
    it("Creates a new pet with user given name") do
      my_pet = Tama.new("sebastian", 10)
      expect(my_pet.name()).to(eq("sebastian"))
      expect(my_pet.tequila_level()).to(eq(10))
    end
  end

end
