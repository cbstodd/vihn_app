me = Customer.create(name: 'Colin Stodd', email: 'cbstodd@gmail.com')
test = Customer.create(name: 'John Doe', email: 'test@example.com')
Customer.create(name: 'Nowhere Man', email: 'man@nowhere.com')

plumber = Provider.create(name: 'First Class Plumbing', price: 50.00)
handyman = Provider.create(name: 'Handyman', price: 20.00)
boat_detailer = Provider.create(name: 'Mikes Mobile Marine Services', price: 35.00)

service = Order.create(customer: me, placed_at: '2013-09-27')
LineItem.create(service: service, quantity: 1, provider: plumber)

service = Order.create(customer: me, placed_at: Time.current)
LineItem.create(service: service, quantity: 1, provider: handyman)

service = Order.create(customer: test, placed_at: Time.current)
LineItem.create(service: service, quantity: 1, provider: boat_detailer)
