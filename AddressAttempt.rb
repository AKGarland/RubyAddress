def address(address_hash)
    if  address_hash[:subpremise] != nil
        if  address_hash[:house_name] != nil
            if  address_hash[:house_number] != nil
                return   address_hash[:subpremise]  , ", " ,   address_hash[:house_name]  , ","
                return  address_hash[:house_number]  , " " ,   address_hash[:street_line_1]  , ","
            else
                return   address_hash[:subpremise]  , ", " ,   address_hash[:house_name]  , ","
                return   address_hash[:street_line_1]  , ","
            end
        else
            if  address_hash[:house_number] != nil
                return   address_hash[:subpremise]  , ","
                return   address_hash[:house_number]  , " " ,   address_hash[:street_line_1]  , ","
            end
        end
    else
        if  address_hash[:house_name] != nil
            if  address_hash[:house_number] != nil
                return   address_hash[:house_name]  , ","
                return address_hash[:house_number] , " " ,   address_hash[:street_line_1]  , ","
            else
                return   address_hash[:house_name]  , ","
                return   address_hash[:street_line_1]  , ","
            end
        else
            return address_hash[:house_number] , " " ,   address_hash[:street_line_1]  , ","
        end
    end
    
    return   address_hash[:street_line_2]  , "," if  address_hash[:street_line_2] != nil
      
    return   address_hash[:town_or_city] , "," 
    
    return   address_hash[:region]  , "," if address_hash[:region] != nil
    
    return   address_hash[:postcode] 
    
end

address( {
  "subpremise" => "Apt 6",
  "house_number" => "22",
  "house_name" => nil,
  "street_line_1" => "Bailey Rd",
  "street_line_2" => nil,
  "town_or_city" => "Sale",
  "region" => "Greater Manchester",
  "postcode" => "M33 1AX"
})
