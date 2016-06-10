
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
important_dates = ImportantDate.create([{ name: 'Anniversary' }, { name: 'Birthday' }, { name: 'Graduation' }, { name: 'Baby Shower' }, { name: 'Just Because' }, { name: 'Quinceanera' }, { name: 'Sympathy' },{ name: 'Bar Mitzvah' }, { name: 'Bat Mitzvah' }])

current_year=Date.today.year
from = Date.civil(current_year,1,1)
to = Date.civil(current_year,12,31)

formal = Holidays.between(from, to, :us)
informal = Holidays.between(from, to, :us, :informal)
firstdraft = formal+informal

firstdraft.each do |fulldate|
  holiday=Holiday.new
  holiday.name= fulldate[:name]
  holiday.date= fulldate[:date]
  holiday.save
end#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "There are now #{Holiday.count} holidays in the database."
