class GenresController < ApplicationController


    def new
        @genre = Genre.new
    end

    def create
        g = Genre.create(genre_params(:name))
        redirect_to genre_path(g)
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        g = Genre.find(params[:id])
        g.update(genre_params(:name))
        redirect_to genre_path(g)
    end

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

end
