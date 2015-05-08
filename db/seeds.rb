require './config/environment'
new_character = Character.new(:name => "Forte", :gender => "Female", :origin => "Selphia", :birthday => "Summer 22", :bio => "She is a Dragon Knight who protects Selphia and is Kiel's older sister. She inherited the position as Selphia's knight from her father, the previous town knight and the person who taught her everything about swordsmanship. Forte wakes up earlier than other townsfolk in order to complete her daily morning patrol of the town and to train. She thinks her position as a Dragon Knight to be the guard to Ventuswill just a job which is 'on paper,' as her ability is nothing compared to the powerful Ventuswill.", :nickname => "", :quote =>"How did you know I find egg dishes to be very tasty? You have my thanks!", :image => "http://vignette3.wikia.nocookie.net/harvestmoonrunefactory/images/5/5a/Fort%C3%A9.png/revision/latest?cb=20120703061221")
new_character.save

new_character = Character.new(
  :name => "Aizu Wallenstein",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => "Aizu Wallenstein, also known as the Sword Princess, is a First-Class Adventurer and a key member of the Loki Familia. Among the small fraction of First-Class Adventurers, she is considered one of the strongest",
  :nickname => "Sword Princess",
  :quote => "",
  :image => "http://41.media.tumblr.com/c7200571d59d94ac7bbda75b691d2505/tumblr_nmsvmogH2W1rin8ioo1_500.jpg"
)
new_character.save

new_character = Character.new(
  :name => "Freya",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => "Freya is a Goddess of Beauty.",
  :nickname => "",
  :quote => "",
  :image => "http://vignette4.wikia.nocookie.net/sonako/images/8/8c/DanMachi_Vol_1_119.jpg/revision/latest?cb=20140828045945"
)
new_character.save

new_character = Character.new(
  :name => "Bell Cranel",
  :gender => "Male",
  :origin => "",
  :birthday => "", 
  :bio => "Bell Cranel is the main male protagonist of DanMachi. He is an aspiring adventurer in the goddess Hestia's familia",
  :nickname => "Little Rookie",
  :quote => "",
  :image => "http://img3.wikia.nocookie.net/__cb20140723065032/dungeon-ni-deai-o-motomeru/images/b/ba/Bell.jpg"
)
new_character.save

new_character = Character.new(
  :name => "Guts",
  :gender => "Male",
  :origin => "",
  :birthday => "", 
  :bio => "Guts is the main protagonist of Berserk. He was the former raid unit leader of a mercenary group known as the Band of the Hawk.",
  :nickname => "Black Swordsman",
  :quote => "",
  :image => "http://static.comicvine.com/uploads/scale_medium/6/65905/1236261-guts27.jpg"
)
new_character.save

new_character = Character.new(
  :name => "Hestia",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => "Hestia is a Goddess and head of Hestia's Familia; a relatively new familia with only one member.",
  :nickname => "",
  :quote => "",
  :image => "http://i.imgur.com/AzSjtDX.jpg"
)
new_character.save

new_character = Character.new(
  :name => "Karen Kujo",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => "Karen Kujō (九条 カレン Kujyō Karen?) is one of the main character on Kin-iro Mosaic series.",
  :nickname => "",
  :quote => "",
  :image => "http://31.media.tumblr.com/685d0424b8c81d28bb148b370e89f927/tumblr_mqd1b7zVLO1qelac3o1_500.gif"
)
new_character.save

new_character = Character.new(
  :name => "Lucy Heartfilia",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => "Lucy Heartfilia is a Celestial Spirit Mage, a former member of the Fairy Tail Guild and a member of the independent Team Natsu. She is the main female protagonist of the series.",
  :nickname => "",
  :quote => "What I want isn't money, pretty dresses, or fortune forced upon me. I'm not Lucky Lucy of Heartfilia anymore! Fairy Tail recognizes me as just Lucy and my other family, it's a far more loving family than this!",
  :image => "http://mewarnai.us/images/354734-fairy-tail-lucy.png"
)
new_character.save

