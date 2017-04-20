class PapersController < ApplicationController
  def index
  end

  def translate
    @original = params.permit(:original)[:original]
    @en_original = getTranslate(@original)
    
    @edit_en_original = params.permit(:edit_en_original)[:edit_en_original]
    if params[:reflect]
      @edit_en_original = @en_original
    end
    @ja_edit_en_original = getTranslate(@edit_en_original, 'en', 'ja')

    render :action=>:index
  end
end
