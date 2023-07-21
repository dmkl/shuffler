#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'httparty'

get '/' do
  "👋"
end

post '/shuffle' do
  if ENV['TOKEN'] == params[:token]
    names = params[:text].split(' ').shuffle.join(' ')
    HTTParty.post params[:response_url],
                  body: {
                    text: names,
                    channel: params[:channel_id],
                    icon_emoji: ':ghost:',
                    username: params[:user_name],
                    response_type: :in_channel
                  }.to_json
  else
    "🤪"
  end
end
