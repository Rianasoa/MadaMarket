class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :image_url
      t.references :provider, index: true
      t.belongs_to :category, index: true
      t.boolean :validation, default: false
      t.timestamps
    end
  end
end
