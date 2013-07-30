json.array!(@suppliers) do |supplier|
  json.extract! supplier, :name, :address, :number, :email
  json.url supplier_url(supplier, format: :json)
end
