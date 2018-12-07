class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :image_urls, array: true, default: []
      t.jsonb :data, default: {}

      t.timestamps
    end
  end
end
