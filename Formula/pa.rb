class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.0.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.0.0/pa_darwin_amd64.zip"
  sha256 '627bc81a26185f8613f06b548ba3ce2446110fd395410faa1235555250e20d02'
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
