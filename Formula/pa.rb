class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.3.1'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.3.1/pa_darwin_amd64.zip"
  sha256 '3dfd6c51cdc0384b215768d1304f659e3f9621f99fa9e03d92f67a7de75cfc55'
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
