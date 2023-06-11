class Percentile < Formula
  desc "CLI tool to calculate percentile from a file"
  version '0.2.2'
  homepage 'https://github.com/ebc-2in2crc/percentile'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/percentile/releases/download/v0.2.2/percentile_darwin_amd64.zip"
    sha256 'd441abaea4cfc33d16df70e146fee91c252945ad917227da59d1d5212d284254'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/percentile/releases/download/v0.2.2/percentile_linux_amd64.zip"
    sha256 '24629d6281df8c668a6b33a70b7509db97e9ad99f822adee78806a82482bf05d'
  end
  head 'https://github.com/ebc-2in2crc/percentile.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'percentile'
  end
end
