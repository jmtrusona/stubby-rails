# in config/initializers/prometheus.rb
if Rails.env != "test"
  require 'prometheus_exporter/middleware'

  # This reports stats per request like HTTP status and timings
  Rails.application.middleware.unshift PrometheusExporter::Middleware
end

# # in unicorn/puma/passenger be sure to run a new process instrumenter after fork
# after_fork do
#   require 'prometheus_exporter/instrumentation'
#   PrometheusExporter::Instrumentation::Process.start(type:"web")
# end