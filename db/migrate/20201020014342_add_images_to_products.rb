class AddImagesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :main_image, :string
    add_column :products, :additional_image_one, :string
    add_column :products, :additional_image_two, :string
    add_column :products, :additional_image_three, :string
  end
end
