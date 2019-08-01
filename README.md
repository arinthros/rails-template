# Rails Template

Rails template for new applications. Based on [Jumpstart](https://github.com/excid3/jumpstart).

**Note:** Requires Rails 5.2 or higher

## Getting Started

#### Requirements

You'll need the following installed to run the template successfully:

* Ruby 2.5 or higher
* bundler - `gem install bundler`
* rails - `gem install rails`
* Yarn - `brew install yarn` or [Install Yarn](https://yarnpkg.com/en/docs/install)
* Foreman (optional) - `gem install foreman` - helps run all your
  processes in development

#### Creating a new app

```bash
rails new myapp -d postgresql -m https://raw.githubusercontent.com/excid3/jumpstart/master/template.rb
```

Or if you have downloaded this repo, you can reference template.rb locally:

```bash
rails new myapp -d postgresql -m template.rb
```

To run your app, use `foreman start`.

This will run `Procfile.dev` via `foreman start -f Procfile.dev` as configured by the `.foreman` file and will launch the development processes `rails server`, `sidekiq`, and `webpack-dev-server` processes. You can also run them in separate terminals manually if you prefer.

A separate `Procfile` is generated for deploying to production.


#### Creating the first user
* `rails c`
* `Person.create!(first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', password: 'password', admin: true)`

## Differences from Jumpstart
* Users are `People` | a User is a `Person`
* Account registration is disabled, use `Person.create!()` or the admin portal
* Announcements & notifications removed
* Omniauth is gone
* Sitemap is gone
* Gravatar is gone
* Mini_magick is gone
* Whenever is gone
* ActionCable not implemented for Devise