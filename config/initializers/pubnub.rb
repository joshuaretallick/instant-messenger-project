require 'pubnub'
$pubnub = Pubnub.new(
   subscribe_key: Rails.application.credentials.pubnub[:sub_key],
   publish_key: Rails.application.credentials.pubnub[:pub_key]
)
