require_relative('../models/animal')
require_relative('../models/owner')
require_relative('../models/adoption')

Adoption.delete_all()
Animal.delete_all()
Owner.delete_all()


owner1 = Owner.new({'first_name' => 'Kirsty', 'last_name' => 'Fergatron'})
owner2 = Owner.new({'first_name' => 'Anna', 'last_name' => 'Hutchy'})
owner3 = Owner.new({'first_name' => 'Faye', 'last_name' => 'Brioche'})
owner4 = Owner.new({'first_name' => 'Jess', 'last_name' => 'Cow'})
owner5 = Owner.new({'first_name' => 'Tom', 'last_name' => 'Wood'})
owner6 = Owner.new({'first_name' => 'Oscar', 'last_name' => 'Wildling'})

owner1.save
owner2.save
owner3.save
owner4.save
owner5.save
owner6.save

animal1 = Animal.new({
  'name' => 'Toad',
  'breed' => 'Cat',
  'adoptable' => 'Ready for adoption',
  'admission_date' => '2018/6/12' })

animal2 = Animal.new({
  'name' => 'Chip',
  'breed' => 'Dog',
  'adoptable' => 'Not ready for adoption',
  'admission_date' => '2018/7/1' })

animal3 = Animal.new({
  'name' => 'Ziggy',
  'breed' => 'Horse',
  'adoptable' => 'Not ready for adoption',
  'admission_date' => '2018/7/10' })

animal4 = Animal.new({
  'name' => 'Boris',
  'breed' => 'Dog',
  'adoptable' => 'Ready for adoption',
  'admission_date' => '2018/5/2' })

animal5 = Animal.new({
  'name' => 'Margot',
  'breed' => 'Dog',
  'adoptable' => 'Ready for adoption',
  'admission_date' => '2018/3/7' })

animal6 = Animal.new({
  'name' => 'Theo',
  'breed' => 'Cat',
  'adoptable' => 'Not ready for adoption',
  'admission_date' => '2018/7/20' })



animal1.save
animal2.save
animal3.save
animal4.save
animal5.save
animal6.save

adoption1 = Adoption.new({
  "animal_id" => animal1.id,
  "owner_id" => owner1.id
})

adoption2 = Adoption.new({
  "animal_id" => animal2.id,
  "owner_id" => owner2.id
})

adoption3 = Adoption.new({
  "animal_id" => animal3.id,
  "owner_id" => owner3.id
})

adoption4 = Adoption.new({
  "animal_id" => animal4.id,
  "owner_id" => owner4.id
})

adoption5 = Adoption.new({
  "animal_id" => animal5.id,
  "owner_id" => owner5.id
})

adoption6 = Adoption.new({
  "animal_id" => animal6.id,
  "owner_id" => owner6.id
})

adoption1.save
adoption2.save
adoption3.save
adoption4.save
adoption5.save
adoption6.save
