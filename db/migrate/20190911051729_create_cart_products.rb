class CreateCartProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_products do |t|
    	t.belongs_to :cart, index: true
    	t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
