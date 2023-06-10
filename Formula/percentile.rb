class Percentile < Formula
  desc "CLI tool to calculate percentile from a file"
  version '0.2.0'
  homepage 'https://github.com/ebc-2in2crc/percentile'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/percentile/releases/download/v0.2.0/percentile_darwin_amd64.zip"
    sha256 '25751463a0d1622931e38a749d2b5d8b7784406ce56d1c0a1ea1cd0e6c3a4926'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/percentile/releases/download/v0.2.0/percentile_linux_amd64.zip"
    sha256 '2df3d1a338b883514daeb32ff3b6aaf9377f38fd3cfd1bc565318f78db2cc475'
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
