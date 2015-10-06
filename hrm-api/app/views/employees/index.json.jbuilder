json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :gender, :date_of_birth, :passportno, :passport_issue, :passport_expiry
  json.url employee_url(employee, format: :json)
end
