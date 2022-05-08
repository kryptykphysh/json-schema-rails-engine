module JsonSchema
  module Primitives
    def self.table_name_prefix
      "json_schema_primitives_"
    end

    def self.root_schemas
      objects = Object.current.root
      arrays = Array.current.root

      objects + arrays
    end

    def self.root_titles
      objects = Object.current.root.pluck(:title)
      arrays = Array.current.root.pluck(:title)

      (objects + arrays).uniq
    end
  end
end
