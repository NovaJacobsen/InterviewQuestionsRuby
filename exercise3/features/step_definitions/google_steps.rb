Given("I am on the Google Home Page") do
  google.home_page.visit
end

When("I search for {string}") do |search_term|
  current_page.search_for search_term
end

Then("I see over {int} results") do |expected_results|
  raise 'Step only valid on result page' unless current_page == google.result_page
  expect(current_page.result_count).to be > expected_results
end

Then("I am informed that I am shown results for {string}") do |expected_search_term|
  raise 'Step only valid on result page' unless current_page == google.result_page
  expect(current_page.showing_results_for).to eq expected_search_term
end

Then("I have the option to search for {string} instead") do |expected_search_term|
  raise 'Step only valid on result page' unless current_page == google.result_page
  expect(current_page.search_instead_for).to eq expected_search_term
end
