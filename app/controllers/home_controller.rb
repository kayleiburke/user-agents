class HomeController < ApplicationController
  def index
    current_user_agent = request.user_agent
    user_agent_log = UserAgentLog.find_by(user_agent: current_user_agent)

    if user_agent_log
      count = user_agent_log.count + 1
      user_agent_log.update!(count: count)
    else
      UserAgentLog.create!(user_agent: current_user_agent, count: 1)
    end

    @user_agent_logs = UserAgentLog.all.order(:user_agent)
  end

  def new
  end

  def create
  end
end
