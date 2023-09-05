class AssemblyLine

  CARS_PRODUCED_PER_HOUR = 221.0
  SUCCESS_RATE_AT_SPEEDS_FIVE_TO_EIGHT = 0.9
  SUCCESS_RATE_AT_SPEEDS_NINE = 0.8
  SUCCESS_RATE_AT_SPEEDS_TEN = 0.77

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 1..4
      (@speed * CARS_PRODUCED_PER_HOUR)
    when 5..8
      (@speed * CARS_PRODUCED_PER_HOUR) * SUCCESS_RATE_AT_SPEEDS_FIVE_TO_EIGHT
    when 9
      (@speed * CARS_PRODUCED_PER_HOUR) * SUCCESS_RATE_AT_SPEEDS_NINE
    when 10
      (@speed * CARS_PRODUCED_PER_HOUR) * SUCCESS_RATE_AT_SPEEDS_TEN
    end
  end

  def working_items_per_minute
    production_rate_per_hour().to_i / 60
  end
end
