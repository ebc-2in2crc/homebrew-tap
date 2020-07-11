class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI"
  version '0.9.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v0.9.0/pa_darwin_amd64.zip"
  sha256 '0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5'
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
