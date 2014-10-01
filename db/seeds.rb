me = Customer.create(name: 'Colin Stodd', email: 'cbstodd@gmail.com',
     zip_code: "21403", profile_info: "Lorem ipsum", phone_number: "401.111.3333")

test = Customer.create(name: 'John Doe', email: 'test@example.com',
     zip_code: "12345", profile_info: "Lorem ipsum", phone_number: "543.345.2345")

Customer.create(name: 'Nowhere Man', email: 'man@nowhere.com',
     zip_code: "23124", profile_info: "lorem ipsum noman", phone_number: "523.123.5432")


plumber = Provider.create(name: 'First Class Plumbing', price: 50.00, 
      service: "Plumber", email: "user@plumber.com", zip_code: "34321", 
      phone_number: "432.432.5987", profile_info: "Lorem ipsum")

handyman = Provider.create(name: 'Handyman', price: 20.00, 
      service: "Handyman", email: "user@handyman.com", zip_code: "33342", 
      phone_number: "432.432.5457", profile_info: "Lorem ipsum")

boat_detailer = Provider.create(name: 'Mikes Mobile Marine Services', price: 35.00,
      service: "Boat Detailing", email: "user@boat_detailing.com", zip_code: "32521", 
      phone_number: "432.432.5097", profile_info: "Lorem ipsum")


order = Order.create(customer: me, placed_at: '2013-09-27')
LineItem.create(order: order, hours: 3, provider: plumber, price: 50.00)

order = Order.create(customer: me, placed_at: Time.current)
LineItem.create(order: order, hours: 5, provider: handyman, price: 20.00)

order = Order.create(customer: test, placed_at: Time.current)
LineItem.create(order: order, hours: 8, provider: boat_detailer, price: 35.00)