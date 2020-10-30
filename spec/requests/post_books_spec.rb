require 'rails_helper'

describe "add a book through post to /books route", :type => :request do

  before do
    post '/books', params: { :title => 'The Seas', :author => 'Sam Hunt', :price =>6 }
  end

  it 'returns the title of the book' do
    expect(JSON.parse(response.body)['title']).to eq('The Seas')
  end

  it 'returns author of the book' do
    expect(JSON.parse(response.body)['author']).to eq('Sam Hunt')
  end

  it 'returns created status' do
    expect(response).to have_http_status(:created)
  end
end