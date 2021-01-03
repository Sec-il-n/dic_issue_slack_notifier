# 未検証
require 'slack-notify'
require 'clockwork'
include Clockwork

CHANNEL = '#ff'
USER_NAME = 'sec-slack-app'
WEBHOOK_URL = 'https://hooks.slack.com/services/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'
text = 'slack_api_test'
client = SlackNotify::Client.new(webhook_url: WEBHOOK_URL)
handler do |job|
  case Job
  when 'every_3_minutes.job'
    client.notify(text = 'slack_api_test_3min', channel = CHANNEL)
  when 'every_10_minutes.job'
    client.notify(text = 'slack_api_test_10min', channel = CHANNEL)
  end
end
every(3.minutes,'every_3_minutes.job')
every(10.minutes,'every_10_minutes.job')
