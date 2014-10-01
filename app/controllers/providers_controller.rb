class ProvidersController < ActionController::Base

  def index
    @providers = Provider.order('name').all
    
  end

  def show
    
  end

  def destroy
    
  end

end
