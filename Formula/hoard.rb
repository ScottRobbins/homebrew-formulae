class Hoard < Formula
  desc "A simple tool to allow backing up files to a git repository and keeping them in sync across multiple computers."
  homepage "https://github.com/ScottRobbins/Hoard"
  url "https://github.com/ScottRobbins/Hoard.git", :tag => "1.0.0"
  head "https://github.com/ScottRobbins/Hoard.git"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/hoard" "--help"
  end
end
