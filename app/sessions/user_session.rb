class UserSession < Authlogic::Session::Base
  # specify configuration here, such as:
  # logout_on_timeout true
  # ...many more options in the documentation
  alias_method :old_valid?, :valid?
  
  def valid?
    unless old_valid?
      #errors.clear
      errors.add(:base, I18n.t('activerecord.errors.user_sessions.record_invalid'))
      return false
    end
    return true
  end
end