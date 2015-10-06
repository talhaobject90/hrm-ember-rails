class RenameColumnsOfEmployees < ActiveRecord::Migration
  def change
    rename_column :employees, :date_of_birth, :date_of_birth
    rename_column :employees, :passport_issue, :passportissue
    rename_column :employees, :passport_expiry, :passportexpiry
  end
end
