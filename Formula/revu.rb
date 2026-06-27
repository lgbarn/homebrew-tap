class Revu < Formula
  desc "Fast, memory-safe terminal diff/review tool (a Rust port of hunk)"
  homepage "https://github.com/lgbarn/revu"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-apple-darwin.tar.gz"
      sha256 "e63fb6d4714d4460b0d43f304083ea0f1c9839543e035b564fc5a580a4ac177c"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-apple-darwin.tar.gz"
      sha256 "003ea884405b06c5d83a1955ceaf2407ce39759ac342e7c96fd995a59f1c1340"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "49899e90e77eebc869b803e41ef0e471e79086f4273db6999fde4e9529561d58"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "864661a996e8e070b9ffacce3fabd8304a762bb644d523a9ceec4a4e5d889821"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_match "revu", shell_output("#{bin}/revu --version")
  end
end
