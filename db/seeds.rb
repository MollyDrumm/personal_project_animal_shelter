require_relative('../models/animal')
require_relative('../models/owner')

owner1 = Owner.new({'name' => 'Kirsty Fergatron',})
owner2 = Owner.new({'name' => 'Anna Hutchy'})
owner3 = Owner.new({'name' => 'Faye Brioche'})
owner4 = Owner.new({'name' => 'Jess Cow'})

owner1.save
owner2.save
owner3.save
owner4.save

animal1 = Animal.new({
  'name' => 'Toad',
  'breed' => 'Cat',
  'adoptable' => 'Ready for adoption',
  'admission_date' => '12/6/18' })

animal2 = Animal.new({
  'name' => 'Chip',
  'breed' => 'Dog',
  'adoptable' => 'Not ready for adoption',
  'admission_date' => '20/7/18' })

animal3 = Animal.new({
  'name' => 'Ziggy',
  'breed' => 'Horse',
  'adoptable' => 'Not ready for adoption',
  'admission_date' => '24/7/18' })

animal4 = Animal.new({
  'name' => 'Boris',
  'breed' => 'Dog',
  'adoptable' => 'Ready for adoption',
  'admission_date' => '2/5/18' })

animal1.save
animal2.save
animal3.save
animal4.save
