class ApplicationController < ActionController::API
  include Response

  # there's a bug for 'rescue_from ActionDispatch::Http::Parameters::ParseError'. Do this instead:
  def process_action(*args)
    super
  rescue ActionDispatch::Http::Parameters::ParseError => exception
    render status: 400, json: { errors: [ exception.message ] }
  end

  # exception for searching by an ID that doesn't exist
  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  # exception for a required field left blank
  rescue_from ActiveRecord::RecordInvalid do |exception|
    json_response({ message: exception.message }, :unprocessable_entity)
  end
end