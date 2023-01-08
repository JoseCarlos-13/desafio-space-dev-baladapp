class CreateRockets < ActiveRecord::Migration[6.1]
  def change
    create_table :rockets do |t|

      t.timestamps
    end
  end
end
