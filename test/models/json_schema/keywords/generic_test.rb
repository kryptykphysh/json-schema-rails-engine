# == Schema Information
#
# Table name: json_schema_keywords_generics
#
#  id                 :bigint           not null, primary key
#  comment            :string
#  default            :string
#  deprecated         :boolean          default(FALSE), not null
#  description        :text
#  examples           :string           is an Array
#  generalisable_type :string           not null
#  read_only          :boolean          default(FALSE), not null
#  title              :string
#  write_only         :boolean          default(FALSE), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  generalisable_id   :bigint           not null
#
# Indexes
#
#  idx_json_schema_keywords_generics_type_id_unique  (generalisable_type,generalisable_id) UNIQUE
#
require "test_helper"

module JsonSchema
  class Keywords::GenericTest < ActiveSupport::TestCase
  end
end
