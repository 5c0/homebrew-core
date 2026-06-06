class Metropolis < Formula
  desc "Cyberpunk system monitor that transforms kernel metrics into a living terminal skyline"
  homepage "https://github.com/5c0/metropolis"
  url "https://github.com/5c0/metropolis/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "47c1ed75e2d8f3d9f75927cdead1dc68127eb444ed34eb66284e8150e2d29ab9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "metropolis #{version}", shell_output("#{bin}/metropolis --version")
  end
end
