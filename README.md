![](https://img.shields.io/badge/Microverse-blueviolet)

# Private-events

> Simple page to create events, where other users can attend.

![screenshot](./app/assets/images/app_screenshot.png)

Site similar to a private [Eventbrite](https://www.eventbrite.com/) which allows users to create events and then manage user signups.

## Built With

- Ruby
- Ruby on Rails
- SQLite3

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby
- Ruby on Rails
- SQLite3
- yarn
- Node.js

### Setup

- Clone the project with `git clone https://github.com/sjcco/private-events`.
- Run `bundle install` to obtain all dependecies required by the app.
- Run `rails webpacker:install` to install the configured webpack file.
- Run `rails db:migrate` to create the tables whithin the db.
- Run this command to populate the db with some data `rails db:seed`.


### Usage

- Start the server in a new terminal by navigating to the project folder and using `bin/rails server`
- Visit [this page](http://localhost:3000/) to see the landing page with the upcoming and past events.
- To navigate to a certain event you first need to sign in or sign up.

## Authors

👤 **Juan Carlos Campos**

- GitHub: [@sjcco](https://github.com/sjcco)
- Twitter: [@CarlosCamposO](https://twitter.com/CarlosCamposO)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/sjcco/private-events/issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse team
- The Odin Project

## 📝 License

This project is [MIT](lic.url) licensed.
