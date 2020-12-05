class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.4.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.4.0/pa_darwin_amd64.zip"
  sha256 '9e4d63b838b1e6c5721e48cfa2ab21c202732d606be8536d90f4396c75d02077'
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
