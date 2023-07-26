class SlackNotify < Formula
  desc "Post Google Calendar events to Slack"
  version '0.0.7'
  homepage 'https://github.com/ebc-2in2crc/slack-notify'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.7/slack-notify_darwin_amd64.zip"
    sha256 '40c6348176361635b7b8ca3908cb3f7e8ec1916a6ee26e02cf954d69843af019'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.7/slack-notify_linux_amd64.zip"
    sha256 'a54b5e7aedc08222dd91261e2cecbfcb2a1d3c866f25a6d9fb5c611e2a758ee4'
  end
  head 'https://github.com/ebc-2in2crc/slack-notify.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'slack-notify'
  end
end
