def address(address_hash)

    if  address_hash[:subpremise] != null
        if  address_hash[:house_name] != null
            if  address_hash[:house_number] != null
                puts   address_hash[:subpremise]  + ", " +   address_hash[:house_name]  + ","
                puts  address_hash[:house_number]  + " " +   address_hash[:street_line_1]  + ","
            else
                puts   address_hash[:subpremise]  + ", " +   address_hash[:house_name]  + ","
              puts   address_hash[:street_line_1]  + ","
            end
        else
          if  address_hash[:house_number] != null
            puts   address_hash[:subpremise]  + ","
            puts   address_hash[:house_number]  + " " +   address_hash[:street_line_1]  + ","
          end
        end
    else
      if  address_hash[:house_name] != null
        if  address_hash[:house_number] != null
          puts   address_hash[:house_name]  + ","
          puts house+number + " " +   address_hash[:street_line_1]  + ","
        else
            puts   address_hash[:house_name]  + ","
              puts   address_hash[:street_line_1]  + ","
        end
      else
        puts house+number + " " +   address_hash[:street_line_1]  + ","
      end
    end
  if  address_hash[:street_line_2] != null
    puts   address_hash[:street_line_2]  + ","
  end
  puts   address_hash[:town_or_city]  + ","
  if  address_hash[:region] != null
    puts   address_hash[:region]  + ","
  end
  puts   address_hash[:postcode] 
end

address (
  "subpremise" => "Apt 6",
  "house_number" => "22",
  "house_name" => nil,
  "street_line_1" => "Bailey Rd",
  "street_line_2" => nil,
  "town_or_city" => "Sale",
  "region" => "Greater Manchester",
  "postcode" => "M33 1AX"
)
