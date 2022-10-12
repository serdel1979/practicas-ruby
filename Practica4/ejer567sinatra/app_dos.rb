require 'bundler'
Bundler.require
require_relative 'middlewareh'
#require_relative 'middlewareb'
use MiddlewareH
#use Middleware

get '/' do
    "9ab87mn"
end