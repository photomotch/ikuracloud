class MachinesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @machine = current_user.machines.build(machine_params)
    if @machine.save
      flash[:success] = "Machine created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def machine_params
      params.require(:machine).permit(:typename)
    end
end
