
def create_new_link
  visit('/links/new')
  fill_in :title, with: 'BBC'
  fill_in :URL, with: 'http://www.bbc.co.uk'
  fill_in :tag, with: 'kittens'
  click_button 'Submit'
end
