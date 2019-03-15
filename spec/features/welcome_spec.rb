RSpec.describe "as a visitor" do
  describe "when I navigate to the welcome page" do
    it 'shows me links to all Comedians' do
      visit welcome_path
      expect(page).to have_content("All Comedians")
    end

  end
end
