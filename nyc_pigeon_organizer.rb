def nyc_pigeon_organizer(data)
  new_hash = Hash.new
  data.each_pair do |outer_key, outer_val|
    outer_val.each_pair do |inner_key, inner_val|
      inner_val.each do |name|
        if new_hash[name] #name already a key in new_hash
		  if new_hash[name][outer_key]
			new_hash[name][outer_key] << inner_key.to_s
		  else
		    new_hash[name][outer_key] = [inner_key.to_s]
		  end #end inner if
        else
          new_hash[name] = Hash.new
          new_hash[name][outer_key] = [inner_key.to_s]
        end #end if 
      end #end inner each 
    end #end middle each 
  end #end outer each
  new_hash
end #end method
