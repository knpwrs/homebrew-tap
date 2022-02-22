class Woodo < Formula
  desc "It's a weird tree"
  homepage "https://github.com/knpwrs/woodo"
  url "https://github.com/knpwrs/woodo/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "3a6c843767f26e07cf5817e8ef298c446be20b3a71302195408a1e53fa45cb3b"
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
