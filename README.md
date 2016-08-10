# README

//create project

```
git clone git@github.com:Natasha08/ruby.git
```

// If rvm is not installed

https://rvm.io/rvm/install

// If rvm installed & ruby 2.3.1 is installed on your machine (but not in use)

```
rvm use 2.3.1
```

// If rvm is installed, but not ruby 2.3.1

```
rvm install ruby-2.3.1
```
// Install rails

```
gem install rails  //version 5
```

```
rails --version
```

// Install dependencies(gems)
bin/rails db:migrate RAILS_ENV=development

```
bundle install
```

// Start server

```
bin/rails server
```
// Run tests

```
bundle/exec rspec
```
// Or for more descriptive output

```
bin/rspec --format doc
```

// common error and solution

#Migrations are pending.
To resolve this issue, run:

```
bin/rails db:migrate RAILS_ENV=development
```
