require_relative "../../concerns/generalisable"

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
module JsonSchema
  class Primitives::String < ApplicationRecord
    include JsonSchema::Generalisable
  end
end
