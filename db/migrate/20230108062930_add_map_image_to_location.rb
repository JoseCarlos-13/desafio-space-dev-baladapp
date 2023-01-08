class AddMapImageToLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :map_image, :string
  end
end
