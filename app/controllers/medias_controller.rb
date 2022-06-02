class MediasController < ApplicationController
    get "/medias" do
        medias = Media.all
        medias.to_json(include: [:franchise, :characters, :images])
    end
    
    get "/medias/:id" do
        media = Media.find(params[:id])
        media.to_json(include: [:franchise, :characters, :images])
    end
    
    delete "/medias/:id" do
        media = Media.find(params[:id])
        media.destroy
        media.to_json
    end    
end