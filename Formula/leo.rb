class Leo < Formula
  include Language::Python::Virtualenv

  desc "Python library for leo dict"
  homepage "https://github.com/andiwand/python-leo"
  url "https://github.com/andiwand/python-leo/archive/da398f076f42c12b62773adeb18594eff84a107f.tar.gz"
  sha256 "7d795db6f2ffa29cf61cf76f44a8784dba0acd15dfaa3777acaef8ca2caa49b5"
  version "1.1"
  license "Apache-2.0"

  bottle do
    cellar :any_skip_relocation
    sha256 "0276d309ef75310c6f769fd57bd1c0326c42ad167fada9985d9a18c5219111a8" => :catalina
    sha256 "7382a74b8dc90f0a89a09e525a76967c4872c685d8dae62be7bde0474e750bc3" => :mojave
    sha256 "8ecaf808929ee9c3a7ee76f707b2df886712a7be0c73b7c274f96d4dbd7ba304" => :high_sierra
  end

  depends_on "python@3.8"

  resource "beautifulsoup4" do
    url "https://pypi.python.org/packages/source/b/beautifulsoup4/beautifulsoup4-4.9.1.tar.gz"
    sha256 "73cc4d115b96f79c7d77c1c7f7a0a8d4c57860d1041df407dd1aae7f07a77fd7"
  end

  resource "certifi" do
    url "https://pypi.python.org/packages/source/c/certifi/certifi-2020.6.20.tar.gz"
    sha256 "5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3"
  end

  resource "chardet" do
    url "https://pypi.python.org/packages/source/c/chardet/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "idna" do
    url "https://pypi.python.org/packages/source/i/idna/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "lxml" do
    url "https://pypi.python.org/packages/source/l/lxml/lxml-4.5.2.tar.gz"
    sha256 "cdc13a1682b2a6241080745b1953719e7fe0850b40a5c71ca574f090a1391df6"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.24.0.tar.gz"
    sha256 "b3559a131db72c33ee969480840fff4bb6dd111de7dd27c8ee1f820f4f00231b"
  end

  resource "soupsieve" do
    url "https://pypi.python.org/packages/source/s/soupsieve/soupsieve-2.0.1.tar.gz"
    sha256 "a59dc181727e95d25f781f0eb4fd1825ff45590ec8ff49eadfd7f1a537cc0232"
  end

  resource "urllib3" do
    url "https://pypi.python.org/packages/source/u/urllib3/urllib3-1.25.9.tar.gz"
    sha256 "3018294ebefce6572a474f0604c2021e33b3fd8006ecd11d62107a5d2a963527"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "leo dict cli", shell_output("#{bin}/leo -h")
  end
end
