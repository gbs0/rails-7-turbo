class ApplicationController < ActionController::Base
  helper_method :breadcrumbs
  
  def breadcrumbs
    @breadcrumbs ||= []
  end

  def add_breadcrumb(name, url = nil)
    breadcrumbs << Breadcrumb.new(name, url)
  end
end
