if @supply != nil
  json.id       @supply.id
  json.supplier @supply.user
  json.category @supply.category.name
  json.quantity @supply.quantity
  json.unit     @supply.unit.name

  unless @includes.empty?
    @includes.each do |key, value|
      json.set! key.to_sym, value
    end
  end
end
