class CreateHeroImages < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_images do |t|

      t.timestamps
    end
  end
end
