class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.5.1'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.5.1/pa_darwin_amd64.zip"
  sha256 'd61cc34bd984feda5aebcdad49782bf25486df515d9726a5c56fc2d265c7d4a9'
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
