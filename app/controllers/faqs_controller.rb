module Spree
	class FaqsController < Spree::BaseController
	  helper 'spree/products'

	  def index
	    @categories = Spree::QuestionsCategory.all :include => :questions
	  end

	  def default_title
	    I18n.t 'frequently_asked_questions'
	  end
	end
end
