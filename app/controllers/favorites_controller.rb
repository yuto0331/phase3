class FavoritesController < ApplicationController
  def create
      favorite = current_user.favorites.create(picture_id: params[:picture_id])
      redirect_to pictures_url, notice: "#{favorite.picture.user.name}さんのブログをお気に入り登録しました"
  end 
  def destroy
	    favorite = current_user.favorites.find_by(picture_id: params[:picture_id]).destroy
	    redirect_to pictures_url, notice: "#{favorite.picture.user.name}さんのブログのお気に入りを解除しました"
  end 
end
