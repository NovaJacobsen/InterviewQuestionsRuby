class ResultPage < BasePage

  def search_for(term)
    form = browser.form(action: 'search/')
    form.text_field.set term
    form.submit
    next_page self
  end

  def result_count
    browser.element(id: 'resultStats').text[/[0-9.]+/].tr('.','').to_i
  end

  def search_instead_for
    card_section[/(?<=Search instead for ).*/]
  end

  def showing_results_for
    card_section[/(?<=Showing results for ).*/]
  end

  private

  def card_section
    browser.element(class: 'card-section').text
  end

end
