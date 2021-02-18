# frozen_string_literal: true

require 'rails_helper'
require 'helpers/sign_up'
require 'helpers/channel_name'
require 'helpers/channel_photo'

feature 'channel creation' do
  it 'lets the user create a channel when signed in' do
    sign_up
    channel_name
    expect(page).to have_content('Channel was successfully created.')
    expect(page).to have_content('I love chasing squirrels')
  end

end
