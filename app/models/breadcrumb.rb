class Breadcrumb
  attr_accessor :name, :url
  
  def initialize(name, url)
    @name = name
    @url = url
  end

  def link?
    @url.present?
  end
  
end