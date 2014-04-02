class SearchesController < ApplicationController
  def index
    @title = 'Search results'
    @posts = PgSearch.
      multisearch(params[:query]).
      map(&:searchable)

    render 'posts/index'
  end

  def create
    if Post.create(params)
      render text: 'success'
    else
      render root_path
    end
  end
end
