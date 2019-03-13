require 'rails_helper'

RSpec.feature "Comedians::Shows", type: :feature do
  before :each do
    @c1 = Comedian.create(name: "John Mulaney", age: 20, city: "New York")
    @c2 = Comedian.create(name: "Hari Kondabolu", age: 55, city: "New York")

    @sp1 = Special.create(name: "Kid Gorgeous", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjohn-mulaney-kid-gorgeous-radio-city-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c1)
    @sp2 = Special.create(name: "New in Town", length: 60, image: "http://www.slate.com/content/dam/slate/articles/arts/interrogation/2012/02/120202_INTERROGATION_johnMulaney.jpg.CROP.rectangle3-large.jpg", comedian: @c1)
    @sp3 = Special.create(name: "Warn Your Relatives", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fhari-kondabolu-warn-your-relatives-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c2)
  end
  describe 'as a visitor' do
    it 'shows me the comedian info including their specials' do
      visit comedian_path(@c1.id)

      expect(page).to_not have_content(@c2.name)
      expect(page).to_not have_content(@c2.age)
      expect(page).to have_content(@c1.name)
      expect(page).to have_content(@c1.age)
      expect(page).to have_content(@sp1.name)
      expect(page).to have_content(@sp1.length)
    end
  end
end
