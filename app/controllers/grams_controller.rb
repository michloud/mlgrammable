class GramsController < ApplicationController
  def index
  end

  def new
    @gram = Gram.new{"Hello!"}
  end

  def create
    @gram = Gram.create(gram_params)
    redirect_to root_path
  end

  private

  def gram_params
    params.require(:gram).permit(:message)
  end

end
