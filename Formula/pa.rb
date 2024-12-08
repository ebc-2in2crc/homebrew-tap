class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.10.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.10.0/pa_darwin_amd64.zip"
  sha256 'cc5a20eb198bfed939b79aa6e233a0ea390e9ba6632a0f96583e7027f8b7adfa'
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
