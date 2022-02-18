puts "🌱 Seeding spices..."

# Seed your database here



PostGroup.create([
    {title:"Xenogears is slightly imperfect."},
    {title:"I hate my commute."},
    {title:"Why are all these posts so negative?"},
    {title:"I will ban you if I don't like your avatar!"}

])

SiteUser.create([
{name: "ForKnife",
tag: "I am to be obeyed, or you are to be banned!",
avatar: "https://i.imgur.com/UNecbFZ.jpg",
email: "kneelbeforeme@npd.org",
password:"amodami",
banned: false,
isMod: true},

{name: "Sniveling Barrett",
tag: "I will destroy the Shinra, after I finish crying about how mean they are!",
avatar: "https://i.imgur.com/knhLQ8j.png",
email: "imscared@avalanche.org",
password:"ihatetheshinra",
banned: false,
isMod: false},

{name: "Otto von Kiss Marks",
tag: "Sexiness is me.",
avatar: "https://i.imgur.com/uoSHCLe.png",
email: "sexylady@hotness.org",
password:"hotandsexy",
banned: false,
isMod: false},

{name: "Speed Crymezz_88",
tag: "Pickup truck LIYYYYFE!!!!!",
avatar: "https://i.imgur.com/cCjHeE1.png",
email: "masteroftheroad@punk.com",
password:"outtamyway",
banned: false,
isMod: false},

{name: "Norman Rando",
tag: "No one specific",
avatar: "https://i.imgur.com/gg15Wzi.jpg",
email: "norman@rando.com",
password:"normanrando",
banned: true,
isMod: false},

{name: "Blue Cat Hater",
tag: "James Cameron should've stopped making movies after 1992!",
avatar: " ",
email: "nobluecats@gmail.com",
password:"noblue",
banned: true,
isMod: false},

{name: "Maya Amano",
tag: "Worse than forgotten, banned...",
avatar: "https://i.imgur.com/o3E34SN.jpg",
email: "amanom@aol.com",
password:"tatsuya",
banned: true,
isMod: false}
])

Post.create([

{
    site_user_id: 1,
    post_group_id: 4,
    content: "I have banned a number of users whose avatars I didn't like. I am not done yet, so if you wake up tomorrow banned, that's why. Don't bother complaining, because there is no backtalk once the mods have spoken."
},

{
    site_user_id: 6,
    post_group_id: 4,
    content: "I don't have an avatar. I win!"
},

{
    site_user_id: 1,
    post_group_id: 4,
    content: "No one escapes judgement. If you don't have an avatar, you will be banned for not having one!"
},

{
site_user_id: 2,
post_group_id: 2,
content: "Title. Every time I get in my car, I get tailgated, cut off, and have peoples' brights shone into the back of my car.\n\nWhat about you guys?"
},

{
site_user_id: 4,
post_group_id: 2,
content: "Every time I get my my pickup, I run into slow little pip squeaks like you, who keep me from going at 85 mph at all times! It's illegal to just drive over your car and kill you like you deserve, so I have to find other ways to let you know how worthless you are!"
},

{
site_user_id: 7,
post_group_id: 3,
content: "I notice that all the posts on this board are so negative and complaining. Come on guys, let's positive thinking! We'd all be so much happier if we could change our way!"
},

{
site_user_id: 2,
post_group_id: 3,
content: "I'd be happy if life would stop beating me down every day. All I ever want to do is cry in a corner. I wish there was a reason to be positive..."
},

{
site_user_id: 1,
post_group_id: 3,
content: "You know what OP? I've been having a bad day in real life where I have no control, so I'm gonna do the thing that always puts me in a positive mood, banning people here, where I have absolute control! Bye!"
},

{
site_user_id: 5,
post_group_id: 1,
content: "I just finished Xenogears, and I loved almost every second. The music was amazing, and I even liked the second disk (I'm a visual novel fanatic lol,) I just wish that Dan's house in Lahan village was a little bigger. I got stuck in the corner and took me a bit to get out."},

{
site_user_id: 1,
post_group_id: 1,
content: "How dare you speak ill of Xenogears! To speak ill of my favorite game is to speak ill of me, and no one who speaks ill of me is allowed on my board!"},

{
site_user_id: 3,
post_group_id: 1,
content: "I loved Xenogears! Fei is sooooo cute tee hee!"}

])

puts "✅ Done seeding!"