class UrlAnchor < Formula
  version '1.0.0'
  homepage 'https://github.com/ebc-2in2crc/url-anchor'
  url "https://github.com/ebc-2in2crc/url-anchor/releases/download/v1.0.0/url-anchor_darwin_amd64.zip"
  sha256 'dd7d2cc36a6de23254e89aa6c180ee7e7d65019b0e1db37b9b651f94e1c8ff66'
  head 'https://github.com/ebc-2in2crc/url-anchor.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'url-anchor'
  end
end
