class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :username
      t.text :address
      t.text :order_history
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
