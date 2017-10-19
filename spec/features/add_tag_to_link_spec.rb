feature 'Add tag to link' do
  scenario 'I want to see a tag to a link' do
    create_new_link
    link = Link.first
    expect(link.tags.map(&:tag)).to include 'kittens'
  end
end
