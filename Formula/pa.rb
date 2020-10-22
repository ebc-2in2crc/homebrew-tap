class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.3.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.3.0/pa_darwin_amd64.zip"
  sha256 '16a096011f372e65a044f9d56c4f2fc5acf9e8db46df129270552faf8603768a'
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
