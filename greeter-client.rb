#!/usr/bin/env ruby

require 'grpc'
require 'helloworld_services'

def main
	stub = Helloworld::Greeter::Stub.new('localhost:50051', :this_channel_is_insecure)
	user = ARGV.size > 0 ?  ARGV[0] : 'world'
	message = stub.say_hello(Helloworld::HelloRequest.new(name: user)).message
	p "Greeting: #{message}"
end

main