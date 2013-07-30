json.array!(@customers) do |customer|
  json.extract! customer, :name, :address, :email, :number
  json.url customer_url(customer, format: :json)
end
