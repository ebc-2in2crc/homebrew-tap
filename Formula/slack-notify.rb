class SlackNotify < Formula
  version '0.0.4'
  homepage 'https://github.com/ebc-2in2crc/slack-notify'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.4/slack-notify_darwin_amd64.zip"
    sha256 '6156e2132fd576677ef78498ccd43625d552a43f86adadfd24d3edf3e9a04e62'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.4/slack-notify_linux_amd64.zip"
    sha256 'ce53a1c19269ed08c8e3268634d8a1c25fa54f8df6b3db9c2f904b29cc4a6e1f'
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
