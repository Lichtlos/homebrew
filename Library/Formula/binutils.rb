require 'formula'

class Binutils < Formula
  homepage 'http://www.gnu.org/software/binutils/binutils.html'
  url 'http://ftpmirror.gnu.org/binutils/binutils-2.22.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/binutils/binutils-2.22.tar.gz'
  sha1 '0e16a7492c0a194962ecd33fc80fa53ccfec5149'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--program-prefix=g",
                          "--prefix=#{prefix}",
                          "--infodir=#{info}",
                          "--mandir=#{man}",
                          "--disable-werror",
                          "--enable-interwork",
                          "--enable-multilib",
                          "--enable-targets=x86_64-elf,arm-none-eabi,m32r"
    system "make"
    system "make install"
  end
end
