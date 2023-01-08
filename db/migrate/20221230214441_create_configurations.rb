class CreateConfigurations < ActiveRecord::Migration[6.1]
  def change
    create_table :configurations do |t|
      t.string :url
      t.string :name
      t.string :family
      t.string :full_name
      t.string :variant

      t.timestamps
    end
  end
end
