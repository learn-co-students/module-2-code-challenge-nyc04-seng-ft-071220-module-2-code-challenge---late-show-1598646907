class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
    end 

      def new 
        @appearances = Appearance.new
      end 
    end 
      

