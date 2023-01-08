class CreateOrbits < ActiveRecord::Migration[6.1]
  def change
    create_table :orbits do |t|
      t.string :name
      t.string :abbrev

      t.timestamps
    end
  end
end
