require 'rails_helper'

RSpec.feature "Comedians", type: :feature do
  describe 'as a visitor' do
    it 'can list all of the comedians' do
      @c1 = Comedian.create(name: "John Mulaney", age: 39, city: "New York")
      @c2 = Comedian.create(name: "Hari Kondabolu", age: 36, city: "New York")
      @c3 = Comedian.create(name: "W. Kamau Bell", age: 45, city: "Palo Alto")

      visit comedians_path

      within(id: 'comedian-info') do
        expect(page).to have_content(@c1.name)
        expect(page).to have_content(@c1.age)
        expect(page).to have_content(@c1.city)
      end
    end
  end
end
