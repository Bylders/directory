json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :tpe, :price
  json.url menu_url(menu, format: :json)
end
