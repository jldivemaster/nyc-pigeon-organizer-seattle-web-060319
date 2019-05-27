def nyc_pigeon_organizer(data)
  new_hash = {}
  new_trait_hash = {}

  data.each do |trait, trait_hash|
    trait_hash.each do |k, arr|
      arr.each do |name|
        new_hash[name] = { :color => [], :gender => [], :lives => [] }
      end
    end
  end

  x = new_hash.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_hash[item][:color] << bird_color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_hash[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_hash[item][:lives] << location
        end
      end
    end
  end

  return new_hash
end
