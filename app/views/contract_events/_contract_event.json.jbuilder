json.extract! contract_event, :id, :contract_id, :title, :modified_at, :created_at, :updated_at
json.url contract_event_url(contract_event, format: :json)
