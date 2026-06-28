class Revu < Formula
  desc "Fast, memory-safe terminal diff/review tool (a Rust port of hunk)"
  homepage "https://github.com/lgbarn/revu"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-apple-darwin.tar.gz"
      sha256 "091d69e7a22de8823371167d72eb73d41a3142bd18fb99b10ea3b18327a015a1"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-apple-darwin.tar.gz"
      sha256 "d94a28cd389d5f0353533299d20419e7110528df247e181531962ff1dcb54124"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e47be2b3a107d1dd7da2924dad3700db95a4f0ec10f7a0b7000025e22d9bd1ff"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8501ac1f901db43252c53924746046da573658d2ebcf71b627ac48bb31024c43"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_match "revu", shell_output("#{bin}/revu --version")
  end
end
