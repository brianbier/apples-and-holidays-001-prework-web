require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash[:winter].each do |key,value|
    array << value
  end
  array.join(" ")
end

def all_supplies_in_holidays(holiday_hash)
puts <<-TEXT
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
TEXT

  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  container = []
  holiday_hash.each do |key,value| 
    value.each do |array|
      if array[0] == :fourth_of_july
        container.push(array[0])
      elsif array[0] == :memorial_day
        container << array[0]
      end
    end
  end
  container
end







