class CreateAgencies < ActiveRecord::Migration[6.1]
  def change
    create_table :agencies do |t|
      t.string :url
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
