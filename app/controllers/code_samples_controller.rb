class CodeSamplesController < ApplicationController
  def show
    @code_sample = CodeSample.find(params[:id])
  end

  def new
    @code_sample = CodeSample.new
    @tab = "add"
  end

  def create
    @code_sample = CodeSample.new(params.require(:code_sample).permit(:text))
    @code_sample.save
    redirect_to root_path
  end
end
