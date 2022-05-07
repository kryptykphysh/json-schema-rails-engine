class CreateJsonSchemaKeywordsGenerics < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_keywords_generics do |t|
      t.references :generalisable,
        polymorphic: true,
        null: false,
        index: {
          name: "idx_json_schema_keywords_generics_type_id_unique",
          unique: true
        }
      t.string :title, null: true
      t.text :description, null: true
      t.string :default, null: true
      t.string :examples, null: true, array: true, deault: []
      t.boolean :read_only, null: false, default: false
      t.boolean :write_only, null: false, default: false
      t.boolean :deprecated, null: false, default: false
      t.string :comment, null: true

      t.timestamps
    end
  end
end
