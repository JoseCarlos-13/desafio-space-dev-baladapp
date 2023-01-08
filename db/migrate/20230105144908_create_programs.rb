class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :url
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :info_url
      t.string :wiki_url

      t.timestamps
    end
  end
end
