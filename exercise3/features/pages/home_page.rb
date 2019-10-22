require 'base_page'

puts "Loading HomePage"
class HomePage < BasePage

  def url
    'http://google.com/ncr'
  end

  def search_for(term)
    browser.form.text_field.set term
    browser.form.submit
    next_page google.result_page
  end

end
