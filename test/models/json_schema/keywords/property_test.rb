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
require "test_helper"

module JsonSchema
  module Keywords
    class UnsavedProperty < ActiveSupport::TestCase
      def setup
        @subject = Property.new object: Primitives::Object.new, typeable: Primitives::Object.new
      end
    end

    class UnsavedPropertyTest < UnsavedProperty
      include GenericFieldsBehaviour

      it "is valid" do
        assert @subject.valid?
      end
    end
  end
end
