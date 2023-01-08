class RemoveProgramColumnOfLaunch < ActiveRecord::Migration[6.1]
  def change
    remove_column :launches, :program
  end
end
