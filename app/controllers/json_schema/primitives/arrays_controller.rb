module JsonSchema
  class Primitives::ArraysController < ApplicationController
    before_action :set_array, only: %i[show edit update destroy]

    def index
    end

    def show
    end

    def new
      @array = JsonSchema::Primitives::Array.new root: true
    end

    def create
    end

    def edit
    end

    def update
      if @array.update(array_params)
        redirect_to @array, notice: "Array was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
    end

    private

    def set_array
      @array = JsonSchema::Primitives::Array.includes(:generic_fields).find(params[:id])
    end
  end
end
