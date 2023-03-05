puts ":seedling: Seeding spices..."
Project.destroy_all
ProjectMember.destroy_all
# Seed your database here
puts "Creating projects"
project1 = Project.create(name: 'TFC', title: 'Tehilla tea farm', description: 'seedling generation project', user_id: 10)
project2 = Project.create(name: 'CDH', title: 'cee dines hotel', description: 'fast food restaurant', user_id: 20)
project3 = Project.create(name: 'APC', title: 'Avocado plants cooporation', description: 'avocado management project', user_id: 30)
project4 = Project.create(name: 'MIC', title: 'mark miller cooporation', description: 'charity organization',user_id: 40)
project5 = Project.create(name: 'CCI', title: 'climate change inititiative', description: 'climate change an tracking',user_id: 50)

20.times do
  user = User.create(
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    email: Faker::Internet.email
  )
end
puts "Creating members"
member1 = ProjectMember.create(name: 'Faith kilel', email: 'faith.kilel@gmail.com', user_id: 1, project_id: 100)
member2 = ProjectMember.create(name: 'Jane akello', email: 'jane.akello@gmail.com', user_id: 2, project_id: 200)
member3 = ProjectMember.create(name: 'Davis olunga', email: 'davis.olunga@gmail.com', user_id:3, project_id: 300)
member4 = ProjectMember.create(name: 'Brian mutai', email: 'brian.mutai@gmail.com', user_id:4, project_id: 400)
member5 = ProjectMember.create(name: 'Mark obiero', email: 'mark obiero@gmail.com', user_id:5, project_id: 500)
#project.create(name: 'AMP' title: 'Azure management project', description: 'Azure plan for the year')

puts "done seeding"
