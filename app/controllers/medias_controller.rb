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

    post '/medias' do 
        media = Media.create(
            release_date: params[:release_date], 
            director: params[:director], 
            title: params[:title], 
            genre: params[:genre],
            media_type: params[:media_type], 
            franchise_id: params[:franchise_id]
        )
        media.to_json
    end

    patch "/medias/:id" do 
        media = Media.find(params[:id])
        media.update(
            release_date: params[:release_date], 
            director: params[:director], 
            title: params[:title], 
            genre: params[:genre],
            media_type: params[:media_type], 
            franchise_id: params[:franchise_id]
        )
        media.to_json
    end
end