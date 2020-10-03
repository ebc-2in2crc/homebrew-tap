class UrlAnchor < Formula
  desc "Converts URL to HTML `<a>` tag"
  version '1.1.0'
  homepage 'https://github.com/ebc-2in2crc/url-anchor'
  url "https://github.com/ebc-2in2crc/url-anchor/releases/download/v1.1.0/url-anchor_darwin_amd64.zip"
  sha256 '98b27c07f528f113f03cfaba266a8557648cbcdd5b34ca8f1a56e9adbee88ab6'
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
