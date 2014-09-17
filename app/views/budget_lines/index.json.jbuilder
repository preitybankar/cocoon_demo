json.array!(@budget_lines) do |budget_line|
  json.extract! budget_line, :id, :season_id, :budget_line_type, :budget_line_subtype, :member_id, :budget_line_item_name, :budgeted_amount
  json.url budget_line_url(budget_line, format: :json)
end
