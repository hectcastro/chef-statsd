require File.expand_path("../support/helpers", __FILE__)
require "socket"

describe "statsd::default" do
  include Helpers::Statsd

  it "creates the share directory" do
    directory(node["statsd"]["dir"]).must_exist
  end

  it "creates the configuration directory" do
    directory(node["statsd"]["conf_dir"]).must_exist
  end

  it "creates the configuration file" do
    file("#{node["statsd"]["conf_dir"]}/config.js").must_exist
  end

  it "creates a daemon user" do
    user("statsd").must_exist
  end

  it "runs as a daemon" do
    service("statsd").must_be_running
  end

  it "accepts connections" do
    s = TCPSocket.new("127.0.0.1", 8126)
    s.puts("help\r\n")
    help = s.gets
    s.close

    assert(help =~ /Commands:/)
  end
end
