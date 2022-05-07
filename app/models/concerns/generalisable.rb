require_relative "../json_schema/keywords/generic"

module JsonSchema
  module Generalisable
    extend ActiveSupport::Concern

    included do
      has_one :generic_fields,
        class_name: "JsonSchema::Keywords::Generic",
        autosave: true,
        dependent: :destroy,
        as: :generalisable

      JsonSchema::Keywords::Generic.attribute_names
        .reject { |name| %w[id created_at updated_at].include?(name) }
        .each do |name|
          delegate name.to_sym, to: :generic_fields
          delegate (name + "=").to_sym, to: :generic_fields
          delegate (name + "?").to_sym, to: :generic_fields if %w[deprecated read_only write_only].include?(name)
        end

      after_initialize { build_generic_fields }

      after_save { generic_fields.save if generic_fields.changed? }
    end
  end
end
