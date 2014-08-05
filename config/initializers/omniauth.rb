OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '228927113824-mpehv945iiuvpcopskvog168sl5gnhtp.apps.googleusercontent.com', 'FnE9mNPl_iZ4NO8M9USXxbxS', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end