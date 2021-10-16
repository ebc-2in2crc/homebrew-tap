class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.6.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.6.0/pa_darwin_amd64.zip"
  sha256 '7763d1079b4376990ddd36302e26470eab27fb0a1167242fdaf3b0361078a207'
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
