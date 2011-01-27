require 'rubygems'
require 'bundler/setup'

require 'cramp'
require 'cramp/websocket'

Cramp::Websocket.backend = :thin

class EchoController < Cramp::Websocket
  on_data :echo_data

  def echo_data(data)
    puts "#{Time.now} - Client sent: #{data.inspect}"
    render data
  end
end

Rack::Handler::Thin.run EchoController, :Port => 3000