require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')

get('/') do
  erb(:index)
end


post('/adopt') do
  pet_name = params.fetch('name')
  my_pet = Tama.new(pet_name, 10, 10, 10, 10)
  @final_status = my_pet.save_status()

   erb(:pet)
end

# get ('/pet') do
#   @final_status = Tama.status_report()
#   erb(:pet)
# end

  # get('/pet') do
  # @brand_new_pet = Tama.new(name, 10, 10, 10, 10)
  # erb(:pet)
