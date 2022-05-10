class CreateJsonSchemaSchemas < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_schemas do |t|
      t.references :type, polymorphic: true, null: false
      t.citext :title, index: {unique: true}

      t.timestamps
    end
  end
end
