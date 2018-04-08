module GraphqlPlayground
  module Rails
    class IdeController < ActionController::Base
      layout false

      helper_method :graphql_endpoint_path

      def show; end

      private

      def graphql_endpoint_path
        params[:graphql_path] || '/graphql'
      end
    end
  end
end
