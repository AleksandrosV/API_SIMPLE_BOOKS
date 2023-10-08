# frozen_string_literal: true

require 'faker'
require 'spec_helper'
require_relative '../shared_context/api_spec_helper'

RSpec.describe 'Submit an Order' do
  it 'Verifies that an order can be submitted' do
    random_book_id = rand(1..6)
    random_customer_name = Faker::Name.name

    request_body = {
      "bookId": random_book_id,
      "customerName": random_customer_name
    }
    @api.post('orders', request_body)
    expect(@api.status).to eq(ApiSpecHelper::VALID_CREATED_CODE)
    expect(@api.code).to eq(ApiSpecHelper::VALID_CREATED_CODE)
    expect(@api.message).to eq(ApiSpecHelper::CREATED)
  end
end
