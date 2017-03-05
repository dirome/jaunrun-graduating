class JuansController < ApplicationController
	def show
    @juan = Juan.find(params[:id])
	end
end
