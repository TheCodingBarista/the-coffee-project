#Store.all
    sinatra = Store.create(location_name: "Sinatra's 55")
    pose = Store.create(location_name: "Crooner's Pose")
    grand = Store.create(location_name: "The Grand Stage")

#User.all
    User.create(username: "HeadHoncho", title: "admin", password: "TestingTesting679", store_id: 1, name: "The Coding Barista")
    User.create(username: "RooTheCat", title: "employee", password: "Mrowww", store_id: 1, name: "Roo")
    User.create(username: "BossLady", title: "admin", password: "BossMoves27", store_id: 2, name: "Jane Doe")
    User.create(username: "BabyBarista", title: "employee", password: "ILoveCoffeee", store_id: 3, name: "Frank Sinatra")


#Item.all
    #Store #1
        Item.create(name: "Vanilla Syrup", category: "Syrup", quantity: 10, store_id: 1)
        Item.create(name: "Caramel Syrup", category: "Syrup", quantity: 3, store_id: 1)
        
        Item.create(name: "Whole Milk", category: "Milk", quantity: 2, store_id: 1)
        Item.create(name: "Almond Milk", category: "Milk", quantity: 8, store_id: 1)
        
        Item.create(name: "Plain Bagel", category: "Bakery Product", quantity: 18, store_id: 1)
        Item.create(name: "Croissant", category: "Bakery Product", quantity: 7, store_id: 1)
        
        Item.create(name: "Turkey Sandwich", category: "Sandwich", quantity: 22, store_id: 1)
        Item.create(name: "Caprese Sandwich", category: "Sandwich", quantity: 14, store_id: 1)
        
        Item.create(name: "Espresso", category: "Coffee Beans", quantity: 2, store_id: 1)
        Item.create(name: "Cold Brew", category: "Coffee Beans", quantity: 9, store_id: 1)
        
        Item.create(name: "Orange Juice", category: "Bottled Drinks", quantity: 9, store_id: 1)
        Item.create(name: "Green Juice", category: "Bottled Drinks", quantity: 17, store_id: 1)

    #Store#2
        Item.create(name: "Mocha Syrup", category: "Syrup", quantity: 13, store_id: 2)
        Item.create(name: "Hazelnut Syrup", category: "Syrup", quantity: 4, store_id: 2)
        
        Item.create(name: "Half & Half", category: "Milk", quantity: 5, store_id: 2)
        Item.create(name: "Oat Milk", category: "Milk", quantity: 7, store_id: 2)
        
        Item.create(name: "Blueberry Muffin", category: "Bakery Product", quantity: 11, store_id: 2)
        Item.create(name: "Banana Nut Bread (Slice)", category: "Bakery Product", quantity: 25, store_id: 2)
        
        Item.create(name: "Sausage Egg Sanwich", category: "Sandwich", quantity: 30, store_id: 2)
        Item.create(name: "Bacon Egg Sandwich", category: "Sandwich", quantity: 20, store_id: 2)
        
        Item.create(name: "Espresso", category: "Coffee Beans", quantity: 12, store_id: 2)
        Item.create(name: "Cold Brew", category: "Coffee Beans", quantity: 9, store_id: 2)
        
        Item.create(name: "Strawberry Lemonade", category: "Bottled Drinks", quantity: 24, store_id: 2)
        Item.create(name: "Chocolate Milk", category: "Bottled Drinks", quantity: 18, store_id: 2)

    #Store #3
        Item.create(name: "Butterscotch Syrup", category: "Syrup", quantity: 6, store_id: 3)
        Item.create(name: "Cinnammon Syrup", category: "Syrup", quantity: 3, store_id: 3)

        Item.create(name: "Coconut Milk", category: "Milk", quantity: 8, store_id: 3)
        Item.create(name: "Nonfat Milk", category: "Milk", quantity: 6, store_id: 3)
    
        Item.create(name: "Coffee Cake", category: "Bakery Product", quantity: 21, store_id: 3)
        Item.create(name: "Chocolate Chip Coookie", category: "Bakery Product", quantity: 25, store_id: 3)
    
        Item.create(name: "Ham & Swiss Sandwich", category: "Sandwich", quantity: 8, store_id: 3)
        Item.create(name: "Grilled Cheese Sandwich", category: "Sandwich", quantity: 4, store_id: 3)
    
        Item.create(name: "Espresso", category: "Coffee Beans", quantity: 9, store_id: 3)
        Item.create(name: "Cold Brew", category: "Coffee Beans", quantity: 13, store_id: 3)
    
        Item.create(name: "Bottled Water", category: "Bottled Drinks", quantity: 24, store_id: 3)
        Item.create(name: "Apple Juice", category: "Bottled Drinks", quantity: 10, store_id: 3)