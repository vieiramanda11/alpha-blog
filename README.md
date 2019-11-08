# Ruby on Rails  - Girl Tech Blog

The main goal of this project is to build a complete blog application using:

* Ruby on Rails 6.0.0
* Bootstrap-Sass 3.4.1

## Live Version

[Heroku](https://girl-tech-blog.herokuapp.com/)

## Features

* Users
  * Sign-up / login / logout
  * Show profile page with user's articles
  * Create, update and delete articles
  * Has many articles

* Articles 
  * Create, update and delete from owner and administrator
  * Belongs to a user

* Categories
  * Create and update only from administrator
  * Has many articles

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```
Run the test suite to verify that everything is working correctly:

```
$ rspec
```
If the test passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[The Complete Ruby on Rails Developer Course](https://www.udemy.com/course/the-complete-ruby-on-rails-developer-course/).
