class ApplicationController < ActionController::Base
    skip_before_action :authorize_request, only: :authenticate, raise: false
    
    include ExceptionHandler

    # calls before every controller action
    before_action :authorize_request
    attr_reader :current_user

    private

    # Checks for valid request token
    def authorize_request
        @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
    end
end
