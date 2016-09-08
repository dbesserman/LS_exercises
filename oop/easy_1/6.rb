class Flight
  def initialize(flight_number)
    @database_handle = Database.init if Database
    @flight_number = flight_number
  end
end
