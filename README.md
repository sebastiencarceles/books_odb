# README

This is a simple example project, to illustrate the online course Learn Ruby on Rails QUICKLY (currently available only in french: [Apprendre Ruby on Rails RAPIDEMENT](https://TODO/link) on Udemy).

There is one branch per chapter of the online course. So if you want the most advanced version of the project, check out the last branch.

## Ruby version
2.5.0

## Rails version

5.2.0

## Prerequisites

You will need to install PostgreSQL. For example, for Ubuntu:

```shell
sudo apt-get update
sudo apt-get install libpq-dev postgresql postgresql-contrib
```

## Configuration

Perform a `bin/bundle install` to install every needed gem.

## Database

Create the database with `bin/rails db:setup`.

## Run the test suite

Run `bin/rspec`.

## Run the app

Run `bin/rails server`.
