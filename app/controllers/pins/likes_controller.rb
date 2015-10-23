class Pins::LikesController < ApplicationController

	before_action :authenticate_user!
	before_action :set_pin

	def create
		@pin.likes.where(user_id: current_user.id).first_or_create

		respond_to do |format|
			format.html {redirect_to @pin}
			format.js
		end
	end

	def destroy
		@pin.likes.where(user_id: current_user.id).destroy_all

		respond_to do |format|
			format.html {redirect_to @pin}
			format.js
		end
	end


	private

	def set_pin
		@pin = Pin.find(params[:pin_id])
	end

end