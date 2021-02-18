# frozen_string_literal: true

def channel_photo
  click_link 'New Channel'
  fill_in 'Name', with: 'I love chasing squirrels'
  page.attach_file("#{Rails.root}spec/images/Hooper.jpg")
  click_button('Create Channel')
end
