json.array!(@pay_types) do |pay_type|
  json.extract! pay_type, :id, :pay_type
  json.url pay_type_url(pay_type, format: :json)
end
