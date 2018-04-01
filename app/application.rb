class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

      item_name = req.path.split("/item/").first
      item = @@items.find{|s| s. == item_name}

      resp.write song.artist
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
