ENV["RACK_ENV"] ||= "development"
require_relative './models/link.rb'
require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base
  get '/' do
    redirect '/links'
  end

  get '/links' do
    @all_links = Link.all
    @all_tags = Tag.all
    erb(:links)
  end

  get '/links/new' do
    erb(:new_link)
  end

  post '/links' do
    link = Link.create(url: params[:URL], title: params[:title])
    tag = Tag.first_or_create(tag: params[:tag])
    link.tags << tag
    link.save
    redirect '/links'
  end

end
