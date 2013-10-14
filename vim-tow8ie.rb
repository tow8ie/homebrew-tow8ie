require 'formula'

class VimTow8ie < Formula
  homepage 'http://www.vim.org/'
  url 'https://vim.googlecode.com/hg/', :tag => 'v7-4-052'
  version '7.3.1078'

  head 'https://vim.googlecode.com/hg/'

  def install
    system "make", "clean"
    system "./configure", "--disable-gui",
                          "--with-mac-arch=i386",
                          "--enable-multibyte",
                          "--enable-fontset",
                          "--with-compiledby='Tobias Adam <tow8ie@gmail.com>'",
                          "--without-x",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end

