class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def create
        a = Artist.create(artist_params(:name,:bio))
        redirect_to artist_path(a)
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        a = Artist.find(params[:id])
        a.update(artist_params(:name,:bio))
        redirect_to artist_path(a)
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(:name,:bio)
    end

end
