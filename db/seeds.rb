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

10.times do
  user = User.create(
    username: Faker::Internet.username,
    password: Faker::Internet.password,
    email: Faker::Internet.email
  )
end
puts "Creating members"
member1 = ProjectMember.create(name: 'Faith kilel', email: 'faith.kilel@gmail.com', user_id: 1, project_id: 1)
member2 = ProjectMember.create(name: 'Jane akello', email: 'jane.akello@gmail.com', user_id: 2, project_id: 2)
member3 = ProjectMember.create(name: 'Davis olunga', email: 'davis.olunga@gmail.com', user_id:3, project_id: 3)
member4 = ProjectMember.create(name: 'Brian mutai', email: 'brian.mutai@gmail.com', user_id:4, project_id: 4)
member5 = ProjectMember.create(name: 'Mark obiero', email: 'mark obiero@gmail.com', user_id:5, project_id: 5)
#project.create(name: 'AMP' title: 'Azure management project', description: 'Azure plan for the year')

puts "Creating Clients"
Client.create(name: "Jeliza")
Client.create(name: "Jetza")
Client.create(name: "Ziza")

puts "Creating Services"
Service.create(name: " Haircuts & Styling",
description: " Cutting hair using basic and advanced techniques, consulting customers about styles and colors and applying hair care products, like treatment oils and masks",
image:  "https://i.pinimg.com/736x/02/10/1a/02101a84bede9f360281e364a7ccaaa3.jpg",
available_slots: 30,
price:1000)

Service.create(name: "Color & Highlights",
description: "Highlights are pieces lighter than your base color, and lowlights are darker than your base color" ,
image: "https://files.myglamm.com/site-images/original/Magenta-Mix.png",
available_slots: 20,
price:1500)
Service.create(name: "Basic Facials",
description:"A basic facial is a skincare procedure involving removing dead skin cells, pore cleaning, and using a specific mask to treat common skin issues" ,
image: "https://static-bebeautiful-in.unileverservices.com/things-to-never-do-after-getting-a-facial_mobilehome.jpg",
available_slots: 15,
price:2500)
Service.create(name: "Acne Treatments",
description: "Acne medications work by reducing oil production and swelling or by treating bacterial infection",
image: "https://www.illumiamedical.com/wp-content/uploads/2023/03/post-Acne-Scar-Treatments.png" ,
available_slots: 27,
price:3600)
Service.create(name: "Pedicure",
description: "A simple treatment that includes foot soaking, foot scrubbing with a pumice stone or foot file, nail clipping, nail shaping, foot and calf massage, moisturizer and nail polishing",
image: "https://thumbs.dreamstime.com/b/pedicure-spa-salon-24495476.jpg",
available_slots: 23,
price:1700)
Service.create(name: "Manicure",
description: " A treatment for the care of the hands and fingernails",
image: "https://img.freepik.com/free-photo/manicurist-master-makes-manicure-woman-s-hands-spa-treatment-concept_186202-7769.jpg",
available_slots: 34,
price:2800)
Service.create(name: "Acrylic Nail",
description: "Acrylics are a combination of a liquid monomer and a powder polymer that form a paste which is bonded to the natural nail",
image:  "https://www.tikli.in/wp-content/uploads/2022/05/Acrylic-Nail.jpg",
available_slots: 25,
price:3000)
Service.create(name: "Swedish Massage",
description:  "This type of massage involves actions like percussion, kneading, vibration, tapping and rolling. Massage oil or lotion is used to protect the skin from friction.",
image: "https://goodspaguide.co.uk/images/uploads/Stock/Features/balinese-massage.jpg",
available_slots: 13,
price:1800)
Service.create(name: "Chair Massage",
description: "Chair massage is a form of massage therapy that is performed while the client is fully clothed and seated upright.",
image: "https://thumbs.dreamstime.com/b/foot-massage-close-up-female-hands-doing-51789230.jpg",
available_slots: 18,
price:3000)
Service.create(name: "Eye Rejuvenating Treatment",
description:  "The most common methods to reduce heavy, drooping brows and upper lids are Thermage, botox, lasers, or surgery",
image: "https://www.ozmedica.com.au/wp-content/uploads/2019/12/image2.jpg",
available_slots: 21,
price:2200)
Service.create(name: "Eyelash Perm",
description: "Eyebrow and eyelash tinting is a beauty procedure where semi-permanent dye is painted onto your eyebrows or eyelashes",
image: "https://www.cheshirelasers.co.uk/wp-content/uploads/2019/05/shutterstock_169734308-2-1024x1024.jpg",
available_slots:27,
price:2500)
Service.create(name: "Eyelash Extension",
description: "Eyelash extensions are a cosmetic enhancement that involves attaching synthetic or natural hair fibers to the natural eyelashes to create a fuller, more dramatic look",
image: "https://st.depositphotos.com/1441511/4328/i/950/depositphotos_43288021-stock-photo-woman-eye-with-long-eyelashes.jpg",
available_slots: 34,
price:1500)
Service.create(name: " Eyebrow Shaping",
description: "Brow shaping involves waxing and tweezing along your brow's natural lines to ensure a perfect contour.",
image: "https://www.belmorecentre.co.uk/wp-content/uploads/2018/03/Eyebrow-Shaping.jpg",
available_slots: 20,
price:500)
Service.create(name: "Eye and Lip  Contour Treatment",
description: "Reduces the appearance of wrinkles around the eyes and lip. Reduces roughness, smoothing and improving skin texture. Improves visible skin firmness. Plumps skin so wrinkle depth appears decreased.",
image: "https://cdn.shopify.com/s/files/1/0604/8779/4932/products/beautyfirstspa-eye-lip-treatment-36237169754356.jpg",
available_slots: 28,
price:1300)

puts "Creating Beauticians"
Beautician.create(name: "Heyzel")
Beautician.create(name: "Shakira")
Beautician.create(name: "Dezmine")
Beautician.create(name: "Fabby")
Beautician.create(name: "Jasmine")


puts "done seeding"