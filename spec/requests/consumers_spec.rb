require 'rails_helper'

RSpec.describe "Consumers", type: :request do
  describe API::V1::Consumers do    
    context 'GET /api/consumers/:id/transactions' do
      let(:consumer) { create :consumer }
      let(:merchant) { create :merchant }
      let(:transaction) { create :transaction, merchant_id: merchant.id, consumer_id: consumer.id, transaction_date: Time.now.in_time_zone.strftime('%Y-%m-%d') }
      it 'returns all transactions of a consumer' do
        transaction.reload        
        get "/api/consumers/#{consumer.id}/transactions"        
        expect(response.body).to eq [transaction].to_s
      end
    end
  end
end


