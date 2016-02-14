require 'rubygems'
require 'sinatra'
require 'rss'

get '/' do
 #@hello = "こんにちは！"
 @rss = RSS::Parser.parse("http://mmaplanet.jp/feed")
 @rss_mmaplanet_report = RSS::Parser.parse("http://mmaplanet.jp/report/feed")
 erb :index 
 #'HerokuでSinatraを使ってHello world!'
end
