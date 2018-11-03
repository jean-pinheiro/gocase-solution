Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :orders
      get 'order_status/:reference', to: 'orders#show_status'
      resources :batches
    end
  end
end