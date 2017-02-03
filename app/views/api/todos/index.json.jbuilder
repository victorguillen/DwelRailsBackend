@todos.each do |todo|
  json.set! todo.id do
    json.extract! todo, :id, :description, :body,
      :group_id, :category, :resolved
  end
end
