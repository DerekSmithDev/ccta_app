json.array! @favorites.each do |favorite|
  json.partial! "favorite.json.jbuilder", favorite: favorite
end