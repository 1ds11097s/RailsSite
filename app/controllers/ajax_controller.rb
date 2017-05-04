class AjaxController < ApplicationController
  layout 'ajax'
  
  def index
  end

  def data
    url = URI('https://queryfeed.net/twitter?q=%23%E3%83%9D%E3%82%B1%E3%83%A2%E3%83%B3GO&title-type=user-name-both')
    http = Net::HTTP.new(url.host)
    response = http.get(url)
    @data = Hash.from_xml(response.body).to_json.html_safe
  end
end
