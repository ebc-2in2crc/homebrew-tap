class Pa < Formula
  version '0.9.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v0.9.0/pa_darwin_amd64.zip"
  sha256 '5d51444a938ca2cba499289c7b9582264f55e707c8914c226bb7c1e2902b48e9'
  head 'https://github.com/ebc-2in2crc/pa.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'pa'
  end
end
