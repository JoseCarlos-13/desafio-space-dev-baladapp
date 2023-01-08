class CreateMissions < ActiveRecord::Migration[6.1]
  def change
    create_table :missions do |t|
      t.string :name
      t.string :description
      t.string :launch_designator
      t.string :type

      t.timestamps
    end
  end
end
