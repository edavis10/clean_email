class CleanerController < ApplicationController
  def new
    @cleaner = Cleaner.new
  end

  def create
    @cleaner = Cleaner.new(params[:cleaner])
    render :new
  end
end
