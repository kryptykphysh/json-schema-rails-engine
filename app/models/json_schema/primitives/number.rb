# == Schema Information
#
# Table name: json_schema_primitives_numbers
#
#  id                :bigint           not null, primary key
#  exclusive_maximum :float
#  exclusive_minimum :float
#  maximum           :float
#  minimum           :float
#  multiple_of       :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

module JsonSchema
  class Primitives::Number < ApplicationRecord
    include JsonSchema::Generalisable
  end
end
