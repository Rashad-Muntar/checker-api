# Day activity tracker

> This a rails api for a tracker which feeds the frontend of a tracker application built with react and redux. The api allows users to signup and login. The signed up user gets an automatacally generated categories which is associated to the user's account and it is associated to activities created by the use. Built with Ruby on Rails 6.

## Built With
- Ruby on Rails MVC Framework.
- Postgresql
- RSpec

## Getting Started

To set up a local version of this project, a collection of steps have been put together to help guide you from installations to usage. Simply follow the guide below and you'll be up and running in no time.

### Set up

- Install [git](https://git-scm.com/downloads)
- Install [the Ruby programming language](https://ruby-doc.org/downloads/), if you haven't already.
- Install [the Ruby on Rails Framework](https://guides.rubyonrails.org/getting_started.html), if you haven't already.
- Open Terminal
- Navigate to the preferred location/folder you want the app on your local machine. Use `cd <file-path>` for this.
- Run `git clone https://github.com/Rashad-Muntar/checker-api.git` to download the source file.
- Now that you have a local copy of the project, navigate to the root of the project folder from your terminal.
- Run `yarn` to install missing dependencies
- Run `bundle install` to install all dependencies in the Gemfile file.
- Install postgres to use database and set up authentication
- Run `rails db:migrate` to generate database tables.
- Run `rails server` to get a server running on your local machine.

## Endpoints
_Base URL_: `https://square-api-rr.herokuapp.com`

|Description|Method|Endpoint|
|:---|:---|:---|
|Sign up to create an account|POST|`api/signup`|
|Log in to created account|POST|`/login`|
|Log out if logged in|DELETE|`/logout`|
|Create a category|POST|`api/user/:user_id/categories`|
|Fetch Categories list |GET|`api/user/:user_id/categories`|
|Fetch Category details |GET|`api/user/:user_id/categories/:id`|
|Update Category to |PUT|`/api/users/:user_id/categories/:id`|
|Create Activity |POST|`/api/users/:user_id/categories/:category_id/activities`|
|Update Activity to |PUT|`/api/users/:user_id/categories/:category_id/activities/:id`|


## Expected Response Status Codes

|Class|Symbol|HTTP status code|
|:---|:---|:---|
|Success|:ok|200|
|Success|:created|201|
|Client Error|:bad_request|400|
|Client Error|:unauthorized|401|
|Server Error|:unprocessable_entity|500|


### Other Dependencies

- Rubocop: This is a tool for checking code quality and ensuring they meet the requirements. Don’t worry about this if you’re not a developer. Microverse provides a wonderful setup guide for [rubocop here](https://github.com/microverseinc/linters-config/tree/master/ruby).

### Gems Used
- Cors
- PSG
- fast_jsonapi


### Usage

At this point, you now have everything you need to properly run the program (source code, ruby, rails, rubocop). If not, refer back to the setup section of this documentation.

##Live version
- Application was deployed to heroku 
- https://gentle-taiga-27732.herokuapp.com/

## Authors

👤 **Rashad Muntar**

- GitHub: [@Rashad-Muntar](https://github.com/Rashad-Muntar)
- Twitter - [@RashadToure](https://twitter.com/RashadToure)
- LinkedIn: [Rashad Muntar](https://www.linkedin.com/in/rashad-muntar/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Rashad-Muntar/checker-api/issues).


## Acknowledgments

- [Micoverse](https://microverse.org)


## 📝 License

This project is [MIT](https://github.com/Rashad-Muntar/checker-api/blob/friendshipv2/LICENSE) licensed.
