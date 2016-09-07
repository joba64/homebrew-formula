class SwiftCompletion < Formula
  desc "Bash completion for Swift"
  homepage "https://github.com/joba64/swift_bash-completion"
  url "https://github.com/joba64/swift_bash-completion/archive/0.0.1.tar.gz"
  sha256 "8d50cd8081430dc33fc4bbb1f713e5c76d27521cb2cfd435b6e70cf69506bab8"
  head "https://github.com/joba64/swift_bash-completion"

  bottle :unneeded
  depends_on :"bash-completion"

  def install
    bash_completion.install "swift" 
  end

  test do
    assert_match "-F _swift",
      shell_output("bash -c 'source #{bash_completion}/swift && complete -p swift'")
  end
end
