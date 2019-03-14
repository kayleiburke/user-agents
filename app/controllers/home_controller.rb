class HomeController < ApplicationController
  def index
    current_user_agent = request.user_agent
    @user_agent_log = UserAgentLog.find_by(user_agent: current_user_agent)

    if @user_agent_log
      count = @user_agent_log.count + 1
      @user_agent_log.update!(count: count)
    else
      @user_agent_log = UserAgentLog.new(user_agent: current_user_agent, count: 1)
      @user_agent_log.save!
    end

    @user_agent_logs = UserAgentLog.all.order(:user_agent)
  end

  def new
  end

  def create
  end
end
