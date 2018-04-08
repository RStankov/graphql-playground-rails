# frozen_string_literal: true

require 'rails'

require_relative 'rails/version'

module GraphqlPlayground
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace GraphqlPlayground::Rails
    end
  end
end
