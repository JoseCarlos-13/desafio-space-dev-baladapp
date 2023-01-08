class AddRocketReferencesToConfiguration < ActiveRecord::Migration[6.1]
  def change
    add_reference :configurations, :rocket, null: false, foreign_key: true
  end
end
