class SwiftCompletion < Formula
  desc "Bash completion for Swift"
  homepage "https://github.com/joba64/swift_bash-completion"
  url "https://github.com/joba64/swift_bash-completion/archive/0.0.1.tar.gz"
  sha256 "f8139acba98248eb1fdb0b6d94efee89b876f9a50d00e263dc144fd2b0c372d4"
  head "https://github.com/joba64/swift_bash-completion"

  bottle :unneeded
  depends_on: bash-completion

  def install
    bash_completion.install "contrib/completion/bash/docker"
  end

  test do
    assert_match "-F _swift",
      shell_output("bash -c 'source #{bash_completion}/swift && complete -p swift'")
  end
end
