class FranchisesController < ApplicationController

  get "/franchises" do 
    franchises = Franchise.all
    franchises.to_json(include:[:medias,:characters, :quotes, :images])
  end

  get "/franchises/:id" do 
    # binding.pry
    franchise = Franchise.find(params[:id])
    franchise.to_json(include:[:medias,:characters, :quotes, :images])
  end

  delete "/franchises/:id" do
    franchise = Franchise.find(params[:id])
    franchise.destroy
    franchise.to_json
  end

  post "/franchises" do 
    franchise = Franchise.create(
      title: params[:title]
    )
    franchise.to_json
  end

  patch "/franchises/:id" do 
    franchise = Franchise.find(params[:id])
    franchise.update(
      title: params[:title]
    )
    franchise.to_json
  end
  
end