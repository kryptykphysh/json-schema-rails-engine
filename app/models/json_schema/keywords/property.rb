# == Schema Information
#
# Table name: json_schema_keywords_properties
#
#  id                               :bigint           not null, primary key
#  name                             :string           not null
#  required                         :boolean          default(FALSE), not null
#  typeable_type                    :string           not null
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#  json_schema_primitives_object_id :bigint           not null
#  typeable_id                      :bigint           not null
#
# Indexes
#
#  index_object_properties                (json_schema_primitives_object_id)
#  index_properties_type                  (typeable_type,typeable_id)
#  index_property_name_for_object_unique  (json_schema_primitives_object_id,name) UNIQUE
#
# Foreign Keys
#
#  fk_object_propeties  (json_schema_primitives_object_id => json_schema_primitives_objects.id)
#

module JsonSchema
  module Keywords
    class Property < ApplicationRecord
      include JsonSchema::Generalisable

      belongs_to :object,
        class_name: "JsonSchema::Primitives::Object",
        foreign_key: :json_schema_primitives_object_id
      belongs_to :typeable, polymorphic: true
    end
  end
end
