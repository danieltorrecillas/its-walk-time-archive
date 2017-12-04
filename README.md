# THIS REPOSITORY IS NO LONGER ACTIVE
------------------------------------------
## Giphy + Twilio mashup for sending .gif's via MMS

## Getting started
First, you'll need a [free Giphy API key](https://developers.giphy.com/dashboard/?create=true).
You'll need to create a free account, if you don't already have one.

Second, you'll need a [free Twilio account](https://www.twilio.com/sms) with a phone number.

To get started with the app, clone the repo and then install the needed gems:
```
$ bundle install
```

Next, migrate the database:
```
$ rails db:migrate
```

This is deployed to a [free Heroku instance](https://www.heroku.com/free) with the
free [Heroko Postgress Add-on](https://elements.heroku.com/addons/heroku-postgresql).
