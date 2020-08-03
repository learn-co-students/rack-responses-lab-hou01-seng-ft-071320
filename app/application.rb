class Application
  def call(a)
    b=Rack::Response.new
    if Time.now.hour < 12
      b.write "Good Morning"
    else
      b.write "Good Afternoon"
    end
    b.finish
  end
end