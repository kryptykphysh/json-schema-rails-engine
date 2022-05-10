class CreateJsonSchemaPrimitivesObjects < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_primitives_objects do |t|
      t.timestamps
    end
  end
end
