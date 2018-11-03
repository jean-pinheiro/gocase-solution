Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :orders
      get 'order_status/:reference', to: 'orders#show_status'
      get 'financial_report/', to: 'orders#financial_report'
      resources :batches
    end
  end
end