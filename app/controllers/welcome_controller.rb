class WelcomeController < ApplicationController
    
    def index
        x = DCMetro::Information.new
        @alerts = JSON.parse(x.alerts)
        puts @alerts
        @lines = JSON.parse(x.line)
        puts "==================== #{@lines['Lines']}"
        @stations = JSON.parse x.line "green"
        puts "==================== #{@stations['Stations']}"
        @college_park = JSON.parse x.station "college"
        puts "==================== #{@college_park}"
        @gallery_place = JSON.parse x.station "gallery"
        #
        # Not available in DCMetro 0.0.2
        # @fare_info = x.station "college", "gallery"
    end

end