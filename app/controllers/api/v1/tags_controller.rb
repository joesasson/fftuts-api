module Api::V1
  class TagsController < ApplicationController
    before_action :set_tag, only: [:show , :update, :destroy]

    def index
      @tags = Tag.all
      json_response(@tags)
    end

    def show
      json_response(@tag)
    end

    def create
      @tag = Tag.create!(tag_params)
      json_response(@tag, :created)
    end

    def update
      @tag.update(tag_params)
      head :no_content
    end

    def destroy
      @tag.destroy
      head :no_content
    end

    private

    def set_tag
      @tag = Tag.find(params[:id])
    end

    def tag_params
      params.permit(:name)
    end
  end
end
