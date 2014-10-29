Spree::Api::UsersController.class_eval do
  def create
    #I would say that the authorization should occur before entering the action, it will redirect you to another place (don't remember to where)
    #but, it's a common/best practice to have a before_action for this, also, if you think about it, the create action is doing more than it should
    #it is authorizing the request and creating the user, remember about RESTfullness
    authorize! :create, Spree.user_class
    @user = Spree.user_class.new(user_params)
    if @user.save && @user.generate_spree_api_key!
      retrieve_spree_api_key
      #Remember to use the new hash syntax, this is something we've been saying from time ago
      respond_with(@user, :status => 201, :default_template => :show)
    else
      invalid_resource!(@user)
    end
  end

  private
    def retrieve_spree_api_key
      Spree::Api::ApiHelpers.user_attributes << 'spree_api_key'
    end

    #I'm not sure why are you overriding the user_params method, this could cause that the current Spree Api implementation breaks
    #because, if you take a look at the Spree::Api::UserController, the method user_params require the user key with the attributes for user with
    #the attributes for bill and ship address merged, so, with this, you're restricting the address attributes.

    #You could check the current user attributes on: https://github.com/spree/spree/blob/master/core/lib/spree/permitted_attributes.rb
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
