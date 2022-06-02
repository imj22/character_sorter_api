puts "🌱 Seeding spices..."

# Seed your database here
puts "creating characters..."

Character.create(name: "Gandalf the Grey", organization: "The White Council", allies: "The Fellowship of the Ring", description: "[Gandalf] wore a tall pointed blue hat, a long grey cloak, and a silver scarf. He had a long white beard and bushy eyebrows that stuck out beyond the brim of his hat.")
Character.create(name: "Obi-Wan Kenobi", organization: "The Jedi Order", allies: "Yoda", description: "Obi-Wan Kenobi was a legendary Force-sensitive human male Jedi Master who served on the Jedi High Council during the final years of the Republic Era. As a mentor, Kenobi was responsible for training two members of the Skywalker family, Anakin Skywalker and Luke Skywalker.")
Character.create(name: "Amy", organization: "Herself", allies: "Also herself", description: "Amy Dunne is one of the main characters and also the hidden main antagonist in Gone Girl. The wife of Nick Dunne, Amy disappears on their fifth wedding anniversary, leaving Nick as the suspect. However, as the plot goes on, it is discovered that Amy may not be the innocent victim that she is believed to be.")
Character.create(name: "Valka", organization: "The Bewilderbeast's Sanctuary", allies: "Cloudjumper", description: "Valka is Hiccup's long-lost mother and Stoick's wife who was abducted in a dragon attack twenty years ago. Always an advocate of peace between dragons and Vikings, Valka has since lived among dragons, learned their ways, discovered their secrets and become their fierce protector. She is strong and uncompromising, but at her core still possesses the overwhelming love of a wife and mother.")


puts "creating franchises..."

Franchise.create(title: "The Lord of the Rings")
Franchise.create(title: "Star Wars")
Franchise.create(title: "How to Train Your Dragon")

puts "creating medias..."
Media.create(release_date: 2001-12-19, director: "Peter Jackson", title: "The Fellowship of the Ring", genre: "Fantasy", franchise_id: Franchise.find_by(title: "The Lord of the Rings").id, media_type: "Book")
Media.create(release_date: 1997-05-25, director: "George Lucas", title: "A New Hope", genre: "Sci-Fi", franchise_id: Franchise.find_by(title: "Star Wars").id, media_type: "Movie")
Media.create(release_date: 2014-10-03, director: "David Fincher", title: "Gone Girl", genre: "Psychological Thriller", media_type: "Movie")
Media.create(release_date: 2014-06-13, director: "Dean DeBlois", title: "How to Train Your Dragon 2", genre: "Animation", franchise_id: Franchise.find_by(title: "How to Train Your Dragon").id, media_type: "Movie")


puts "creating images..."
Image.create(character_id: Character.find_by(name: "Gandalf the Grey").id, media_id: Media.find_by(title: "The Fellowship of the Ring").id, image_url: "https://www.lascimmiapensa.com/wp-content/uploads/2020/01/lord-of-the-rings-fellowship-of-the-ring-gandalf.jpg", alt_text: "An image of an old man with a long grey beard and wearing a wide-brimmed gray hat looks frustrated as he gazes off-camera with a pipe held in his mouth.")
Image.create(character_id: Character.find_by(name: "Obi-Wan Kenobi").id, media_id: Media.find_by(title: "A New Hope").id, image_url: "https://s3-us-west-2.amazonaws.com/prd-rteditorial/wp-content/uploads/2021/03/29140601/STAR-WARS_-EPISODE-IV-A-NEW-HOPE-Alec-Guinness-700x380.jpg", alt_text: "An image of a man with short, white hair and a beard, sun-weathered skin, white-and-brown robes, and a stable, stern disposition. He is speaking to someone off-camera.")
Image.create(character_id: Character.find_by(name: "Amy").id, media_id: Media.find_by(title: "Gone Girl").id, image_url: "https://dikotomiko.files.wordpress.com/2014/12/amy.jpg", alt_text: "An image of a pretty blonde woman stands against a wall with a unidentified bottle in her hand, smiling up at a man that is half-cut out of the frame.")
Image.create(character_id: Character.find_by(name: "Valka").id, media_id: Media.find_by(title: "How to Train Your Dragon 2").id, image_url: "https://www.dreamworks.com/images/temp/explore/vikings/valka/gallery-1.jpg", alt_text: "An image of a disguised figure standing ontop of the clouds, covered in rugged, brightly-painted bone and leather armor. On her head sits a brightly-painted animal mask, from which many spikes portrude. In the corner, a blurred image of a young man (Hiccup) looks at her in fear and wonder.")

puts "creating quotes..."
Quote.create(character_id: Character.find_by(name: "Gandalf the Grey").id, quote_content: "A wizard is never late, nor is he early. He arrives precisely when he means to.")
Quote.create(character_id: Character.find_by(name: "Gandalf the Grey").id, quote_content: "I will not say: do not weep; for not all tears are an evil.")
Quote.create(character_id: Character.find_by(name: "Obi-Wan Kenobi").id, quote_content: "I felt a great disturbance in the Force, as if millions of voices suddenly cried out in terror and were suddenly silenced. I fear something terrible has happened.")
Quote.create(character_id: Character.find_by(name: "Obi-Wan Kenobi").id, quote_content: "Use the Force, Luke.")
Quote.create(character_id: Character.find_by(name: "Amy").id, quote_content: "I forged the man of my dreams.")
Quote.create(character_id: Character.find_by(name: "Amy").id, quote_content: "We were happy pretending to be other people. We were the happiest couple we knew. And what's the point of being together if you're not the happiest?")
Quote.create(character_id: Character.find_by(name: "Amy").id, quote_content: "Nick and Amy will be gone, but then we never really existed. Nick loved a girl I was pretending to be. 'Cool girl'.")
Quote.create(character_id: Character.find_by(name: "Valka").id, quote_content: "Every dragon has its secrets, and I'll show them to you. We'll unlock every mystery, find every last species together, as mother and son. This gift we share Hiccup, it bonds us. This is who you are son, who we are.")
Quote.create(character_id: Character.find_by(name: "Valka").id, quote_content: "Oh, Cloudjumper never meant to harm me. He... must've thought I belonged here.")

puts "✅ Done seeding!"
