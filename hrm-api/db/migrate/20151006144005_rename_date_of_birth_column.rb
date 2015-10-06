class RenameDateOfBirthColumn < ActiveRecord::Migration
  def change
    rename_column :employees, :date_of_birth, :dateofbirth
  end
end
