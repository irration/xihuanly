class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false, limit: 30
      t.string :url, limit: 128
      t.text :about, limit: 300
      t.text :vision, limit: 300
      t.string :ceo, limit: 30
      t.integer :employees
      t.date :establishment
      t.string :postal, limit: 9
      t.string :address, limit: 256
      t.boolean :public, null: false, default: false

      t.timestamps null: false
    end
  end
end
