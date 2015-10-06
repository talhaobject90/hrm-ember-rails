class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :date_of_birth, :passportno, :passport_issue, :passport_expiry
end
