module JsonSchema
  class Engine < ::Rails::Engine
    isolate_namespace JsonSchema

    # add engine manifest to precompile assets in production
    initializer "json_schema.assets" do |app|
      app.config.assets.precompile += %w[json_schema_manifest]
    end
  end
end
