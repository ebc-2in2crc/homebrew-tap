class Pa < Formula
  desc "Pixela (https://pixe.la/) CLI tools"
  version '0.9.0'
  homepage 'https://github.com/ebc-2in2crc/pa'
  url "https://github.com/ebc-2in2crc/pa/releases/download/v0.9.0/pa_darwin_amd64.zip"
  sha256 '2c1169ee6ba4c38dacf5fbd128d0a9ccfd0c4271ed49d25e8de6e3590801a766'
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
