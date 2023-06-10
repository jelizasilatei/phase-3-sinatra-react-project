require_relative "./config/environment"
require "sinatra"
# run ApplicationController

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

run ApplicationController # this is the line that starts the server
