# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with title', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '1.23'
        select("2018", :from => 'book_published_1i')
        select("September", :from => 'book_published_2i')
        select("12", :from => 'book_published_3i')
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('harry potter')
    end
end

RSpec.describe 'Creating a book with author', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '1.23'
        select("2018", :from => 'book_published_1i')
        select("September", :from => 'book_published_2i')
        select("12", :from => 'book_published_3i')
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('JK Rowling')
    end
end

RSpec.describe 'Creating a book with price', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '1.23'
        select("2018", :from => 'book_published_1i')
        select("September", :from => 'book_published_2i')
        select("12", :from => 'book_published_3i')
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('1.23')
    end
end

RSpec.describe 'Creating a book with published date', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'JK Rowling'
        fill_in 'Price', with: '1.23'
        select("2018", :from => 'book_published_1i')
        select("September", :from => 'book_published_2i')
        select("12", :from => 'book_published_3i')
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('2018-09-12')
    end
end