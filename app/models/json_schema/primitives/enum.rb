# == Schema Information
#
# Table name: json_schema_primitives_enums
#
#  id         :bigint           not null, primary key
#  values     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module JsonSchema
  class Primitives::Enum < ApplicationRecord
    serialize :values, Array
  end
end
