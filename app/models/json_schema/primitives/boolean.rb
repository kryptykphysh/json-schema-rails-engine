# == Schema Information
#
# Table name: json_schema_primitives_booleans
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require_relative "../../concerns/generalisable"

module JsonSchema
  class Primitives::Boolean < ApplicationRecord
    include Generalisable
  end
end
