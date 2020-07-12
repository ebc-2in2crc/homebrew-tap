class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.1.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.1.0/pa_darwin_amd64.zip"
  sha256 'c2cbafa5f0b698e175e5b8f49377263f016acf6e9d3c7f296890d1eb0114c972'
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
