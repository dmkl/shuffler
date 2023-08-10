#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'httparty'

get '/' do
  "👋"
end

post '/shuffle' do
  return "🤪" if ENV['TOKEN'] != params[:token]

  content_type :json
  names = params[:text].split(' ').shuffle.join(' ')

  {
    response_type: :in_channel,
    text: names
  }.to_json
end
