class SlackNotify < Formula
  desc "Post Google Calendar events to Slack"
  version '0.0.8'
  homepage 'https://github.com/ebc-2in2crc/slack-notify'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.8/slack-notify_darwin_amd64.zip"
    sha256 'c761b1d4d47cc9332a1cc44b4f81fee4cefcdfe887bf957ea80dca89d3f1dc16'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.8/slack-notify_linux_amd64.zip"
    sha256 '1915ea3e95113c5d5828d4e3bf893946fa0426278aa9cdf87ce2f2c57d6679da'
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
