class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :dateofbirth, :passportno, :passportissue, :passportexpiry
end
