# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# Run directly with 
#   brew -v reinstall --build-from-source --formula `pwd`/pacman@6.0.1.rb

class PacmanAT601 < Formula
  desc "Pacman package manager"
  homepage "https://github.com/kladd/pacman-osx"
  version "6.0.1"
 
  stable do
    url "https://github.com/tj800x/homebrew-pacman/releases/download/v6.0.1/pacman-darwin.6.0.1.bz2
    sha256 :no_check
  end

  if Hardware::CPU.arm?
    odie "Apple Silicon currently untested therefore unsupported."
  end
  depends_on :arch => :intel

  head do
    url "https://gitlab.archlinux.org/pacman/pacman.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "bash" => :build
    depends_on "pkg-config" => :build
    depends_on "libarchive" => :build
    depends_on "openssl" => :build
    
  end

  def install
    ENV.deparallelize
    if build.head? 
      ohai "Compiling can take a long time; use `brew install -v pacman` to see progress."
      ohai "prefix= #{prefix}"
    end
  end
end
