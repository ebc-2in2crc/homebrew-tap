class SlackNotify < Formula
  desc "Post Google Calendar events to Slack"
  version '0.0.9'
  homepage 'https://github.com/ebc-2in2crc/slack-notify'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.9/slack-notify_darwin_amd64.zip"
    sha256 '86ecac374daecb3d61b8e6f491ad250dd8b04c90f6bfbdc8124b813e31f21dce'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.9/slack-notify_linux_amd64.zip"
    sha256 '9359780869445ff32253341c62e4504ada7fc30c4b6f56bf90e7b7522b7b8ae9'
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
