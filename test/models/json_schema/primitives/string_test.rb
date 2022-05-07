# == Schema Information
#
# Table name: json_schema_primitives_strings
#
#  id         :bigint           not null, primary key
#  format     :integer
#  max_length :integer
#  min_length :integer
#  pattern    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

module JsonSchema
  class Primitives::StringTest < ActiveSupport::TestCase
    set_fixture_class "json_schema/primitives/string" => JsonSchema::Primitives::String
    def setup
      @string = json_schema_primitives_strings(:no_specs)
    end

    test "is valid with all attributes set to nil" do
      @string.min_length = nil
      assert @string.valid?
    end

    test "has a :generic_fields association" do
      assert_respond_to @string, :generic_fields
    end

    it_behaves_like_a_generic
  end
end
