Spree::Api::BaseController.class_eval do

  skip_before_filter :authenticate_user, if: :create_user_action?

  def create_user_action?
    #What about naming best practices, one of the core concepts of Ruby is the right naming, in fact, we usually hear
    #about "the characters doesn't cost you", take a look a the variable, does it represent clearly what's storing?
    #Are you trying to store the request? or the parameters? Also, why are you comparing === and == ? what's the difference?
    #http://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and
    req = request.path_parameters
    req[:controller] === 'spree/api/users' && req[:action] == 'create'
  end
end
