# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Homeport < Formula
  desc "Homeport - Personal Dockerized development environments for Docker hosted applications."
  homepage "https://github.com/bigeasy/homeport"
  url "https://github.com/bigeasy/homeport/archive/v1.0.9.tar.gz"
  version "1.0.9"
  sha256 "31fe665e2154d959c1cee5029684513427f7c516e91f8257cfb5a3453f005ae6"

  def install
    share.install "Dockerfile", "bin", "container", "diary.md", "formula",
      "homeport.bash", "lib"
    bin.install_symlink share/"homeport.bash" => "homeport"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test homeport`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
