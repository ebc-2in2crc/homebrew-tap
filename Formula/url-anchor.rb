class UrlAnchor < Formula
  version '1.0.0'
  homepage 'https://github.com/ebc-2in2crc/url-anchor'
  url "https://github.com/ebc-2in2crc/url-anchor/releases/download/v1.0.0/url-anchor_darwin_amd64.zip"
  sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
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
