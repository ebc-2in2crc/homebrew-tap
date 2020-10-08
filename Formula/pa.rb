class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.2.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.2.0/pa_darwin_amd64.zip"
  sha256 'a41252eca6962a974858a9717b3ebbc3dd65058d723fb02e75bb7ed5eeb70cc7'
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
