class SlackNotify < Formula
  desc "Post Google Calendar events to Slack"
  version '0.0.6'
  homepage 'https://github.com/ebc-2in2crc/slack-notify'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.6/slack-notify_darwin_amd64.zip"
    sha256 '312b1b715cb505b14e6d79d033e7c663259dff30dd25085360c845597751569a'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.6/slack-notify_linux_amd64.zip"
    sha256 'e9a81727724591e714d85d3d16049baa0bcb42140377f51c82582441c050c680'
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
