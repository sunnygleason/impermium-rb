
module Impermium
  class UserAccount
    attr_accessor :user_id, :enduser_ip,
      :email_identity, :first_name, :last_name, :content,
      :facebook_identity, :twitter_identity

    def initialize(user_id, enduser_ip)
      @user_id           = user_id
      @enduser_ip        = enduser_ip
    end
  
    def to_hash
      to_return = {
        :user_id => @user_id,
        :enduser_ip => @enduser_ip
      }

      to_return[:email_identity] = @email_identity if @email_identity
      to_return[:first_name]     = @first_name if @first_name
      to_return[:last_name]      = @last_name  if @last_name
      to_return[:content]        = @content    if @content
      to_return[:facebook_identity] = {:id => @facebook_identity} if @facebook_identity
      to_return[:twitter_identity]  = {:id => @twitter_identity}  if @twitter_identity

      to_return
    end
  end
end