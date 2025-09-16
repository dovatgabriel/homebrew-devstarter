class Devstarter < Formula
  desc "Quickly launch Node.js projects from ~/Developer"
  homepage "https://github.com/dovatgabriel/devstarter"
  version "1.0.0"
  on_macos do
    on_intel do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v1.0.0/devstarter-macos-x64-v1.0.0.tar.gz"
      sha256 "fb17059fd0c382828a18d75cfdc80b75be70e5dea7f41eda86e1a9ad35c298c6"
    end
    on_arm do
      url "https://github.com/dovatgabriel/devstarter/releases/download/v1.0.0/devstarter-macos-arm64-v1.0.0.tar.gz"
      sha256 "f5847a740cb3b295e97a0c6593472266b82b8f26868b79043a6585235075ac56"
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
