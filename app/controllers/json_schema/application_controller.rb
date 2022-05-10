module JsonSchema
  class ApplicationController < ::ApplicationController
    layout "application"

    include Pagy::Backend
  end
end
