class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      if current_user.card_files.present?
        @card = current_user.card_files.first
      end
    end
  end

  def import
  end
end
