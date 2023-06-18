# README
A basic RoR application that exists purely for the sake of the writer playing around, learning Rails and owning a codebase to do with what he wills.

The application is a basic question and answer service. Users can ask and answer questions (currently anonymously), but there is more to come on that front.

<h3>Running locally</h3>
Ruby v3.2.0
Rails v7.0.4
PostgresQL v14

<ul>
  <li>Install Ruby, Rails and PostgresQL</li>
  <li>Run `bundle install`</li>
  <li>Create a local Postgres dbs named qna_development</li>
  <li>Run `bin/rails db:migrate`</li>
  <li>Run `bin/rails s`</li>
  <li>Navigate to localhost:3000</li>
</ul>

<h3>Testing</h3>
Testing with MiniTest is obligatory when adding new code to the repository. They are all written and run in MiniTest.

<ul>
  <li>Setup test db called `qna_test`.</li>
  <li>Run `bin/rails db:migrate RAILS_ENV=test`</li>
  <li>Run `bin/rails test test/`</li>
</ul>


