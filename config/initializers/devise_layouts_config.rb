# Specify the layout file that should be used for each Devise controller
MatchMaking::Application.configure do
  config.to_prepare do
    Devise::SessionsController.layout       'registrations'
    Devise::RegistrationsController.layout  'registrations'
    Devise::ConfirmationsController.layout  'registrations'
    Devise::UnlocksController.layout        'registrations'
    Devise::PasswordsController.layout      'registrations'
  end
end
