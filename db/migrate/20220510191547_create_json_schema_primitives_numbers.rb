class CreateJsonSchemaPrimitivesNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_primitives_numbers do |t|
      t.float :multiple_of, null: true
      t.float :maximum, null: true
      t.float :minimum, null: true
      t.float :exclusive_maximum, null: true
      t.float :exclusive_minimum, null: true

      t.timestamps
    end
  end
end
