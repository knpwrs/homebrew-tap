class Woodo < Formula
  desc "It's a weird tree"
  homepage "https://github.com/knpwrs/woodo"
  url "https://github.com/knpwrs/woodo/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "204cb366eb20e3d028b7fc39a8b790141e9a848cde041723139e08804b3b3aa5"
  license "MIT"
  head "https://github.com/knpwrs/woodo.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/woodo")
    assert_match "It's a weird tree.", output
  end
end
