class Forms < ApplicationRecord
  belongs_to :user

  validates :desc, presence: true
  validates :body, presence: true


  include UsersHelper

  def index
    @forms = Forms.all
  end

end
