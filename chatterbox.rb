require 'digest'
require 'sinatra'
require 'haml'

helpers do
  def faye_path
    "#{request.scheme}://#{request.host}:9001/faye"
  end

  def faye_js_path
    faye_path + ".js"
  end

  def room_url(room)
    "#{request.scheme}://#{request.host}:#{request.port}/r/#{room}"
  end
end

def generate_room
  Digest::MD5.hexdigest(Time.now.to_f.to_s).slice(0, 8)
end

get '/' do
  haml :index
end

get "/create" do
  username = params[:username]
  room     = generate_room
  redirect to("/r/#{room}?username=#{username}")
end

get "/join" do
  username = params[:username]
  room     = params[:room]
  redirect to("/r/#{room}?username=#{username}")
end

get "/r/:room" do |room|
  @username = params[:username]
  @room     = room
  haml :room
end
