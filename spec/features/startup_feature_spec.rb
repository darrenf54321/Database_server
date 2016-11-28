require 'spec_helper'

  feature "Startup" do
  scenario 'the webpage loads successfully' do
    visit '/'
    expect(page).to have_content('Hello DataBase!')
  end
end

feature "storing temporary variables" do #Disclosure Thanks Chet's repo for this test!
  scenario "setting values" do
    visit '/set?somekey=somevalue'
    expect(page).to have_content 'somekey: somevalue'
  end
end
