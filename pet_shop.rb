def pet_shop_name(shop)
  shop[:name]
end

def total_cash(shop)
  shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,cash)
  shop[:admin][:total_cash] += cash
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_sold)
  shop[:admin][:pets_sold] += number_sold
end

def stock_count(shop)
  shop[:pets].length()
end