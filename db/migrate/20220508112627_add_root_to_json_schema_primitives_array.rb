class AddRootToJsonSchemaPrimitivesArray < ActiveRecord::Migration[7.0]
  def change
    add_column :json_schema_primitives_arrays,
      :root,
      :boolean,
      null: false,
      default: false,
      index: true
  end
end
