module JsonSchema
  class SchemasController < ApplicationController
    before_action :set_schema, only: %i[show edit update destroy]

    # GET /schemas
    def index
      @schema_count = Schema.count
      @pagy, @schemas = pagy(Schema.includes(:type).order(title: :asc).all, items: 10)
    end

    # GET /schemas/1
    def show
    end

    # GET /schemas/new
    def new
      @schema = Schema.new type: JsonSchema::Primitives::Object.new(root: true)
    end

    # GET /schemas/1/edit
    def edit
    end

    # POST /schemas
    def create
      @schema = Schema.new(schema_params)
      @schema.type = @schema.type_type.constantize.new root: true
      @schema.type.title = @schema.title
      @type = @schema.type

      if @schema.save
        flash.now[:notice] = "Schema successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /schemas/1
    def update
      if @schema.update(schema_params)
        redirect_to @schema, notice: "Schema was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /schemas/1
    def destroy
      @schema.destroy
      redirect_to schemas_url, notice: "Schema was successfully destroyed.", status: :see_other
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_schema
      @schema = Schema.includes(type: :generic_fields).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schema_params
      params.require(:schema).permit(:type_id, :type_type, :title)
    end
  end
end
