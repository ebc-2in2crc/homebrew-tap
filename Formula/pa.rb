class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.8.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.8.0/pa_darwin_amd64.zip"
  sha256 '8f42c1ded216d8b68c8f0f23f657950032c85220d29ea467a44f509f40b20505'
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
