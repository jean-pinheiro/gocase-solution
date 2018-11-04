class Batch < ApplicationRecord
	has_and_belongs_to_many :orders

	validates :referece, uniqueness: true, on: :create
	validates :purchase_channel, presence: true
end
