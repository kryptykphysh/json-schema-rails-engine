class CreateJsonSchemaPrimitivesStrings < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_primitives_strings do |t|
      t.integer :min_length, null: true
      t.integer :max_length, null: true
      t.string :pattern, null: true
      t.integer :format, null: true

      t.timestamps
    end
  end
end
