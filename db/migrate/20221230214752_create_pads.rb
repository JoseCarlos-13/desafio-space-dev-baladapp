class CreatePads < ActiveRecord::Migration[6.1]
  def change
    create_table :pads do |t|
      t.string :url
      t.string :name
      t.string :info_url
      t.string :wiki_url
      t.string :map_url
      t.float :latitude
      t.float :longitude
      t.string :map_image

      t.timestamps
    end
  end
end
