class Tama
  define_method(:initialize) do |name, tequila_level|
    @name = name
    @tequila_level = tequila_level
  end

  define_method(:name) do
    @name
  end

  define_method(:tequila_level) do
    @tequila_level
  end
end
