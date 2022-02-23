class Guy < Formula
  desc "Take your terminal to Flavortown"
  homepage "https://github.com/knpwrs/guy"
  url "https://github.com/knpwrs/guy/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "bd27b97073ebf7d8c2a7a1b62abd5d6b6e87f931400c9a07f2d2e02009ab9f5a"
  license "MIT"
  head "https://github.com/knpwrs/guy.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/guy")
    assert_equal 183, output.lines.count
  end
end
