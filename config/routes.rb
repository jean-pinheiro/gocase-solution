Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :orders
      get 'order_status/:reference', to: 'orders#show_status'
      get 'financial_report/', to: 'orders#financial_report'
      get 'list_per_channel/:purchase_channel', to: 'orders#list_per_channel'
      resources :batches
      get 'create_batch/:purchase_channel', to: 'batches#create'
    end
  end
end