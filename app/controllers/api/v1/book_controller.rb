module Api
  module V1

class BookController < ApplicationController
  def index
    render json: Book.all
  end   

  #to create record
  def create
    book =Book.new(book_params)
    if book.save
      render json: book, status: :created
     
     else
      render json: book.errors, status: :unproccessable_entity

      end
       
     end
#to remove record
     def destroy 
      #destroy! mean if the respone correct return true, otherwise return error
      Book.find(params[:id]).destroy!
      #error handling
      head :no_content
     end
# the params from request
     def book_params
      params.require(:book).permit(:title,:author)
      end
end
end
end