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
module JsonSchema
  class Schema < ApplicationRecord
    belongs_to :type, polymorphic: true, dependent: :destroy, autosave: true

    before_validation :format_title

    validates :title, presence: true,
      uniqueness: {case_insensitive: true}

    private

    def format_title
      self.title = title.strip.underscore
      type.title = title unless type.title = title
    end
  end
end
