class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.references :subject, index: true

      t.timestamps
    end
  end
end
