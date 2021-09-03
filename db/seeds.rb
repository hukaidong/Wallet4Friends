# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cec, qi, kd = User.create([{ name: 'Cecilia' }, { name: 'Qi' }, { name: 'Kaidong' }])
new_payment = GroupPayment.create({ memo: 'Resturant' })
GroupPaymentItem.create({ action_type: 'paid', user: kd, group_payment: new_payment, amount: 57.70 })
GroupPaymentItem.create({ action_type: 'shouldPay', user: kd, group_payment: new_payment, amount: 57.70 / 3 })
GroupPaymentItem.create({ action_type: 'shouldPay', user: cec, group_payment: new_payment, amount: 57.70 / 3 })
GroupPaymentItem.create({ action_type: 'shouldPay', user: qi, group_payment: new_payment, amount: 57.70 / 3 })

MoneyTransfer.create({ sender: qi, receiver: kd, amount: 0.01 })