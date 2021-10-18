# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.destroy_all
Employee.destroy_all
Address.destroy_all
Group.destroy_all
Student.destroy_all
Siblinghood.destroy_all
Contact.destroy_all
Allergy.destroy_all
Historic.destroy_all


# Schools
s1 = School.create(name: 'First school')
s2 = School.create(name: 'Second school')


# Employees
lily = Employee.create(last_name: 'Mauguen', first_name: 'Lily')
guillaume = Employee.create(last_name: 'Mauguen', first_name: 'Guillaume')
chacal = Employee.create(last_name: 'Défouraille', first_name: 'Chacal')

s1.employees << [lily, guillaume]
s2.employees << chacal


# Groups
g1 = Group.create([{name: 'Yuri1'}, {name: 'Sakura1'}, {name: 'Sumire1'}, {name: 'Sakura2'}])
s1.groups << g1

g2 = Group.create([{name: 'Kirin1'}, {name: 'Kabuto1'}, {name: 'Neko1'}])
s2.groups << g2

lily.groups << g1
guillaume.groups << g2


# Students
sakura1_students = s1.students.create([{first_name: "Kairen"}, {first_name: "Kazuma"}, {first_name: "Shouma"}, {first_name: "Momo"}, {first_name: "Hana"}])
akkun = s1.students.create(first_name: "Akkun")

kairen_class = Group.where(name: "Sakura1").first
kairen_class.students << sakura1_students
akkun_class = Group.where(name: "Sakura2").first
akkun_class.students << akkun


# Addresses
s1.addresses.create(city: "Osaka")
s2.addresses.create(city: "Kyoto")
guillaume.addresses.create(city: "Nantes")
lily.addresses.create(city: "LA")
chacal.addresses.create(city: "Shashi")
sakura1_students[0].addresses.create(city: "Osaka")


# Contacts
contact_guillaume = Contact.create(first_name: "Guillaume")
contact_richards = Contact.create(first_name: "Richard's")
contact_sunny = Contact.create(first_name: "Sunny")
contact_lily = Contact.create(first_name: "Lily")
lily.contacts << [contact_guillaume, contact_sunny]
guillaume.contacts << [contact_lily, contact_richards]
sakura1_students[0].contacts << [contact_guillaume, contact_lily]


# Siblings
sib1 = Siblinghood.create
sib1.students << sakura1_students[1..2]


# Allergies
Allergy.create([{food: "Peanuts"}, {food: "Strawberries"}, {food: "Fish"}, {food: "Egg"}])

akkun.allergies << Allergy.all
sakura1_students[0].allergies << Allergy.all[0,2]


#Historic
momo = Student.fourth
momo.historics << Historic.create([ {school_name: "primaire", group_name: "CP",        start_date: 11.years.ago, end_date: 10.years.ago},
                                    {school_name: "primaire", group_name: "CE1",       start_date: 10.years.ago, end_date: 9.years.ago},
                                    {school_name: "primaire", group_name: "CM1",       start_date: 8.years.ago,  end_date: 7.years.ago},
                                    {school_name: "primaire", group_name: "CM2",       start_date: 7.years.ago,  end_date: 6.years.ago},
                                    {school_name: "collège",  group_name: "6eme",      start_date: 6.years.ago,  end_date: 5.years.ago},
                                    {school_name: "collège",  group_name: "3eme",      start_date: 3.years.ago,  end_date: 2.years.ago},
                                    {school_name: "lycée",    group_name: "2nde",      start_date: 2.years.ago,  end_date: 1.year.ago + 1.week},
                                    {school_name: "lycée",    group_name: "Terminale", start_date: 1.week.ago} 
                                    ])
kairen = Student.first
kairen.historics << Historic.create([ {school_name: "primaire", group_name: "CP",        start_date: 11.years.ago, end_date: 10.years.ago},
                                      {school_name: "lycée",    group_name: "2nde",      start_date: 2.years.ago,  end_date: 1.year.ago + 1.week},
                                      {school_name: "lycée",    group_name: "Terminale", start_date: 1.week.ago} 
                                      ])
