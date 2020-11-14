class Api::V1::TodoController < ApplicationController
  require "date"

  # todo全取得
  def index
    @todos = Post.all

    render json: { status: 200, data: @todos }
  end

  # todo作成
  def create
    post = Post.new(
      content: params[:content],
      limit_date: params[:limit_date]
    )

    if post.save
      render json: { status: 200 }
    else
      render json: { status: 500 }
    end
  end
end
