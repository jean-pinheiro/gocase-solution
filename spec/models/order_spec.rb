require 'rails_helper'

RSpec.describe Order, type: :model do
	 context 'validates test' do
		it 'checks reference presence' do
				order = Order.new(  purchase_channel: 'SiteBR', client_name: 'Rogerio Lima',
		address: 'Rua Padre Valdevino, 2475 - Aldeota, Fortaleza - CE, 60135-041',
		delivery_service:'SEDEX', total_value: '123.30',
		line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: powebank-sunshine, capacity: 10000mah}]',
		status: 'ready' ).save
				expect(order).to eq(false)
	 	end

		it 'checks purchase_channel presence' do
				order = Order.new( reference: 'BR102030',  client_name: 'Rogerio Lima',
		address: 'Rua Padre Valdevino, 2475 - Aldeota, Fortaleza - CE, 60135-041',
		delivery_service:'SEDEX', total_value: '123.30',
		line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: powebank-sunshine, capacity: 10000mah}]',
		status: 'ready' ).save
				expect(order).to eq(false)
	 	end

	 	it 'checks client_name presence' do
				order = Order.new( reference: 'BR102030', purchase_channel: 'SiteBR', 
		address: 'Rua Padre Valdevino, 2475 - Aldeota, Fortaleza - CE, 60135-041',
		delivery_service:'SEDEX', total_value: '123.30',
		line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: powebank-sunshine, capacity: 10000mah}]',
		status: 'ready' ).save
				expect(order).to eq(false)
	 	end

	 	it 'checks address presence' do
				order = Order.new( reference: 'BR102030', purchase_channel: 'SiteBR', client_name: 'Rogerio Lima',
		delivery_service:'SEDEX', total_value: '123.30',
		line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: powebank-sunshine, capacity: 10000mah}]',
		status: 'ready' ).save
				expect(order).to eq(false)
	 	end
	 	it 'checks delivery_service presence' do
				order = Order.new( reference: 'BR102030',   purchase_channel: 'SiteBR', client_name: 'Rogerio Lima',
		address: 'Rua Padre Valdevino, 2475 - Aldeota, Fortaleza - CE, 60135-041',
		total_value: '123.30',
		line_items:'[{sku: case-my-best-friend, model: iPhone X, case type: Rose Leather}, {sku: powebank-sunshine, capacity: 10000mah}]',
		status: 'ready' ).save
				expect(order).to eq(false)
	 	end
	 	
	 end
	end
