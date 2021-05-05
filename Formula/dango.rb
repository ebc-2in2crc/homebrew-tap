class Dango < Formula
  desc "Concatenates and splits standard input"
  version '1.0.0'
  homepage 'https://github.com/ebc-2in2crc/dango'
  if OS.mac?
    url "https://github.com/ebc-2in2crc/dango/releases/download/v1.0.0/dango_darwin_amd64.zip"
    sha256 '660693a01893422f5a1fce243438b0a041abe08e200f884d1bc8d8586cc10324'
  end
  if OS.linux?
    url "https://github.com/ebc-2in2crc/dango/releases/download/v1.0.0/dango_linux_amd64.zip"
    sha256 '720f56b0b8802eee35af4b3b2788df16c9b9d949b73105d83a6870ac8f1b30a4'
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
