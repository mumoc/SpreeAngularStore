Spree::Api::BaseController.class_eval do

  skip_before_filter :authenticate_user, if: :create_user_action?

  def create_user_action?
    req = request.path_parameters
    req[:controller] === 'spree/api/users' && req[:action] == 'create'
  end
end
