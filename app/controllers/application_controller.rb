class ApplicationController < ActionController::Base

    def article_params
        params.require(:article).permit(:title, :description, :stock, :status, :category_ids=>[])
    end
end
