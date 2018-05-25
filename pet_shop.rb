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

  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
    return nil

end


def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      shop[:pets].delete(pet)
    end

  end


end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet

end


 def customer_cash(customer)
   return customer[:cash]

 end


def remove_customer_cash(customer, cash)
    customer[:cash] -= cash
end

def customer_pet_count(customer)
  customer[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end



def customer_can_afford_pet(customer, pet)

  customer[:cash]> pet[:price]

end

def sell_pet_to_customer(shop, pet, customer)

  if shop[:pets].include?(pet) && customer_can_afford_pet(customer, pet)
    customer[:pets] << pet
    shop[:admin][:pets_sold] += 1
    shop[:admin][:total_cash] += pet[:price]
    customer[:cash] -= pet[:price]
  end

end
