module Api
  module V1
    class BatchesController < ApplicationController
      def index
        batches = Batch.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded orders', data:batches},status: :ok
      end 

    end
  end
end