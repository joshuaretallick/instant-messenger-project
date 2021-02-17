# Instant Messenger style app, tech test for Build Circle

An messageboard style app where Users can create their own chat boards and then people can comment live via PubNub (aka no page refresh required)

Original outline at bottom of README documentation

# API credentials
Hidden, please use this article for info about access

https://medium.com/@jonathanmines/hiding-your-secrets-in-rails-5-using-credentials-e37174eede99

# To Run
• Clone Repo to your local machine
• From Command Line enter directory and then run :
- bundle install
- yarn
- rails db:migrate
- rails s (this will start the server)
• Then open localhost:3000 on your browser

# Testing
I built this app using Ruby-on-Rails.  Testing has been conducted with RSpec and Capybara, measured with SimpleCov, with an achieved coverage of -

## User Stories

```
As a user,
So I can access instant messenger,
I need to sign up with my email and password

As a user,
So I can use instant messenger,
I want to sign in to my account

As a user,
So I can communicate with my friends,
I want to be able to send them an instant message

As a user,
So I can see if my friends have seen my messages,
I want to see a 'read receipt'

As a user,
So I can keep up to date,
I want to see messages from my friends, with the newest first

As a user,
If I don't like a message I have sent,
I want the ability to edit it

As a user,
If I am embarrassed about a message I have sent,
I want to be able to delete it

As a user,
If I really enjoy a message from my friend,
I want to be able to 'like' the message
```

## Diagram
![Screenshot 2021-02-15 at 11 34 48 (2)](https://user-images.githubusercontent.com/71830424/107941628-e5b15300-6f81-11eb-95e7-d6c5d8ffbe66.png)


## Build Circle messenger using PubNub

Welcome to the Build Circle junior developer tech test. Here we will ask you to develop a prototype instant messaging app using the PubNub messaging backend.
The minimum deliverable is a zip file containing your source code and instructions on
how to start the app. Any additional designs or documentation are also welcome. Unless instructed otherwise you will have four days to build your app and bring it to an open collaboration day. You can use any technology stack you wish, the app can either be a web app or a mobile app, we recommend using technologies and tools you are familiar with as you will be assessed on the quality of your code as well as the apps functionality.

## Messaging Backend & PubNub

We do not expect you to build or deliver backend services for the instant messaging app. For this we will use a service called PubNub which offers comprehensive SDKs and services for creating this type of app. If you are unfamiliar with the publish & subscribe pattern used by PubNub please take some time to research it before starting the project. You will need to create a free account here, and can find the PubNub documentation here. If you have trouble creating a free account, please contact chris.sewell@buildcircle.co.uk for assistance.

## Messaging Frontend

For the front-end deliverable, we will assess three major areas:
• Consideration of the user experience
• Quality & readability of code • Functionality
There are a huge number of features that could be built into an instant messaging app such as emojis, gifs, read receipts and group conversations. However, you only have a limited amount of time. Take as much inspiration for features as you like form existing chat applications (or invent brand new ones) but not at the expense of code quality or usability.
On the open collaboration day, we will be pairing you with other developers to further improve your apps, more information will be given on the day.
