class ClaudeAiRelay < Formula
  desc "claude.ai connectors as MCP tools in API-key sessions"
  homepage "https://github.com/andromedarabbit/claude-ai-relay"
  version "0.2.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andromedarabbit/claude-ai-relay/releases/download/v0.2.0/claude-ai-relay_darwin_amd64.tar.gz"
      sha256 "8e599d52a87c5516948050a23ac09cf2d7f4fc69501e1ae8b98587b6c0163778"
    else
      url "https://github.com/andromedarabbit/claude-ai-relay/releases/download/v0.2.0/claude-ai-relay_darwin_arm64.tar.gz"
      sha256 "5fe5ba2c0aacd147d5cef5fdae977ffb9de3627410b417d794e37332cf152284"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/andromedarabbit/claude-ai-relay/releases/download/v0.2.0/claude-ai-relay_linux_amd64.tar.gz"
      sha256 "4b7904533d7d5f22ed1e14fec8f4b1b4bfacbe1e6f9573a07c2883cdd8d56c14"
    else
      url "https://github.com/andromedarabbit/claude-ai-relay/releases/download/v0.2.0/claude-ai-relay_linux_arm64.tar.gz"
      sha256 "50e2724b9cdbb46d92e9c4c82960956496cb79bf7824d7815de6efaa336b9a8b"
    end
  end
  def install
    bin.install "claude-ai-relay"
  end
  test do
    assert_match "probe", shell_output("#{bin}/claude-ai-relay bad-subcommand 2>&1", 2)
  end
end
