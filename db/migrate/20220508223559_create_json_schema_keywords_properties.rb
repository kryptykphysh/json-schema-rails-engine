class CreateJsonSchemaKeywordsProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_keywords_properties do |t|
      t.string :name,
        null: false
      t.references :json_schema_primitives_object,
        null: false,
        foreign_key: {name: "fk_object_propeties"},
        index: {name: "index_object_properties"}
      t.references :typeable,
        polymorphic: true,
        null: false,
        index: {name: "index_properties_type"}
      t.boolean :required, null: false, default: false

      t.timestamps
    end

    add_index :json_schema_keywords_properties,
      [:json_schema_primitives_object_id, :name],
      name: "index_property_name_for_object_unique",
      unique: true
  end
end
