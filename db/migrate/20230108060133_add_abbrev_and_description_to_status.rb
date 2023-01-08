class AddAbbrevAndDescriptionToStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :statuses, :abbrev, :string
    add_column :statuses, :description, :string
  end
end
