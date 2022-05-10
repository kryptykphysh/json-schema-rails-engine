class CreateJsonSchemaPrimitivesEnums < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_primitives_enums do |t|
      t.string :values

      t.timestamps
    end
  end
end
