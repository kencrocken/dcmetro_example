class WelcomeController < ApplicationController
    
    def index
        x = DCMetro::Information.new
        @alerts = JSON.parse(x.alerts)
        puts @alerts
        @lines = JSON.parse(x.line)
        # puts "==================== #{@lines['Lines']}"
        @stations = JSON.parse x.line "green"
        # puts "==================== #{@stations['Stations']}"
        @college_park = JSON.parse x.station "college"
        # puts "==================== #{@college_park}"
        @gallery_place = JSON.parse x.station "gallery"
        @fare_info = JSON.parse x.station "college", "gallery"
        puts "===================== #{@fare_info}"
    end

end