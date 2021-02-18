require 'rails_helper.rb'
require 'helpers/sign_up.rb'
require 'helpers/channel_name.rb'
require 'helpers/channel_photo.rb'

feature 'channel creation' do
  it 'lets the user create a channel when signed in' do
    sign_up
    channel_name
    expect(page).to have_content('Channel was successfully created.')
    expect(page).to have_content('I love chasing squirrels')
  end

  it 'lets the user create a channel with a picture when signed in' do
    sign_up
    channel_photo
    expect(page).to have_content('Channel was successfully created.')
    expect(page).to have_content('I love chasing squirrels')
    expect(page).to have_css("img[src*='Hooper.jpg']")
  end

end
