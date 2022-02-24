class Guy < Formula
  desc "Take your terminal to Flavortown"
  homepage "https://github.com/knpwrs/guy"
  url "https://github.com/knpwrs/guy/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "0206a79e87fff5524365628b620c969f39bd56aeaf1aee4bf8ff8b8fddfc4ad2"
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
