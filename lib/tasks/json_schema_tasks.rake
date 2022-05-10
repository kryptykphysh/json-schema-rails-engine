# desc "Explaining what the task does"
# task :json_schema do
#   # Task goes here
# end
task :tailwind_engine_watch do
  require "tailwindcss-rails"
  # NOTE: tailwindcss-rails is an engine
  system "#{Tailwindcss::Engine.root.join("exe/tailwindcss")} \
         -i #{JsonSchema::Engine.root.join("app/assets/stylesheets/application.tailwind.css")} \
         -o #{JsonSchema::Engine.root.join("app/assets/builds/json_schema/json_schema_stylesheet.css")} \
         -c #{JsonSchema::Engine.root.join("config/tailwind.config.js")} \
         --minify -w"
end
