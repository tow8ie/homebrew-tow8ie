require 'formula'

class VimTow8ie < Formula
  homepage 'http://www.vim.org/'
  url 'https://github.com/vim/vim', :using => :git, :tag => 'v7.4.1816'
  version '7.4.1816'

  head 'https://github.com/vim/vim.git'

  def install
    system "make", "clean"
    system "./configure", "--disable-gui",
                          "--with-mac-arch=i386",
                          "--enable-multibyte",
                          "--enable-fontset",
                          "--with-compiledby='Tobias Adam <tow8ie@gmail.com>'",
                          "--without-x",
                          "--enable-pythoninterp=dynamic",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end

