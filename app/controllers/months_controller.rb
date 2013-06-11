class MonthsController < ApplicationController
	def index
    @months = Month.all(:order => "id")
	end

	def show
    @month = Month.find(params[:id])
    @friends = Friend.by_month(@month)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @month }
    end
	end
end
