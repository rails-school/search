class Post < ActiveRecord::Base
  include PgSearch

  multisearchable :against => [:title, :body]

  # this is the way to search without the `pg_search` plugin
  # def self.search(query)
  #   where(
  #     'title ILIKE :query OR body ILIKE :query',
  #     query: "%#{query}%"
  #   )
  # end
end
