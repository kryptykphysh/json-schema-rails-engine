module JsonSchema
  class Primitives::ObjectsController < ApplicationController
    before_action :set_object, only: %i[show edit update destroy]

    def index
    end

    def show
    end

    def new
      @object = JsonSchema::Primitives::Object.new root: true
    end

    def create
    end

    def edit
    end

    def update
      if @object.update(object_params)
        redirect_to @object, notice: "Object was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
    end

    private

    def object_params
      params.require(:primitives_object).permit(:root, :title)
    end

    def set_object
      @object = JsonSchema::Primitives::Object.includes(:generic_fields)
        .find(params[:id])
    end
  end
end
