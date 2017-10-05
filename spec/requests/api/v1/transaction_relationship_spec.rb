require 'rails_helper'

RSpec.describe "Transaction Relationships API" do
  context "GET /transactions/:id/invoice" do
    it "sends the associated invoice" do
      invoice = create(:invoice)
      transaction = create(:transaction, invoice_id: invoice.id)

      get "/api/v1/transactions/#{transaction.id}/invoice"

      json = JSON.parse(response.body)

      expect(response).to be_success
    end
  end
end
