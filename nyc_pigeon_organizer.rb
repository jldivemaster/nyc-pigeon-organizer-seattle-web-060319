def nyc_pigeon_organizer(data)
  new_hash = {}
  new_trait_hash = {}

  data.each do |trait, trait_hash|
    trait_hash.each do |k, arr|
      arr.each do |name|
        new_arr = []
        if (trait_hash[k]).include?(name)
          new_arr << k.to_s 
          new_trait_hash[trait] = new_arr.uniq
        end
        
        if !new_hash.has_key?(name)
          new_hash[name] = new_trait_hash
        end
      end
    end
  end
  return new_hash
end
