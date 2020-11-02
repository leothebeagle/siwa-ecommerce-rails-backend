# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

   
        
            seller_one = Seller.create(store_name: "Meydan",
            first_name: "Mohsen",
            last_name: "ElNeny",
            email: "mohsen@meydan.com",
            password:"aa")

            seller_one.items.create(
                name:"Urban hightops",
                description:"With a rugged exterior to withstand the toughest urban commute and 
                a cushioned interior to have you floating on clouds getting there.",
                image:"source.unsplash/dwKiHoqqxk8/1600x900",
                price:59
            )

            seller_one.items.create(
                name:"Sunglasses",
                description:"The trendiest designs for your eyes and nose",
                image:"source.unsplash/SYx3UCHZJlo/1600x900",
                price: 125
            )

            seller_one.items.create(
                name:"Basic tees",
                description:"Be confident in your basic loadout with this set of 5 immaculate tees.",
                image:"source.unsplash/xPJYL0l5Ii8/1600x900",
                price: 65
            )
        
        
            seller_two = Seller.create(store_name: "Garibaldi",
                first_name: "Lucas",
                last_name: "Moura",
                email: "lucas@garibaldi.com",
                password:"aa"
            )   

            seller_two.items.create(
                name:"Beanie hat",
                description:"Merino wool hat lined with soft fleece. Good till -30 F",
                image:"source.unsplash/Sf8MWkoLreQ/1600x900",
                price: 74
            )

            seller_two.items.create(
                name:"Sweatpants",
                description:"Work from home in your weekend pants. everyday.",
                image:"source.unsplash/eyFcZLLYvfA/1600x900",
                price: 37
            )
        
        
            seller_three = Seller.create(store_name: "Carnaval",
            first_name: "Gabriel",
            last_name: "Megalhaes",
            email: "gabriel@carnaval.com",
            password:"aa"
        )

            seller_three.items.create(
                name:"Notebook",
                description:"Plain unruled notebook. No bleedthrough. Our sturdy paper creates a writing experience that's both tactile and effortless.",
                image:"source.unsplash/TPoARluSmYs/1600x900",
                price:15
            )

            
        
    
    







    