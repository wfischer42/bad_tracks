# This migration was created with
#   'rails g migration CreateArtists name:string'
# And the timestamps were added manually

class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name

      t.timestamps
    end
  end
end
