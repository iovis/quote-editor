set dotenv-load := true

default: init

# lists available tasks
@list:
    just --list

# init project
init:
    git pull
    bundle install

# start the server
dev:
    bin/dev

# open the project in the browser
open:
    open "http://localhost:3000/" -a "Google Chrome Canary"

# start a console
console:
    bin/rails console

# Open the DB with pgcli
db:
    litecli storage/development.sqlite3

# run tests
test:
    bin/rails test
