class CreateJoinTableBatchOrder < ActiveRecord::Migration[5.0]
  def change
    create_join_table :batches, :orders do |t|
       t.index [:batch_id, :order_id]
       t.index [:order_id, :batch_id]
    end
  end
end
