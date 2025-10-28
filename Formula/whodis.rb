class Whodis < Formula
  desc "Modern, colorful CLI tool for WHOIS lookups"
  homepage "https://github.com/knpwrs/whodis"
  url "https://github.com/knpwrs/whodis/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cf4ab80decb37d5b03b6612209ba7672e926b339c29e64441fbef61ee14b8b11"
  license "Unlicense"
  head "https://github.com/knpwrs/whodis.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/whodis"
  end

  test do
    output = shell_output("#{bin}/whodis --version")
    assert_match "whodis version", output
  end
end
