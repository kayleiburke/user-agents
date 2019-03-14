class UserAgentLogsController < ApplicationController
  def index
    current_user_agent = request.user_agent
    @user_agent_log = UserAgentLog.find_by(user_agent: current_user_agent)

    @user_agent_logs = UserAgentLog.all.order(:user_agent)

    respond_to do |format|
      format.js
    end
  end
end
