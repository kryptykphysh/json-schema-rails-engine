# == Schema Information
#
# Table name: json_schema_schemas
#
#  id         :bigint           not null, primary key
#  title      :citext
#  type_type  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  type_id    :bigint           not null
#
# Indexes
#
#  index_json_schema_schemas_on_title  (title) UNIQUE
#  index_json_schema_schemas_on_type   (type_type,type_id)
#
require "test_helper"

module JsonSchema
  class SchemaTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
