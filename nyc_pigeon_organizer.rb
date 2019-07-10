def nyc_pigeon_organizer(data)
  pigeon_data = {}
data.each do |k, v|
  v.each do |spac, names|
    names.each do |name|
      if !pigeon_data.include?(name)
      pigeon_data[name] = {:color => [], :gender => [], :lives => []}
    end
  end
end
end
pigeon_data.each_key do |name|
  data[:color].each do |col, original_name|
    if data[:color][col].include?(name)
      pigeon_data[name][:color] << col.to_s
    end
  end
  data[:gender].each do |gen, og_name|
    if data[:gender][gen].include?(name)
      pigeon_data[name][:gender] << gen.to_s
    end
  end
  data[:lives].each do |liv, og_name|
    if data[:lives][liv].include?(name)
      pigeon_data[name][:lives] << liv.to_s
    end
  end
end
  pigeon_data
end
