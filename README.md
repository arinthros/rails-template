# Rails Template

Rails template for new applications. Based on [Jumpstart](https://github.com/excid3/jumpstart).\
**Note:** Requires Rails 6.0.0.rc2 or higher

## Changes to Jumpstart

* Users are `People` | a User is a `Person`
* Account registration is disabled, use `Person.create!()` or the admin portal
* Announcements & notifications removed
* Omniauth removed
* Sitemap removed
* Gravatar removed
* Mini_magick removed
* Whenever removed
* ActionCable Devise tweaks removed

## Getting Started

#### Requirements

You'll need the following installed to run the template successfully:

* Ruby 2.5 or higher
* Bundler - `gem install bundler`
* Rails 6.0.0.rc2 or higher - `gem install rails` or `gem install rails --pre`\
* **if using rbenv, run** `rbenv rehash` **after installing rails**
* Yarn - `brew install yarn` or [Install Yarn](https://yarnpkg.com/en/docs/install)
* Foreman (optional) - `gem install foreman` - helps run all your
  processes in development

#### Creating a new app

```bash
rails new myapp -d postgresql -m https://raw.githubusercontent.com/arinthros/rails-template/master/template.rb
```

Or if you have downloaded this repo, you can reference template.rb locally:

```bash
rails new myapp -d postgresql -m ~/path/to/template.rb
```

To run your app, use `foreman start`.

This will run `Procfile.dev` via `foreman start -f Procfile.dev` as configured by the `.foreman` file and will launch the development processes `rails server`, `sidekiq`, and `webpack-dev-server` processes. You can also run them in separate terminals manually if you prefer.

A separate `Procfile` is generated for deploying to production.


#### Creating the first admin
```bash
rails c
Person.create!(first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', password: 'password', admin: true)
```