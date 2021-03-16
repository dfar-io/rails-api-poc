class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token 
  skip_before_action :authorize_request, only: :index

  # GET /teacher
  def index
    teacher = Teacher.all.sample

    object = OpenStruct.new
    object.id = teacher.id
    object.name = teacher.name
    object.shortName = teacher.shortName
    object.classes = (object.id+200..object.id+205).to_a

    render json: {
      id: object.id,
      name: object.name,
      shortName: object.shortName,
      classes: object.classes
    }
  end

  private
    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:name)
    end
end
