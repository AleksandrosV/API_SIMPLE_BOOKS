# frozen_string_literal: true

require 'faker'
require 'spec_helper'
require_relative '../shared_context/api_spec_helper'

RSpec.describe 'Update an Order' do
  it 'Verifies that an order can be updated' do
    updated_customer_name = Faker::Name.name
    order_id_to_update = "cR62OQRg7_q3dwXwYt2Cm"

    request_body = {
      "customerName": updated_customer_name
    }
    @api.patch("orders/#{order_id_to_update}", request_body)
    expect(@api.status).to eq(ApiSpecHelper::NO_CONTENT_SUCCESS)
    expect(@api.code).to eq(ApiSpecHelper::NO_CONTENT_SUCCESS)
  end
end
