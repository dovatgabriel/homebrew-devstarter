class Devstarter < Formula
  desc "Quickly launch Node.js projects from ~/Developer"
  homepage "https://github.com/dovatgabriel/devstarter"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.3/devstarter-macos-x64-v0.1.3.tar.gz"
      sha256 "3dc17c85f67ee9fb726cce332d7d00d0379b7f1e46855bd6eb90261e45430575"
    end
    on_arm do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v0.1.3/devstarter-macos-arm64-v0.1.3.tar.gz"
      sha256 "77ff1982bdab282eca1f4009180656b0f3b0bfc298470c861013df17a9a8ad2d"
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
