class M3u8dl < Formula
  desc "CLI utility that downloads M3U8 playlists and all referenced files recursively"
  homepage "https://github.com/knpwrs/m3u8dl"
  url "https://github.com/knpwrs/m3u8dl/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "bbf1096208284908f996026c86d1ec4726c4c62460a549d013fe49bbd177c125"
  license "MIT"
  head "https://github.com/knpwrs/m3u8dl.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    output = shell_output("#{bin}/m3u8dl --version")
    assert_match "m3u8dl version", output
  end
end
