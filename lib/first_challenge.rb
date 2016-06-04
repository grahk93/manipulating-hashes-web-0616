def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

 contacts.each do |person, data|
    #person = JS FM
    #data = hash of key value paors 
    if person == "Freddy Mercury"
      data.each do |key, value|
        #keys are name email ice know
        #values are their strings/arrays
        if key == :favorite_icecream_flavors
          value.delete_if {|flavor| flavor == "strawberry"}
        end
      end
    end
  end
            #each index is a flavor 



  #remember to return your newly altered contacts hash!
  contacts
end

