# README
A basic RoR application that exists purely for the sake of the writer playing around, learning Rails and owning a codebase to do with what he wills.

The application is a basic question and answer service. Users can ask and answer questions (currently anonymously), but there is more to come on that front.

### Running locally
- Ruby v3.2.0
- Rails v7.0.4
- PostgresQL v14

To get running, follow the steps below.
-  Install Ruby, Rails and PostgresQL
-  Run `bundle install`
-  Create a local Postgres dbs named `qna_development`
-  Run `bin/rails db:migrate`
-  Run `bin/rails s`
-  Navigate to localhost:3000

### Testing
Testing with MiniTest is obligatory when adding new code to the repository. They are all written and run in MiniTest.

To run the test suite, follow the steps below.
-  Setup test db called `qna_test`.
-  Run `bin/rails db:migrate RAILS_ENV=test`
-  Run `bin/rails test test/`



