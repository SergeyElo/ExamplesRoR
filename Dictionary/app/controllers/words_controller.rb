class WordsController < ApplicationController
 
 def create
   @dict = Dict.find(params[:dict_id])
   @word = @dict.words.create(word_params)
   redirect_to dict_path(@dict)
 end
  
 def destroy
   @dict = Dict.find(params[:dict_id])
   @word = @dict.words.find(params[:id])
   @word.destroy
   redirect_to dict_path(@dict)
 end

 private
   def word_params
     params.require(:word).permit(:key, :value)
   end

end
