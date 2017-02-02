@groups.each do |group|
  json.set! group.id do
    json.extract! group, :id, :tenant, :landlord, :token
  end
end
