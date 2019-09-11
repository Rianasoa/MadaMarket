class CreateCommands < ActiveRecord::Migration[6.0]
  def change
    create_table :commands do |t|
    	t.references :customer, index: true
      t.timestamps
    end
  end
end
