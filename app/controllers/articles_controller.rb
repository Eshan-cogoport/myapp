class ArticlesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def read
        render json: Article.all
    end
    def index
        if params[:id]
            articles=Article.find(params[:id])
        elsif params[:category]
            articles=Article.where(category: params[:category])
        elsif params[:author]
            articles=Article.where(author: params[:author])
        elsif params[:title]
            articles=Article.where("title LIKE ?", "%#{params[:title]}%")
        elsif params[:date]
            articles=Article.where("date BETWEEN ? AND ?",params[:date].split(",")[0],params[:date].split(",")[1])
            # articles=Article.where(:date=> (params[:date[0]]..params[:date[1]]))
        elsif
            articles=Article.all
        end
        render json: articles
    end

    def create
        articles=Article.create(title: params[:title],date: params[:date],category: params[:category],body: params[:body],author: params[:author])
        render json: articles
    end
    def update
        articles=Article.find(params[:id])
        articles.update(title: params[:title],author: params[:author],date: params[:date],category: params[:category],body: params[:body])
        render json: articles
    end

    def delete
        Article.destroy(params[:id])
    end
end