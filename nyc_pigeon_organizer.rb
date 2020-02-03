def nyc_pigeon_organizer(data)
  # write your code here!
  
  #create a new array of hashes
  #iterate over each array list of names (hash, hash, hash, array)
  #Make that name a new directory in the hash list OR update the hash list with the new data
  #Setup will be -- 
  #[Array name => h2 hash => h1
  #The h2 key will become the value, the h1 key will become the key
  
  result = {}
  data.each do |category, category_values|
    specific_category = category
    category_values.each do |characteristic, characteristic_values|
      specific_characteristic = characteristic
      characteristic_values.each do |name|
        if result.include?(name)
          if result[name].include?(specific_category)
            result[name][specific_category].push(specific_characteristic)
          else
            result[name][specific_category] = [specific_characteristic.to_s]
          end
        else
          result[name] = {specific_category => [specific_characteristic.to_s]}
        end
      end
    end
  end
  return result
  
  
end
