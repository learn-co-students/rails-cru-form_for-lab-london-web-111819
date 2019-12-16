class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        s = Song.create(song_params(:name,:artist_id,:genre_id))
        redirect_to song_path(s)
    end

    def show
        @song = Song.find(params[:id])
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        s = Song.find(params[:id])
        s.update(song_params(:name,:artist_id,:genre_id))
        redirect_to song_path(s)
    end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end

end
