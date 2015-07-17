class WelcomeController < ApplicationController
    
    def index
        x = DCMetro::Information.new
        @alerts = x.alerts['Incidents']
        @lines = x.line
        @stations = x.line "green"
        @college_park = x.station "college"
        @gallery_place = x.station "gallery"
        #
        # Not available in DCMetro 0.0.2
        # @fare_info = x.station "college", "gallery"
    end

end