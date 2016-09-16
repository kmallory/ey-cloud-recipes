# Specify environment variables for Unicorn or Passenger here
#
# The example below will tune garbage collection for REE and Ruby 1.9.x and higher

default[:env_vars] = {
  :RUBY_HEAP_MIN_SLOT => "10000",
  :RUBY_HEAP_SLOTS_INCREMENT => "10000",
  :RUBY_HEAP_SLOTS_GROWTH_FACTOR => "1.8",
  :RUBY_GC_MALLOC_LIMIT => "8000000",
  :RUBY_HEAP_FREE_MIN => "4096",
  :SIDEKIQ_USERNAME => "side",
  :SIDEKIQ_PASSWORD => "kiq",
  :REDIS_CACHE_URL => 'redis://127.0.0.1:6379/0/cache'
}
