class Forms < ApplicationRecord
  include UsersHelper

  def index
    @forms = Forms.all
  end

end
