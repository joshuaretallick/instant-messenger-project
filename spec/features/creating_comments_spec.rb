require 'rails_helper.rb'
require 'helpers/sign_up.rb'
require 'helpers/channel_name.rb'
require 'helpers/create_comment.rb'

feature 'comment creation' do
  it 'lets the user create comment on their own post when signed in' do
    sign_up
    channel_name
    create_comment
    expect(page).to have_content('I love chasing squirrels too!')
    expect(page).to have_content('Comment was successfully created.')
  end

end
