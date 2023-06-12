class FavoritesController < ApplicationController

def favorite?(user)
  favorites.exists?(user_id: user.id)
end

def favorite(user)
  favorites.create(user_id: user.id)
end

def unfavorite(user)
  favorites.find_by(user_id: user.id).destroy
end
end
