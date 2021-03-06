# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
Twitter collects data for:
 - search queries
 - my tweets
 - who I'm following
 - my followers
 - my lists
 - notifications 
 - basic account information 
 	- (about me description, location, interests) 
 - profile settings 
 	- (e-mail, username, timezone, security, mobile, design, etc)
 - profile customization 
 	- (backgrounds, profile pictures, widgets)
 - trends
 - who i should follow
 - direct messages



## Release 1: Tweet Fields
The fields Twitter uses to display a tweet include location, a photo, and a character limit. You are also allowed to enter a tweet at somebody using the @ symbol.


## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
because the tweets are linked to the user. They are connected by a user id.

## Release 3: Schema Design
![Schema Design](https://raw.githubusercontent.com/mendoncakr/phase_0_unit_3/master/week_7/imgs/TwitterScreen.png)

## Release 4: SQL Statements
all the tweets for a certain user id:
```
SELECT tweets FROM users
WHERE userid = '<user_id_here>'
```

the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you):
```
SELECT tweets FROM users
WHERE created_at >= "5/14/2014"
```

all the tweets associated with a given user's twitter handle:
```
SELECT tweets FROM users
WHERE user_id = 'enter_username_here'
```

the twitter handle associated with a given tweet id:
```
SELECT user_id FROM users
WHERE tweet_id = 'enter_tweetid_here'
```

## Release 5: Reflection
I thought this was a great challenge using a real world example to figure out database schema design and how to query certain fields. I do wish we had a platform to actually perform these queries so that we can see if they are correct or not. Plus, having said platform would allow us to test out our knowledge in a more hands on approach. O