
jinny = User.create(provider: 'twitter', uid: 'usr1', username: 'Atomic_man', email: 'me@me.com', avatar_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvjTAhX2IyZyWMnXc-rh8R0p_Evr8qE8NZvn4ZPStxh_-lGL3o')
ginny = User.create(provider: 'twitter', uid: 'usr2', username: 'Sexy98', email: 'me1@me.com', avatar_url: 'http://pickaface.net/includes/themes/clean/img/slide4.png')
chinny = User.create(provider: 'twitter', uid: 'usr3', username: 'bad_boy', email: 'me2@me.com', avatar_url: 'http://pickaface.net/avatar/Opi51c7dccf270e0.png')
benny = User.create(provider: 'twitter', uid: 'usrI', username: 'good_boy', email: 'meI@me.com', avatar_url: 'http://www.nouspace.net/john/commons/images/avatar.gif')


funstuffwithfriends = Meetup.create(title: 'games', description: 'play some', location: 'my house')
boringstuffwithstrangers = Meetup.create(title: 'couch some', description: 'sit around', location: 'your house')
watchpaintdry = Meetup.create(title: 'supervision', description: 'watch paint dry', location: 'her house')
hackathon = Meetup.create(title: 'fix the world', description: 'code some', location: 'Tha house')

UserMeetup.create(user: jinny, meetup: funstuffwithfriends)
UserMeetup.create(user: ginny, meetup: funstuffwithfriends)
UserMeetup.create(user: chinny, meetup: boringstuffwithstrangers)
UserMeetup.create(user: benny, meetup: hackathon)
UserMeetup.create(user: benny, meetup: watchpaintdry)
UserMeetup.create(user: jinny, meetup: hackathon)
UserMeetup.create(user: ginny, meetup: hackathon)
UserMeetup.create(user: chinny, meetup: hackathon)
UserMeetup.create(user: jinny, meetup: watchpaintdry)
UserMeetup.create(user: ginny, meetup: boringstuffwithstrangers)
