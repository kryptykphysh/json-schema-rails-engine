# == Schema Information
#
# Table name: json_schema_primitives_enums
#
#  id         :bigint           not null, primary key
#  values     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

module JsonSchema
  class Primitives::EnumTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
