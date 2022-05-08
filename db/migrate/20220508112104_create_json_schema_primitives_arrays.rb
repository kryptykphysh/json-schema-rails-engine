class CreateJsonSchemaPrimitivesArrays < ActiveRecord::Migration[7.0]
  def change
    create_table :json_schema_primitives_arrays do |t|
      t.references :itemable, polymorpic: true, null: false
      t.references :containable, polymorphic: true, null: true
      t.integer :minimum_contain_count, null: true
      t.integer :maximum_contain_count, null: true
      t.integer :minimum_item_count, null: true
      t.integer :maximum_item_count, null: true
      t.boolean :unique_items, null: false, default: false

      t.timestamps
    end
  end
end
