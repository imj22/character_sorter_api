class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    # { message: "Good luck with your project!" }.to_json
    [200, { "Content-Type" => "text/html" }, ["<h2>Base Routes: </h2> <li>/characters</li><li>/medias</li><li>/franchises</li>"]]
  end
end
