def channel_name
  click_link 'New Channel'
  fill_in 'Name', with: 'I love chasing squirrels'
  click_button 'Create Channel'
end
