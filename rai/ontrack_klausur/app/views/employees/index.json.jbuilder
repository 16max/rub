json.array!(@employees) do |employee|
  json.extract! employee, :id, :vorname, :nachname, :username, :project_id
  json.url employee_url(employee, format: :json)
end
