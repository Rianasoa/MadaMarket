class CreateCommandProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :command_products do |t|
    	t.belongs_to :command, index: true
    	t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
