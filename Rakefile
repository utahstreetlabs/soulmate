require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

REDIS_DIR = File.expand_path(File.join("..", "test"), __FILE__)
REDIS_CNF = File.join(REDIS_DIR, "test.conf")
REDIS_PID = File.join(REDIS_DIR, "db", "redis.pid")
REDIS_LOCATION = ENV['REDIS_LOCATION']

task :default => :run

desc "Run tests and manage server start/stop"
task :run => [:start, :test, :stop]

desc "Start the Redis server"
task :start do
  redis_running = \
    begin
      File.exists?(REDIS_PID) && Process.kill(0, File.read(REDIS_PID).to_i)
    rescue Errno::ESRCH
      FileUtils.rm REDIS_PID
      false
    end

  if REDIS_LOCATION
    system "#{REDIS_LOCATION}/redis-server #{REDIS_CNF}" unless redis_running
  else
    system "redis-server #{REDIS_CNF}" unless redis_running
  end
end

desc "Stop the Redis server"
task :stop do
  if File.exists?(REDIS_PID)
    Process.kill "INT", File.read(REDIS_PID).to_i
    FileUtils.rm REDIS_PID
  end
end
