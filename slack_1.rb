require 'slack-notify'
require 'clockwork'
# slackにメッセージを送る処理
# work namespace
CHANNEL = '#ff'
USER_NAME = 'sec-slack-app'
# USER_NAME = 'loveuallnbs0205'
WEBHOOK_URL = ENV['WEBHOOK_URL']
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
