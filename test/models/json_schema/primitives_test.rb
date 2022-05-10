require "test_helper"

module JsonSchema
  module Primitives
    class ClassMethods < ActiveSupport::TestCase
      def setup
        @schemas = JsonSchema::Primitives.root_schemas
        @titles = JsonSchema::Primitives.root_titles
      end
    end

    class RootSchemasTest < ClassMethods
      it "returns only Objects and Arrays" do
        permitted_classes = %w[JsonSchema::Primitives::Object JsonSchema::Primitives::Array]
        actual = @schemas.all? do |schema|
          permitted_classes.include? schema.class.name
        end
        assert actual
      end

      it "returns only instances with root? == true" do
        assert @schemas.all?(&:root?)
      end

      it "returns only instances with deprecated? == false" do
        assert @schemas.all? { |schema| schema.deprecated? == false }
      end
    end

    class RootTitlesTest < ClassMethods
    end
  end
end
