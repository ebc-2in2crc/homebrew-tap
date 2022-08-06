class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.7.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.7.0/pa_darwin_amd64.zip"
  sha256 'cee09d50151583461308880298de1a5776d80622fec48b0332e168397a7d110b'
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
