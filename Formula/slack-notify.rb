class SlackNotify < Formula
  version '0.0.5'
  homepage 'https://github.com/ebc-2in2crc/slack-notify'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.5/slack-notify_darwin_amd64.zip"
    sha256 '0ebb878ca84269ea73609345457a8de74adf4ab1cb0f9c2df486d76a04bcf9e0'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/slack-notify/releases/download/v0.0.5/slack-notify_linux_amd64.zip"
    sha256 'a40b4a0c29d1f1baafd5a81bd0482e331b8afc4e8e235a4305b552610a045be3'
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
