feature 'Creating new links' do
  scenario 'I want to save a new link' do
    create_new_link
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end
