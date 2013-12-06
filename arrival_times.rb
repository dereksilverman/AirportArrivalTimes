require 'time'

class Airport
	attr_accessor :times

	def initialize(times)
		@times = times
	end

	def average_time_of_day
		total = 0.00
		times.each do |time|
			new_time = (Time.parse(time).hour * 3600 + Time.parse(time).min * 60)
			total += new_time
			end
			total / times.length
	end

	def sec_to_time
		average_time_of_day / 3600
		hour = average_time_of_day / 3600
		min = hour % 1 * 60
		puts "#{hour.to_i}:#{min.to_i}"
	end

end

flight_times = ["11:39", "12:32", "12:34", "13:01", "02:00", "04:00"]
andy = Airport.new(flight_times)
andy.average_time_of_day
andy.sec_to_time