require 'rails_helper'

RSpec.describe Comedian, type: :model do
  before :each do
    @c1 = Comedian.create(name: "John Mulaney", age: 45, city: "New Jersey")
    @c2 = Comedian.create(name: "Hari Kondabolu", age: 55, city: "New York")
    @c3 = Comedian.create(name: "W. Kamau Bell", age: 20, city: "Palo Alto")
    @sp1 = Special.create(name: "Kid Gorgeous", length: 50, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjohn-mulaney-kid-gorgeous-radio-city-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c1)
    @sp2 = Special.create(name: "New in Town", length: 100, image: "http://www.slate.com/content/dam/slate/articles/arts/interrogation/2012/02/120202_INTERROGATION_johnMulaney.jpg.CROP.rectangle3-large.jpg", comedian: @c1)
    @sp3 = Special.create(name: "Warn Your Relatives", length: 50, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fhari-kondabolu-warn-your-relatives-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c2)
    @sp4 = Special.create(name: "Private School Negro", length: 150, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fw-kamau-bell-private-school-negro-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c3)
    @sp5 = Special.create(name: "Totally Biased", length: 50, image: "https://media.gettyimages.com/photos/comedian-w-kamau-bell-performs-onstage-at-totally-biased-with-w-kamau-picture-id163442351?s=612x612", comedian: @c3)
  end
  describe 'relationships' do
    it { should have_many :specials}
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_numericality_of :age }
    it { should validate_presence_of :city }
  end
  describe 'class methods' do
    it 'it can calc avg age' do
      actual = Comedian.avg_age
      expect(actual).to eq(40)
    end

    it 'it can list unique cities' do
      actual = Comedian.city_list
      expect(actual).to eq(["New Jersey", "New York", "Palo Alto"])
    end
    it 'it can calc specials_avg_length' do
      actual = Comedian.specials_avg_length
      expect(actual).to eq(80)
    end
    it 'it can calc specials_count' do
      actual = Comedian.specials_count
      expect(actual).to eq(5)
    end
    it 'it can calc comedian_count' do
      actual = Comedian.comedian_count
      expect(actual).to eq(3)
    end
    it "it can sort by name" do
      attribute = :name
      actual = Comedian.sort_by(attribute).first
      expect(actual).to eq(@c2)
    end
    it "can sort by city" do
      attribute = :city
      actual = Comedian.sort_by(attribute).first
      expect(actual).to eq(@c1)
    end
    it "can sort by age" do
      attribute = :age
      actual = Comedian.sort_by(attribute).first
      expect(actual).to eq(@c3)
    end
  end
  describe 'Instance Methods' do
    it 'can calc specials count' do
      actual = @c1.specials_count
      expect(actual).to eq(2)
    end
  end
end
