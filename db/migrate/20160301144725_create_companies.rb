class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :url
      t.text :about
      t.text :vision
      t.string :ceo
      t.integer :employees
      t.date :establishment
      t.string :postal
      t.string :address
      t.boolean :public, null: false, default: false

      t.timestamps null: false
    end
  end
end
