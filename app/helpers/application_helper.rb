module ApplicationHelper
  
  def self.included(base)
    base.send :include, InstanceMethods
  end
  
  module InstanceMethods
    def title(page_title, show_title = true)
      content_for(:title) { page_title.to_s }
      @show_title = show_title
    end
    
    def show_title?
      @show_title
    end
  end
end


