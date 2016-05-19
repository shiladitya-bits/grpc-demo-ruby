# grpc-demo-ruby
Inspired from official demo

###Steps to get started

1. install protoc compiler(https://github.com/google/protobuf/releases) and runtime for your platform([https://github.com/google/protobuf/blob/master/README.md)
2. install gRPC (gem install gRPC)
3. Install gRPC ruby plugin:
  a. `git clone https://github.com/grpc/grpc.git`
  b. `bundle install`
  c. There might be an error for missing dependencies, just follow the solution for installing missing dependencies.
  d. `make grpc_ruby_plugin`
  e. `cp bins/opt/grpc_ruby_plugin $SOMEWHERE_ON_PATH`
  
Now you are good to write your own .proto code, and convert them to Ruby stubs

To generate the client and server side interfaces, run the protocol buffer compiler:

    `protoc --ruby_out=lib --grpc_out=lib --plugin=protoc-gen-grpc=`which grpc_ruby_plugin` helloworld.proto`

To run the server,

    `bundle exec ./greeter_server.rb &`

To call from client,

    `bundle exec ./greeter_client.rb`

Inspired from http://www.grpc.io/docs/ 
