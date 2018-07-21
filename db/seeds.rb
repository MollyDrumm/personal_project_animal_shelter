require_relative('../models/animal')
require_relative('../models/owner')

owner1 = Owner.new({'name' => 'Kirsty Fergatron',})
owner2 = Owner.new({'name' => 'Anna Hutchy'})
owner3 = Owner.new({'name' => 'Faye Brioche'})
owner4 = Owner.new({'name' => 'Jess Cow'})

# owner1.save
# owner2.save
# owner3.save
# owner4.save

animal1 = Animal.new({
  'name' => 'Toad',
  'breed' => 'Cat',
  'adoptable' => 'Ready for adoption' })

animal2 = Animal.new({
  'name' => 'Chip',
  'breed' => 'Dog',
  'adoptable' => 'Not ready for adoption' })

animal3 = Animal.new({
  'name' => 'Ziggy',
  'breed' => 'Horse',
  'adoptable' => 'Not ready for adoption' })

animal4 = Animal.new({
  'name' => 'Boris',
  'breed' => 'Dog',
  'adoptable' => 'Ready for adoption' })
