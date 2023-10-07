# frozen_string_literal: true

require 'spec_helper'
require_relative '../shared_context/api_spec_helper'

RSpec.describe 'Delete an Order' do
  it 'Verifies that an order can be deleted' do
    order_id_to_delete = "MIt4lCC9XQUr9s5AK7ofZ"
    @api.delete("orders/#{order_id_to_delete}")
    expect(@api.status).to eq(ApiSpecHelper::NO_CONTENT_SUCCESS)
    expect(@api.code).to eq(ApiSpecHelper::NO_CONTENT_SUCCESS)
  end
end
