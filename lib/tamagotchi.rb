class Tama
attr_reader(:tequila_level, :sleep_level, :burrito_level, :bike_level, :name)

@@status = []

  define_method(:initialize) do |attributes|
    @name = name
    @tequila_level = tequila_level
    @sleep_level = sleep_level
    @burrito_level = burrito_level
    @bike_level = bike_level
  end

  define_method(:time_passes) do
    until (@tequila_level == 0 || @burrito_level == 0 || @bike_level == 0 || @sleep_level == 0) do
      @tequila_level = @tequila_level.-1
      @burrito_level = @burrito_level.-1
      @bike_level = @bike_level.-1
      @sleep_level = @sleep_level.-1
      sleep(10)
    end
  end

  define_singleton_method(:reset) do
    @@status = [10, 10, 10, 10]
  end

  define_singleton_method(:status_report) do
    @@status
  end

  define_method(:save_status) do
    @@status.push(@tequila_level)
    @@status.push(@sleep_level)
    @@status.push(@burrito_level)
    @@status.push(@bike_level)
  end

  define_method(:feed) do
    @burrito_level = 10
  end

  define_method(:bike_ride) do
    @bike_level = 10
  end

  define_method(:nap) do
    @sleep_level = 10
  end

  define_method(:margarita) do
    @tequila_level = 10
  end

  define_method(:is_alive) do
    @tequila_level != 0 && @burrito_level != 0 && @bike_level != 0 && @sleep_level != 0
  end


end
