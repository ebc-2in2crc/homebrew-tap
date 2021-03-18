class Dango < Formula
  version '0.9.0'
  homepage 'https://github.com/ebc-2in2crc/dango'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/dango/releases/download/v0.9.0/dango_darwin_amd64.zip"
    sha256 '9072c935d1e17dbff9d16bb406b59c8d7330e0afcbc0c61ec0dd4108566a9652'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/dango/releases/download/v0.9.0/dango_linux_amd64.zip"
    sha256 'd2f49ebed9117c751eca1fe58067fa5bb37913687bdf9b6373d123afa15436ef'
  end
  head 'https://github.com/ebc-2in2crc/dango.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'dango'
  end
end
