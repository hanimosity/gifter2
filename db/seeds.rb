
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
important_dates = ImportantDate.create([{ name: 'Anniversary' }, { name: 'Birthday' }, { name: 'Graduation' }, { name: 'Baby Shower' }, { name: 'Just Because' }, { name: 'Quinceanera' }, { name: 'Sympathy' },{ name: 'Bar Mitzvah' }, { name: 'Bat Mitzvah' }])
holidays = Holiday.create
#   Mayor.create(name: 'Emanuel', city: cities.first)
