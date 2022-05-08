# == Schema Information
#
# Table name: json_schema_primitives_objects
#
#  id         :bigint           not null, primary key
#  root       :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

module JsonSchema
  class Primitives::NonRootObject < ActiveSupport::TestCase
    def setup
      @non_root = JsonSchema::Primitives::Object.new(root: false)
    end
  end

  class NonRootTest < Primitives::NonRootObject
    it_behaves_like_a_generic(@non_root)

    test "generic_fields should not be nil" do
      assert_not @non_root.generic_fields.nil?
    end
  end
end
