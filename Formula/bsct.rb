class Bsct < Formula
  desc "Binary search on text files or stdin to find the first bad line"
  homepage "https://github.com/knpwrs/bsct"
  url "https://github.com/knpwrs/bsct/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2f4b51d41b0067eeaa70f7bd95c620a3f8d8337710f0c7f393c01ddaffaa0155"
  license "MIT"
  head "https://github.com/knpwrs/bsct.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    output = shell_output("#{bin}/bsct --version")
    assert_match "bsct version", output
  end
end
