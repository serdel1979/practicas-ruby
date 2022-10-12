require 'bundler'
Bundler.require

get '/' do
  num= rand(1..42)
  if num == 42
    [200, "#{num}"]
  else
    [404, "#{num}"]
  end
end