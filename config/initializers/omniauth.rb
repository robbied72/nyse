OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '355925254475686', '3b9cce9237887bf604adba9ef961b212', :scope => 'email,user_birthday,read_stream'
  provider :linkedin, 'c1wdboezfab5', 'm62auR9NkVWWVJlx'
end