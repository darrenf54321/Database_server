require 'spec_helper'

  feature "Startup" do
  scenario 'the webpage loads successfully' do
    visit '/'
    expect(page).to have_content('Hello DataBase!')
  end
end
