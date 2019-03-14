class SetUserAgentLogDefaultCount < ActiveRecord::Migration[5.2]
  def change
    change_column_default :user_agent_logs, :count, 0
  end
end
