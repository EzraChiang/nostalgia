Decade.create(name: "1990's")
Decade.create(name: "2000's")
Decade.create(name: "2010's")

CategoryDecade.create(category_id: 1, decade_id: 1)
CategoryDecade.create(category_id: 2, decade_id: 1)
CategoryDecade.create(category_id: 3, decade_id: 1)
CategoryDecade.create(category_id: 4, decade_id: 1)
CategoryDecade.create(category_id: 5, decade_id: 1)

Category.create(name: "Cartoons")
Category.create(name: "Sports")
Category.create(name: "Video Games")
Category.create(name: "Music")
Category.create(name: "TV/MOVIES")
CategoryMemory.create(category_id: 3, memory_id: 1)
Memory.create(picture: "http://i.stack.imgur.com/B7Soz.gif", video: "https://www.youtube.com/embed/ffPmcvwn0qE?autoplay=1", text: "Megaman is the greatest of all time.")

