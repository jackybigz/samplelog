json.array!(@requests) do |request|
  json.extract! request, :request_date, :request_smd_number, :request_brief_description, :request_description, :request_supplier, :request_colours, :request_date_required, :request_required_for, :request_comments, :request_confirmed_comp_date, :request_received, :request_received_date, :request_date_sent, :request_tracking_number, :request_confirmed_comp_date, :request_confirmed_comp_date2, :request_confirmed_comp_date3, :request_confirmed_comp_date4, :request_confirmed_comp_date5, :request_confirmed_comp_date6, :tag
  json.url request_url(request, format: :json)
end
