require 'rails_helper'

RSpec.describe Batch, type: :model do
  context 'validates test' do
		it 'checks reference presence' do
				batch = Batch.new(  purchase_channel: 'SiteBR').save
				expect(batch).to eq(false)
	 	end
	end
end
