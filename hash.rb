def buy_burger(menu, options = {})
  puts options
end

buy_burger('cheese', potato: true, drink: true)
buy_burger('cheese', :potato => true, :drink => true)

