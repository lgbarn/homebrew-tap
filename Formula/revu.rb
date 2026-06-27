class Revu < Formula
  desc "Fast, memory-safe terminal diff/review tool (a Rust port of hunk)"
  homepage "https://github.com/lgbarn/revu"
  version "0.1.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-apple-darwin.tar.gz"
      sha256 "f116178bedb0181771db4984bd35ca06a97861f755c8b06e480724deb82f0354"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-apple-darwin.tar.gz"
      sha256 "e639a7db7fdfe96296f096f14b61b7f74edba32e07f2f4f0045e11af49706074"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc550b4eb26b20ca7bec62639a337ab042cca38e94dc36a47dbe387f8a150229"
    end
    on_intel do
      url "https://github.com/lgbarn/revu/releases/download/v#{version}/revu-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40e0f1eac621a5ecd790146ec05f52a928aaed76d6c2d8eb7a564db68f210f99"
    end
  end

  def install
    bin.install "revu"
  end

  test do
    assert_match "revu", shell_output("#{bin}/revu --version")
  end
end
