require 'rails_helper'

RSpec.feature "Visit single post", :type => :feature do 
  let(:user) {create(:user)}
  let(:post) {create(:post)}

  scenario "user goes to single post from the homepage", js: true do 
    post
    visit root_path
    page.find(:css,'.post-text').click
    expect(page).to have_selector('body .modal')
    page.find(:css, '.interested a').click
    expect(page).to have_selector('#single-post-content p'), text: post.content

  end
end
