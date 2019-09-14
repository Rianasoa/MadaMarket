class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
    	t.references :customer, index: true
    	t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
