require 'rails_helper'

describe "add a book through post to /books route", :type => :request do

  before do
    post '/books', params: { :title => 'The Seas', :price =>6 }
  end

  it 'returns an error about missing author param' do
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Author can't be blank")
  end

  it 'returns created status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end