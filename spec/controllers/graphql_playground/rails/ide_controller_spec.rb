require 'spec_helper'

Rails.application.routes.draw do
  get 'ide' => 'graphql_playground/rails/ide#show'
end

RSpec.describe GraphqlPlayground::Rails::IdeController, type: :controller do
  describe 'show' do
    it 'renders' do
      get :show
    end
  end
end
