class DaystorememberController < ApplicationController
	def index
		@months = Month.all(:order => "id")
	end
end
