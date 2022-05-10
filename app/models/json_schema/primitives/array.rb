# == Schema Information
#
# Table name: json_schema_primitives_arrays
#
#  id                    :bigint           not null, primary key
#  containable_type      :string
#  itemable_type         :string
#  maximum_contain_count :integer
#  maximum_item_count    :integer
#  minimum_contain_count :integer
#  minimum_item_count    :integer
#  root                  :boolean          default(FALSE), not null
#  unique_items          :boolean          default(FALSE), not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  containable_id        :bigint
#  itemable_id           :bigint           not null
#
# Indexes
#
#  index_json_schema_primitives_arrays_on_containable  (containable_type,containable_id)
#  index_primitives_arrays_itemable                    (itemable_type,itemable_id)
#

module JsonSchema
  class Primitives::Array < ApplicationRecord
    include JsonSchema::Generalisable

    belongs_to :itemable, polymorphic: true
    belongs_to :containable, polymorphic: true, optional: true

    scope :current, -> { joins(:generic_fields).where(generic_fields: {deprecated: false}) }
    scope :root, -> { where(root: true) }
  end
end
