Rails.application.routes.draw do
  mount JsonSchema::Engine => "/json_schema"
end
