json.extract! contract_item, :id, :number, :title, :description, :quantity, :unity_value, :total_value, :modified_at, :contract_item_group_id, :created_at, :updated_at
json.url contract_item_url(contract_item, format: :json)
