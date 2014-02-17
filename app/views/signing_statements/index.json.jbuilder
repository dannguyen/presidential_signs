json.array!(@signing_statements) do |signing_statement|
  json.extract! signing_statement, :id
  json.url signing_statement_url(signing_statement, format: :json)
end
