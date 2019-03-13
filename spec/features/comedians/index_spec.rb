require 'rails_helper'

RSpec.feature "Comedians", type: :feature do
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
  describe 'as a visitor' do
    it 'can list all of the comedians' do
    visit comedians_path

      within(id:"comedian-#{@c1.id}") do
        expect(page).to have_content(@c1.name)
        expect(page).to have_content(@c1.age)
        expect(page).to have_content(@c1.city)
        expect(page).to have_content(@sp1.name)
        expect(page).to have_content(@sp1.length)
      end
      within(id:"comedian-#{@c2.id}") do
        expect(page).to have_content(@c2.name)
        expect(page).to have_content(@c2.age)
        expect(page).to have_content(@c2.city)
        expect(page).to have_content(@sp3.name)
        expect(page).to have_content(@sp3.length)
        expect(page).to have_css("img[src*='#{@sp3.image}']")
      end
    end

    it 'can show a statistics area' do
      visit comedians_path
      within(class:"stats") do
        expect(page).to have_content("Avg Age: 37.6")
        expect(page).to have_content("Avg Special Length: 60")
        expect(page).to have_content("Unique Cities: New York, Palo Alto")
      end
    end

    it 'it can use query parameters' do
      visit comedians_path(age: 34)

      expect(page).to have_content(@c4.name)
      expect(page).to have_content(@c5.name)
      expect(page).to_not have_content(@c1.name)
      expect(page).to_not have_content(@c2.name)
    end

    it 'allows me to visit a comedian show page via a link from the index page' do
      visit comedians_path

      within(id:"comedian-#{@c1.id}") do
        click_link("#{@c1.name}")
      end
    end
  end
end
