# Migration file so as to create a database
class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t| # create_table method is used to Create a table named -> articles(having title, body as 2 fields)
      t.string :title # t is a block variable here
      t.text :body    # t is a block variable here
      t.timestamps  # timestamps method will automatically create 2 more fields as created_at and updated_at in this articles table
    end
  end
end

# Conclusion: Finally you've a table articles having fields as (title, body, created_at, updated_at)

=begin
Some Questions:- 

1) Is there a Base class for ApplicationController < ActionController::Base (maybe ActionController is a module here)
   and also for ApplicationRecord < ActiveRecord::Base 

   Ans:- Yes the Base class gets inherited




2) How model file article.rb fetching data through the migration file create_articles.rb 
   maybe bcz Article < ApplicationRecord < ActiveRecord::Base) also, (CreateArticles < ActiveRecord::Migration[7.0])

   Ans:- Both model and migration files are using the ORM ActiveRecord module which does the job of validations(if any), 
   fetching of data from migration, etc




3) why written Migration[7.0]:- 
  
   Ans:- Its a version of the Migration class




4) How actutal flow goes on?? 
   Do we've to -> create migration firstly and then -> model -> router -> action controller -> view (at last for rendering the data)

   Ans:- Yes, you can do this acc. to the situation

=end