new_character = Character.new(
  :name => "Marie",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => "Marie is an assistant of the Velvet Room. She will help the Protagonist with creating his player card for the game's online features and is responsible for the player's skill cards. Befriending Marie will help the Protagonist realize the potential of the Aeon Arcana, eventually enabling him to summon the Persona Kaguya. She first appears in the opening sequence when the protagonist leaves the station with the Dojimas. Questioning her own existence in life and without memories, she mysteriously ends up being an assistant for the Velvet Room where the protagonist will help Marie discover her true self. Marie will be present during the whole game, with her story arc eventually culminating in rescuing her from her own dungeon.",
  :nickname => "The Antisocial Poet of the Hollow Forest",
  :quote => "You're going to make new memories with me, right?",
  :image => "http://i.imgur.com/SKixi.png"
)
new_character.save

new_character = Character.new(
  :name => "Noel Vermillion",
  :gender => "Female",
  :origin => "",
  :birthday => "December 25, 2194", 
  :bio => "",
  :nickname => "Successor of the Azure, Eye of the Azure",
  :quote => "Noel Vermillion is a former lieutenant of the Novus Orbis Librarium who was assigned to return the AWOL Jin Kisaragi to his post. She is a playable character and the main heroine in the BlazBlue series.",
  :image => "http://www.fightersgeneration.com/np2/char1/xtra/bb-noel-vermillion.jpg"
)
new_character.save

new_character = Character.new(
  :name => "Rei Ayanami",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => "At the beginning of the series, Rei is an enigmatic figure whose unusual behavior confounds her peers. As the series progresses, her personality evolves and she becomes more involved with the people around her, particularly her classmate and fellow Eva pilot Shinji Ikari. She is revealed to be a key factor in the events that conclude the storyline. Her role in this conclusion is not made clear in the TV series, but is one of the principal plot points of The End of Evangelion.",
  :nickname => "",
  :quote => "Man fears the darkness, and so he scrapes away at the edges of it with fire.",
  :image => "http://vignette3.wikia.nocookie.net/sheezyrp/images/e/e3/Rei_ayanami.jpg/revision/latest?cb=20100805024049"
)
new_character.save

new_character = Character.new(
  :name => "Renge Miyauchi",
  :gender => "Female",
  :origin => "",
  :birthday => "December 3", 
  :bio => "Renge is a first grade student. She likes to greet her friends by saying 'Nyanpasū' (Meow-ning), a nonsensical phrase. While she generally acts her age, she is often quite perceptive. She adds a superfluous 'n' at the end of sentences as a verbal tic. She is Hikage and Kazuho's younger sister.",
  :nickname => "",
  :quote => "",
  :image => "http://i.imgur.com/39mqeJI.png"
)
new_character.save

new_character = Character.new(
  :name => "Shiba Tatsuya",
  :gender => "Male",
  :origin => "",
  :birthday => "April 24th", 
  :bio => "Shiba Tatsuya (司波 達也) is the main protagonist of The Irregular in Magic High School. He enrolled at the National Magic University Affiliated First High School in April AD2095 with his younger sister, Miyuki (深雪). He was accepted as one of the students to be placed in the Course 2 curriculum, marking the start of the series' events. In his second year, he transferred into the newly made Magic Engineering Course.",
  :nickname => "Taurus Silver",
  :quote => "",
  :image => "http://static.zerochan.net/Shiba.Tatsuya.full.1710908.jpg"
)
new_character.save

new_character = Character.new(
  :name => "Shoyo Hinata",
  :gender => "Male",
  :origin => "",
  :birthday => "June 21", 
  :bio => "Shōyō Hinata is the main protagonist of the Haikyuu!! series written and illustrated by Haruichi Furudate. He is a first year student in Class 1 at Kurasuno High School that joined the volleyball team as a middle blocker. Hinata's dream is to become strong enough to spike past tall blockers just like the 'Small Giant' once did. Like the Small Giant, he specializes in jumping to compensate for his lack of height.",
  :nickname => "The Strongest Decoy, Number One Shortie",
  :quote => "",
  :image => "https://s-media-cache-ak0.pinimg.com/236x/7f/b0/f1/7fb0f170bcc9877fd976341c57e461e2.jpg"
)
new_character.save

new_character = Character.new(
  :name => "Takane Enomoto",
  :gender => "Female",
  :origin => "",
  :birthday => "", 
  :bio => '"Ene" (エネ Ene) is the sixth member of the Mekakushi Dan. She was once human, known as Takane Enomoto (榎本 貴音 Enomoto Takane), but was later turned into a computer program.',
  :nickname => "Ene",
  :quote => "",
  :image => "http://p2.i.ntere.st/3960c2246f0bc550b58237547b931e6e_480.jpg"
)
new_character.save