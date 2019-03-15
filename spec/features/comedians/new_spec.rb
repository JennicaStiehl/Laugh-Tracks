require 'rails_helper'

RSpec.feature "News", type: :feature do
  before :each do
    @c1 = Comedian.create(name: "John Mulaney", age: 20, city: "New York")
    @c2 = Comedian.create(name: "Hari Kondabolu", age: 55, city: "New York")
    @c3 = Comedian.create(name: "W. Kamau Bell", age: 45, city: "Palo Alto")
    @c4 = Comedian.create(name: "W. Bell", age: 34, city: "Palo Alto")
    @c5 = Comedian.create(name: "M. Bell", age: 34, city: "Palo Alto")
    @sp1 = Special.create(name: "Kid Gorgeous", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjohn-mulaney-kid-gorgeous-radio-city-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c1)
    @sp2 = Special.create(name: "New in Town", length: 60, image: "http://www.slate.com/content/dam/slate/articles/arts/interrogation/2012/02/120202_INTERROGATION_johnMulaney.jpg.CROP.rectangle3-large.jpg", comedian: @c1)
    @sp3 = Special.create(name: "Warn Your Relatives", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fhari-kondabolu-warn-your-relatives-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c2)
    @sp4 = Special.create(name: "Private School Negro", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fw-kamau-bell-private-school-negro-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c3)
    @sp5 = Special.create(name: "Totally Biased", length: 60, image: "https://media.gettyimages.com/photos/comedian-w-kamau-bell-performs-onstage-at-totally-biased-with-w-kamau-picture-id163442351?s=612x612", comedian: @c3)
  end
  describe 'i see a way to a new comedian' do
    it 'can create a new comedian' do
      visit new_comedian_path
      fill_in('Name', :with => "Jim Barton")
      fill_in('Age', :with => 34)
      fill_in('City', :with => 'New Orleans')
      click_on 'Create Comedian'

      if Comedian.find_by_name("Jim Barton")
        expect(current_path).to eq(comedians_path)
        expect(page).to have_content("Jim Barton")
      else
        expect(current_path).to eq(new_comedian_path)
      end
    end
    it 'can create a new comedian-sad path' do
      visit new_comedian_path
      fill_in('Name', :with => "Jim Barton")
      fill_in('Age', :with => nil)
      fill_in('City', :with => 'New Orleans')
      click_on 'Create Comedian'

      if Comedian.find_by_name("Jim Barton")
        expect(current_path).to eq(comedians_path)
        expect(page).to have_content("Jim Barton")
      else
        expect(current_path).to eq(new_comedian_path)
      end
    end
  end
end
