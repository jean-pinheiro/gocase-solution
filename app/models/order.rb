class Order < ApplicationRecord
	has_and_belongs_to_many :batches

	  validates :referece, uniqueness: true, on: :create
      validates :purchase_channel, presence: true, on: :create
      validates :client_name, presence: true
      validates :address, presence: true
      validates :delivery_service, allow_blank: true
      validates :status, inclusion: { in: %w(ready production sent) }
end
