# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Setup the 4 home teams on Gotham

Team.create([
              {external_id: '1', name: 'Brooklyn Bombshells'},
              {external_id: '2', name: 'Queens Of Pain'},
              {external_id: '3', name: 'Manhatten Mayham'},
              {external_id: '4', name: 'Bronx Gridlock'}
            ])
