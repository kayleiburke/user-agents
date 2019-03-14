class CreateUserAgentLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_agent_logs do |t|
      t.string        :user_agent
      t.integer       :count
      t.timestamps
    end
  end
end
