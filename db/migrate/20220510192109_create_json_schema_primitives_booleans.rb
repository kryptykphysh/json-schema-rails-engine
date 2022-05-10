class CreateJsonSchemaPrimitivesBooleans < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_primitives_booleans do |t|
      t.timestamps
    end
  end
end
