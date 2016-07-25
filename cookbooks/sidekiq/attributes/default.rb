#
# Cookbook Name:: sidekiq
# Attrbutes:: default
#

default[:sidekiq] = {
  # Sidekiq will be installed on to application/solo instances,
  # unless a utility name is set, in which case, Sidekiq will
  # only be installed on to a utility instance that matches
  # the name
  :utility_name => 'sidekiq',

  # Number of workers (not threads)
  :workers => 1,

  # Concurrency
  :concurrency => 5,

  # Queues
  :queues => {
    # :queue_name => priority
    :default => 2,
    :mailers => 1,
    :coi => 2
  },

  # Verbose
  :verbose => true,

  :limits => {
  :coi => 2}
}
