class SpidersController < ApplicationController

  def index
    spider = Spider.all
    render json: spider.as_json
  end

  def create
    spider = Spider.new(
      "name": params[:name],
      "age": params[:age],
      "arch_nemesis": params[:arch_nemesis]
    )
    spider.save
    render json: spider.as_json
  end

  def show
    spider = Spider.find_by(id: params[:id])
    render json: spider.as_json
  end

  def update
    spider = Spider.find_by(id: params[:id])
    spider.name = params[:name] || spider.name
    spider.age = params[:age] || spider.age
    spider.arch_nemesis = params[:arch_nemesis] || spider.arch_nemesis
    spider.save
    render json: spider.as_json
  end

  def destroy
    spider = Spider.find_by(id: params[:id])
    spider.delete
    render json: {message: "entry deleted"}
  end




end
