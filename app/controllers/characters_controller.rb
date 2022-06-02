class CharactersController < ApplicationController
    get "/characters" do 
        characters = Character.all
        characters.to_json(include: [:quotes, :medias, :images])
      end
    
      get "/characters/:id" do 
        character = Character.find(params[:id])
        character.to_json(include: [:quotes, :medias, :images])
      end
    
      delete "/characters/:id" do
        character = Character.find(params[:id])
        character.destroy
        character.to_json
      end

      post "/characters" do 
        character = Character.create(
            name: params[:name],
            organization: params[:organization], 
            allies: params[:allies]
            description: params[:description]
        )
        character.to_json
      end
end