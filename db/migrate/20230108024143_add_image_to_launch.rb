class AddImageToLaunch < ActiveRecord::Migration[6.1]
  def change
    add_column :launches, :image, :string
  end
end
