require 'sinatra'

set :bind, '0.0.0.0'
set :port, 3000

get '/' do
  "<h1>Hello from Ruby!</h1>
   <p>Served by Sinatra in Docker.</p>"
end
