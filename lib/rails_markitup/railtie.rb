require_relative 'view_helpers'

module RailsMarkitup
  class Railtie < Rails::Railtie
    initializer "rails_markitup.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
