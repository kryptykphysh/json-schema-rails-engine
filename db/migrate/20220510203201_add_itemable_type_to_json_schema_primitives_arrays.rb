class AddItemableTypeToJsonSchemaPrimitivesArrays < ActiveRecord::Migration[7.0]
  def change
    add_column :json_schema_primitives_arrays, :itemable_type, :string
    add_index :json_schema_primitives_arrays,
      [:itemable_type, :itemable_id],
      name: "index_primitives_arrays_itemable"
    remove_index :json_schema_primitives_arrays, :itemable_id
  end
end
