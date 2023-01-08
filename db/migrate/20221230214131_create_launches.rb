class CreateLaunches < ActiveRecord::Migration[6.1]
  def change
    create_table :launches do |t|
      t.string :url
      t.string :slug
      t.string :name
      t.integer :status
      t.datetime :net
      t.datetime :window_end
      t.datetime :window_start
      t.boolean :inhold
      t.boolean :tbdtime
      t.boolean :tbddate
      t.integer :probability
      t.string :holdreason
      t.string :failreason
      t.string :hashtag
      t.string :mission
      t.boolean :webcast_live
      t.string :infographic
      t.text :program

      t.timestamps
    end
  end
end
