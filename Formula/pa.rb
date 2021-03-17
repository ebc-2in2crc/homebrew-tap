class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.5.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.5.0/pa_darwin_amd64.zip"
  sha256 'ceeaebc4c50afcb51e81d41e3d8124c9faf1b56bfc00c76651261231e68bb0fa'
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
