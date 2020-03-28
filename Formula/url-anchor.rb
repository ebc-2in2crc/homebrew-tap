class UrlAnchor < Formula
  desc "Converts URL to HTML `<a>` tag"
  version '1.0.1'
  homepage 'https://github.com/ebc-2in2crc/url-anchor'
  url "https://github.com/ebc-2in2crc/url-anchor/releases/download/v1.0.1/url-anchor_darwin_amd64.zip"
  sha256 '2a36258a2e9dc7c11f2f71c39019664bc7996d9d2d1ac9cd748a88ca7af4c886'
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
