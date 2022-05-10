# == Schema Information
#
# Table name: json_schema_primitives_nulls
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

module JsonSchema
  class Primitives::Null < ApplicationRecord
    include JsonSchema::Generalisable
  end
end
