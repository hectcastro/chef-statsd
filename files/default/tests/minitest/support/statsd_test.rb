require "minitest/autorun"
require "socket"

describe_recipe "statsd::default" do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe "files" do
    it "creates the share directory" do
      directory(node["statsd"]["dir"]).must_exist
    end

    it "creates the configuration directory" do
      directory(node["statsd"]["conf_dir"]).must_exist
    end

    it "creates the configuration file" do
      file("#{node["statsd"]["conf_dir"]}/config.js").must_exist
    end

    it "creates the Upstart script" do
      file("/etc/init/statsd.conf").must_exist
    end

    it "creates the log file" do
      file(node["statsd"]["log_file"]).must_exist
    end
  end

  describe "users" do
    it "creates a daemon user" do
      user("statsd").must_exist
    end
  end

  describe "services" do
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
end


