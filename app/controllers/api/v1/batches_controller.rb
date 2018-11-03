module Api
  module V1
    class BatchesController < ApplicationController
      def index
        batches = Batch.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded orders', data:batches},status: :ok
      end 

      def create
        batch = Batch.new(batch_params)

        orders = Order.where(purchase_channel: params[:purchase_channel])

          orders.each do |o|
            batch.orders << o 
          end  

        if batch.save
          render json: {status: 'SUCCESS', message:'Saved Batch', data:batch},status: :ok
        else
          render json: {status: 'ERROR', message:'Batch not saved', data:batch.errors},status: :unprocessable_entity
        end
      end

      private

        def batch_params

          y = Date.today.year
          m = Date.today.month
          idl = Batch.last
          id = (idl == nil ? 1 : idl.id+1)
          
          ref = "#{y}#{m}-#{id}"
          {
            :reference => ref, 
            :purchase_channel => params[:purchase_channel], 
            
          }
              
        end

    end
  end
end