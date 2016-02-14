require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'rss'

get '/' do
    erb :index
end

get '/page2' do
    erb :page2
end

get '/mmantena' do
 @rss = RSS::Parser.parse("http://mmaplanet.jp/feed")
 @rss_mmaplanet_report = RSS::Parser.parse("http://mmaplanet.jp/report/feed")
 erb :mma
end

get '/hatena-it' do
 @rss = RSS::Parser.parse("http://mmaplanet.jp/feed")
 @rss_mmaplanet_report = RSS::Parser.parse("http://mmaplanet.jp/report/feed")
 erb :mma
end