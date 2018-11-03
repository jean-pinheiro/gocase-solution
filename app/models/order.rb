class Order < ApplicationRecord
	has_and_belongs_to_many :batches
end
