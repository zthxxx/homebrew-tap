class Hams < Formula
  desc "Declarative IaC environment management for workstations"
  homepage "https://hams.zthxxx.me"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zthxxx/hams/releases/download/v#{version}/hams-darwin-arm64"
      sha256 "bd032cfdadb2a12edaa1973c684d667c2b28ff7ba129f69988491623ef9c43d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zthxxx/hams/releases/download/v#{version}/hams-linux-amd64"
      sha256 "eceb0f1a3fba898acf4d8a0ef671668b43799a1f8a983547e37f11c7cd57d137"
    end

    on_arm do
      url "https://github.com/zthxxx/hams/releases/download/v#{version}/hams-linux-arm64"
      sha256 "38da70e5b0a6eca57d2fd54a02aa5e66e96d879c36caa3a9e3062de08e27bcd1"
    end
  end

  def install
    bin.install Dir["hams-*"].first => "hams"
  end

  test do
    assert_match "hams version", shell_output("#{bin}/hams --version")
  end
end
