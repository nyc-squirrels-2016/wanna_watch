describe "the signin process", :type => :feature do
  before :each do
    User.create(:email => 'user@example.com', :password => 'password')
  end

  it "signs user in" do
    visit '/#'
    within("#session") do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Profile'
  end
end
