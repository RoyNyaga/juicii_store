class AddAdvertAndPictureFields < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :advert, :string, default: false
  	add_column :products, :pictureOne, :string, default: "https://res.cloudinary.com/it-s-tech/image/upload/v1580598782/20200131_234048_0000_wxtuz5.png"
  	add_column :products, :pictureTwo, :string, default: "https://res.cloudinary.com/it-s-tech/image/upload/v1580598782/20200131_234048_0000_wxtuz5.png"
  	add_column :products, :pictureThree, :string, default: "https://res.cloudinary.com/it-s-tech/image/upload/v1580598782/20200131_234048_0000_wxtuz5.png"
  end
end 
