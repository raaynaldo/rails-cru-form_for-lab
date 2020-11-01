class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        song = Song.create(get_params)

        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])

        render :new
    end

    def update
        song = Song.find(params[:id])
        song.update(get_params)

        redirect_to song_path(song)
    end

    private
    def get_params
        params[:song][:genre_id] = params[:song][:genre_id].to_i
        params[:song][:artist_id] = params[:song][:artist_id].to_i
        params.require(:song).permit(:name)
    end
end
