# frozen_string_literal: true

def create_comment
  fill_in 'Message here ...', with: 'I love chasing squirrels too!'
  click_button 'Create Comment'
end
