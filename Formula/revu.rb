class Revu < Formula
  desc "Fast, memory-safe terminal diff/review tool (a Rust port of hunk)"
  homepage "https://github.com/lgbarn/revu"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-apple-darwin.tar.gz"
      sha256 "ecd89764f476eae6d7157b41727241496e82ecd0d7a2e44d6ec5abaa79ed0d28"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-apple-darwin.tar.gz"
      sha256 "e6543197903190e457af219d2579138115aaecc2727dce74e3a867467fb0bd00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42dff1c0c143a06d9cf7edc6a9a32f54d2d04d0c752e1ec485e2c547ee06eb3f"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c993de1d556ff28a4b9bb1c2c7183273cb0bb48aa54446b8bb51c32b4197463a"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_match "revu", shell_output("#{bin}/revu --version")
  end
end
