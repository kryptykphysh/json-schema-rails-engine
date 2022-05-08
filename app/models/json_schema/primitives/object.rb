# == Schema Information
#
# Table name: json_schema_primitives_objects
#
#  id         :bigint           not null, primary key
#  root       :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require_relative '../../concerns/generalisable'

module JsonSchema
  module Primitives
    class Object < ApplicationRecord
      include Generalisable

      has_many :properties,
               class_name: 'JsonSchema::Keywords::Property',
               foreign_key: 'json_schema_primitives_object_id'

      validate :unique_root_title

      scope :current, -> { joins(:generic_fields).where(generic_fields: { deprecated: false }) }
      scope :root, -> { where(root: true) }

      private

      def unique_root_title
        return true unless root? && !title.blank?

        if JsonSchema::Primitives.root_titles.include?(title)
          errors.add(:title, 'already exists as a root schema title')
        end
      end
    end
  end
end
