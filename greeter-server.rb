#!/usr/bin/env ruby
require 'grpc'
require 'helloworld_services'
class GreeterServer < Helloworld::Greeter::Service
  # say_hello implements the SayHello rpc method.
  def say_hello(hello_req, _unused_call)
    Helloworld::HelloReply.new(message: "Hello #{hello_req.name}")
  end
end

def main
  s = GRPC::RpcServer.new
  s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  s.handle(GreeterServer)
  s.run_till_terminated
end

main