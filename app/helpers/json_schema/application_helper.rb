module JsonSchema
  module ApplicationHelper
    include Pagy::Frontend

    def polymorphic_class_name(obj)
      obj.class.name.demodulize.underscore
    end

    def primitive_partial(schema)
      object_class = polymorphic_class_name(schema.type)
      base = "/json_schema/primitives/"
      base += object_class.pluralize
      base += "/" + object_class
      logger.debug "primitive_partial generated: #{base}"
      base
    end
  end
end
