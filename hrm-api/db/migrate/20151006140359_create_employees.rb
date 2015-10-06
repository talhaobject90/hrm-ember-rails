class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :gender
      t.datetime :date_of_birth
      t.integer :passportno
      t.datetime :passport_issue
      t.datetime :passport_expiry

      t.timestamps null: false
    end
  end
end
