module JsonSchema
  class Keywords::GenericsController < ApplicationController
    before_action :set_generic, only: %i[show edit update]

    def edit
    end

    def show
    end

    def update
      if @generic.update(generic_params)
        redirect_to @generic, notice: "Generic was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    private

    def set_generic
      @generic = JsonSchema::Keywords::Generic.find(params[:id])
    end

    def generic_params
      params.require(:keywords_generic).permit(:title, :description, :comment, :default, :examples, :deprecated, :read_only, :write_only)
    end
  end
end
