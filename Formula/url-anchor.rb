class UrlAnchor < Formula
  desc "Converts URL to HTML `<a>` tag"
  version '1.2.0'
  homepage 'https://github.com/ebc-2in2crc/url-anchor'
  url "https://github.com/ebc-2in2crc/url-anchor/releases/download/v1.2.0/url-anchor_darwin_amd64.zip"
  sha256 'ac73b304df2478e7b8c4f0baa66355416e932d6f4906dff5bf872361fc06ba4a'
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
