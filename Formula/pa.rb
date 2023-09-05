class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '1.9.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v1.9.0/pa_darwin_amd64.zip"
  sha256 'e5de70185ebbcdf3895c5e6cddd6fe868880ec5698d17c9f79728be07bbe1ddf'
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
