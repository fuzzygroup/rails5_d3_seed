class GraphController < ApplicationController
  def index
    respond_to do |format|
      format.js {render layout: false}
      format.js { render layout: false, content_type: 'text/javascript' }
      format.html
    end
  end
 
  def data
    respond_to do |format|
      format.json {
        render :json => [1,2,3,4,5]
      }
    end
  end
end