
class SongsController < ApplicationController


  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/new' do
    @artists = Artist.all
    erb :'songs/new'
  end

  post '/songs' do

    @artist = Artist.find_or_create_by(name: params["artist"]["name"])

    @artist.songs << Song.create(params["song"])
    @artist.save
    # if @artists.include?(params["artist"]["name"])
    #
    # else
    #   @artist = Artist.create(name: params["artist"]["name"])
    # end
    # @artist<<song
    redirect to '/songs/:slug'
    end





  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
     erb :'songs/show'
  end

end
