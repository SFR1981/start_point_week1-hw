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

def pets_by_breed(shop, breed)
  count = []
  for i in 0..shop[:pets].length - 1
    if shop[:pets][i][:breed] == breed
      count = count << breed
    end
  end
  count

end

def find_pet_by_name(shop, name)

  for i in 0..shop[:pets].length - 1
    if shop[:pets][i][:name] == name
      pets = shop[:pets][i]
    end
  end
  return pets

end
