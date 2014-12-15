# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Bob\'s Party Promotions', email: 'bob-awad@mailinator.com', password: 'testnotforreal')
User.create(name: 'MISSO', email: 'misso@misso.org', password: 'testmisso')
Party.create(title: 'End of Semester Party', description: 'Ice cream party', user_id: 2)
Party.create(title: 'MISSO Holiday Party', description: 'Show up at Parks\' house with cookies and punch', user_id: 2)
Party.create(title: 'Anthropology Holiday Party', description: 'Hipsters unite!', user_id: 1)
Rsvp.create(user_id: 1, party_id: 2, coming: true)
