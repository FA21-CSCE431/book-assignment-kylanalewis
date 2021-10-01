# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'kl'
    fill_in 'Price', with: '10.21'
    fill_in 'Date', with: '1998-10-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('kl')
    expect(page).to have_content('10.21')
    expect(page).to have_content('1998-10-10')
  end
end