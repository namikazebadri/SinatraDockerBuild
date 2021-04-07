# frozen_string_literal: true

require 'sinatra'

class App < Sinatra::Base
  get '/' do
    'Hello Sinatra Docker build!'
  end
end
