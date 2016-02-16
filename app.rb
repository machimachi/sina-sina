#herokuにアップした際のsinatra/reloaderのエラー対策
#require 'bundler/setup'
#Bundler.require

require 'rubygems'
require 'sinatra'
#require 'sinatra/reloader' if development?
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
