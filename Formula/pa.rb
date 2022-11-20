class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.7.1'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.7.1/pa_darwin_amd64.zip"
  sha256 '1a0e3a6c50b6ef7164b5be68e0db1c34c95e052ec922935103a21675af458cde'
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
