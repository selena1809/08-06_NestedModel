class MachinesController < ApplicationController
  @@count = 1
  def new
    @machine = Machine.new
    @@count.times{@machine.parts.build}

  end

  def machine_params
  params.require(:machine).permit(parts_attributes: [:id, :name])
end
def create_new_part
      @@count = @@count + 1
       @machine
      # redirect_to new_machine_path
      redirect_to edit_machine_path
end
# def setup(machine)
#   machine.part ||= Part.new
#   machine
# end
end
