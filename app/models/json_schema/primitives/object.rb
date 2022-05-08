require_relative "../../concerns/generalisable"

# == Schema Information
#
# Table name: json_schema_primitives_objects
#
#  id         :bigint           not null, primary key
#  root       :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module JsonSchema
  class Primitives::Object < ApplicationRecord
    include Generalisable
  end
end
