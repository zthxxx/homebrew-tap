class Hams < Formula
  desc "Declarative IaC environment management for workstations"
  homepage "https://hams.zthxxx.me"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zthxxx/hams/releases/download/v#{version}/hams-darwin-arm64"
      sha256 "bb6fe564dd04e3acb967a6ef1b6db116caad0fc2b19e6b4e91fc7f0183548539"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zthxxx/hams/releases/download/v#{version}/hams-linux-amd64"
      sha256 "f0d79f6faadab7304265e047f6f288414c5577a152f1d7968567e58372919666"
    end

    on_arm do
      url "https://github.com/zthxxx/hams/releases/download/v#{version}/hams-linux-arm64"
      sha256 "69db0c4a42330941b5b1ee437d61f9ea545459eb50b95f03df2bb037200eb391"
    end
  end

  def install
    bin.install Dir["hams-*"].first => "hams"
  end

  test do
    assert_match "hams version", shell_output("#{bin}/hams --version")
  end
end
