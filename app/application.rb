class Application

  def call(env)
    resp = Rack::Response.new
    count = 0
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
 
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      count += 1
      resp.write "You Lose  Count: #{count}"
    end
 
    resp.finish
  end

end
