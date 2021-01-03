require 'slack-notify'
require 'clockwork'
# slackにメッセージを送る処理
# work namespace
CHANNEL = '#ff'
USER_NAME = 'sec-slack-app'
# USER_NAME = 'loveuallnbs0205'
WEBHOOK_URL = 'https://hooks.slack.com/services/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'
text = 'slack_api_test'
client = SlackNotify::Client.new(webhook_url: WEBHOOK_URL)
client.notify(text, channel = CHANNEL)
# ↕︎どっちでも可能
# client = SlackNotify::Client.new(webhook_url: WEBHOOK_URL, channel: CHANNEL, username: USER_NAME,)
# client.notify(text)

# テスト
# client.test

module Clockwork
  handler do |job|

  end
  every(3.minutes,'every_3_minutes.job')
end
