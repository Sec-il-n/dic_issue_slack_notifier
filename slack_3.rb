require 'slack-notify'
require 'clockwork'
# Nomethod error: ↓method利用に必要
include Clockwork

CHANNEL = '#ff'
USER_NAME = 'sec-slack-app'
WEBHOOK_URL = 'https://hooks.slack.com/services/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'
text = 'slack_api_test'
client = SlackNotify::Client.new(webhook_url: WEBHOOK_URL)

every(3.minutes,'every_3_minutes.job')do
  client.notify(text = 'slack_api_test_3min', channel = CHANNEL)
end

# clockwork slack_3.rb
