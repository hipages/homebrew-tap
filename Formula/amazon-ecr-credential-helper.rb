class AmazonEcrCredentialHelper < Formula
  desc "Automatically gets credentials for Amazon ECR on docker push/docker pull."
  homepage "https://github.com/estahn/amazon-ecr-credential-helper"
  url "https://github.com/estahn/amazon-ecr-credential-helper/releases/download/v0.1.1/amazon-ecr-credential-helper_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "fc5d2280026ff6328cb6111e1e7932329bebf53932df82edff60bbb0bfba332e"

  def install
    bin.install "docker-credential-ecr-login"
  end

  test do
    
  end
end
