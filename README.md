# README

This README contains steps to get the application up and running along with the details on features covered as part of the application.

Things you may want to cover:

## Prerequisites to start app in local machine
- Ruby version 3.2.2

_Note: If only a different version is available then you can choose to use rbenv to install and manage your ruby versions. Click [link1](https://andyatkinson.com/blog/2019/08/01/using-rbenv-multiple-ruby-versions) and [link2](https://stackoverflow.com/a/39238995) for instructions_

- Bundler version 2.4.14

_Note: This is the tested bundler version. If you face any bundler issues you can use this [link](https://bundler.io/blog/2019/05/14/solutions-for-cant-find-gem-bundler-with-executable-bundle.html) to fix it_

- plsql version 12.15

- docker version
_Note: Docker is used only if you want to deploy the service to a docker container_

### Database creation and schema setup for the application
Run the following commands to create and setup the database
```
rake db:setup
rake db:migrate
```

### How to run the test suite
rspec testing suite is used to test application. The following commands are used to run all tests `rspec`

to run specific tests `rspec spec/<filename>.rb:<context/test line number>`

### Configuration
This application is accessible as both a web app and via api

### Deployment instructions

* System dependencies

* Services (job queues, cache servers, search engines, etc.)

### API requests

#### SIGN IN
```
curl -X POST http://localhost:3000/api/users/sign_in -i -H "Accept: application/json" \
   -H 'Content-Type: application/json' \
   -d '{"user" : {"email":"user3@gmail.com","password":"123456"}}'
```

#### SIGN OUT
```
curl -X DELETE http://localhost:3000/api/users/sign_out -H 'Content-Type: application/json' \
  -H "Authorization: Bearer <TOKEN>"
```

#### SIGN UP
```
curl -X POST http://localhost:3000/api/users/sign_up -i -H "Accept: application/json" \
   -H 'Content-Type: application/json' \
   -d '{"user" : {"email":"user3@gmail.com","password":"123456"}}'
```

#### GET ARTICLES
```
curl http://localhost:3000/articles -H "Accept: application/json" \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer <TOKEN>"
```

#### GET ARTICLE BY ID
```
curl http://localhost:3000/articles/32 -H "Accept: application/json" \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer <TOKEN>"
```

### My notes
- Useful doc on devise authentication
[devise auth rails 7 api auth](https://www.thespian.hr/blog/devise-authentication-for-the-rails-7-api-application)

[JWT auth](https://sdrmike.medium.com/rails-7-api-only-app-with-devise-and-jwt-for-authentication-1397211fb97c)

[devise helper to find user auth](https://stackoverflow.com/questions/3263291/how-can-i-simply-verify-that-a-username-and-password-are-correct-with-devise-and)

[respond html and json post signin](https://stackoverflow.com/questions/32059117/making-devise-respond-to-both-html-and-json)

[jwt token login](https://medium.com/ruby-daily/a-devise-jwt-tutorial-for-authenticating-users-in-ruby-on-rails-ca214898318e)

[different api for web and api login](https://devise-token-auth.gitbook.io/devise-token-auth/faq#can-i-use-this-gem-alongside-standard-devise)

[user roles1](https://www.youtube.com/watch?v=FdCsBwI7raY)

[user roles2](https://stackoverflow.com/questions/58526613/adding-role-selection-to-devise-sign-up-form-when-role-name-needs-to-match-role)

[customise devise view](https://stackoverflow.com/questions/6646845/customizing-devise-views-in-rails)

[Heroku1](https://www.codecademy.com/article/deploy-rails-to-heroku)

[Heroku2]()


- sqlite to plsql
https://medium.com/geekculture/ruby-on-rails-switch-from-sqlite3-to-postgres-590009645c25
Command to create new rails app with psql settings - rails new [application name] -d postgresql
make the needed changes in database.yml file

- To check all available route in app post starting the app
bin/rails routes

- Make request to net/http
[Make curl req](https://stackoverflow.com/questions/56754879/ruby-putting-token-key-in-requests)

- Set cred in rails
```EDITOR="code --wait" bin/rails credentials:edit```

- Fix cors issue with auth not passed during login, signup

- ruby on rails userRecord querying
[Query](https://api.rubyonrails.org/v7.0.6/classes/ActiveRecord/FinderMethods.html#method-i-find)

- Ruby on rails https://guides.rubyonrails.org/getting_started.html
Getting started Section 7.5 (delete not done)

- Rpec https://www.lambdatest.com/learning-hub/rspec-ruby
https://stackoverflow.com/questions/7135377/problem-with-rspec-test-undefined-method-post
https://medium.com/@qualitytechgirl/ruby-on-rails-testing-with-rspec-requests-92b09c8057a4


- Rails Docker + postgres file references
https://github.com/dreikanter/feeder/pull/263