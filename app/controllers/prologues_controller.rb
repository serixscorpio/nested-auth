class ProloguesController < ApplicationController
  before_action :debug_with_ability
  load_and_authorize_resource :book
  load_and_authorize_resource :prologue, through: :book, singleton: true

  def show
    Rails.logger.info "prologue loaded and authorized: #{@prologue}"
    head :ok, content_type: 'text/html'
  end

  def debug_with_ability
    @current_ability = Ability.new(User.find(1))
  end
end
