module Api
  module V1
    class OrdersController < ApplicationController
      def index
        orders = Order.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded orders', data:orders},status: :ok
      end 

      def create
        order = Order.new(order_params)

        if order.save
          render json: {status: 'SUCCESS', message:'Saved order', data:order},status: :ok
        else
          render json: {status: 'ERROR', message:'Order not saved', data:order.errors},status: :unprocessable_entity
        end
      end

      def show_status
        order = Order.where(reference: params[:reference]).first

        render json: {status: 'SUCCESS', message:'Status of Order', data:order.status},status: :ok
      end

      
      private

      def order_params
        params.permit(:reference, :purchase_channel, :client_name, :address, :delivery_service, :total_value, :line_items, :status)
      end
    end
  end
end