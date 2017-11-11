class VirtualmachinesController < ApplicationController
  def new
  end

  def show
	@uuid = params[:uuid]
  	@typename = params[:typename]
  	@cpu = params[:cpu]
  	@memory = params[:memory]
  	@publickey = params[:publickey]
  end
end
