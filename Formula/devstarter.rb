class Devstarter < Formula
  desc "Quickly launch Node.js projects"
  homepage "https://github.com/dovatgabriel/devstarter"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.0/devstarter-macos-x64-v0.1.0.tar.gz"
      sha256 "32872aa03f2eacb7ef9ae025c9b66c0af72e424a9da4d3cc14ce9ed6a100cbc7"
    end
    on_arm do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.0/devstarter-macos-arm64-v0.1.0.tar.gz"
      sha256 "b29ccec42b4b3a03ac5360e53bec5ccf4dcce62133554f2280d4253f605e87ab"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "devstarter-x64" => "devstarter"
    else
      bin.install "devstarter-arm64" => "devstarter"
    end
    bin.install_symlink bin/"devstarter" => "ds"
  end

  test do
    system "#{bin}/devstarter", "--help"
  end
end
