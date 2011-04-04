require 'faye'

faye_server = Faye::RackAdapter.new(:mount => '/faye', :timeout => 30, :port => 9001)
run faye_server
