class CreateAbout < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :description
      t.string :profile_image
    end
  end
end
