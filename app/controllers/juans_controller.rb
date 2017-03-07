class JuansController < ApplicationController
	def show
    @juan = Juan.find(params[:id])
	end

	def delete
    @favour = Favour.find(params[:id])
    @favour.destroy()

    redirect_to "/../../"
    end

end
 