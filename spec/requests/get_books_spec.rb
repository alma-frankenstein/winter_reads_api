require 'rails_helper'

describe "get all books route", :type => :request do
  let!(:books) {FactoryBot.create_list(:book, 10)}

  before { get '/books' }

  it 'returns all books' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end