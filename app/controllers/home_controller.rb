class HomeController < ApplicationController
  def index
    @user_agent_logs = UserAgentLog.all.order(:user_agent)
  end

  def new
  end

  def create
  end
end
