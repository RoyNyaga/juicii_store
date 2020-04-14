ActiveAdmin.register Product do

  permit_params :title, :description, :availability, 
  :price, :photo_link, :category_id, :advert, :promotion
end
