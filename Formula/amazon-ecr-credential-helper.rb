class AmazonEcrCredentialHelper < Formula
  desc "Automatically gets credentials for Amazon ECR on docker push/docker pull."
  homepage "https://github.com/estahn/amazon-ecr-credential-helper"
  url "https://github.com/estahn/amazon-ecr-credential-helper/releases/download/v0.0.2/amazon-ecr-credential-helper_0.0.2_darwin_amd64.tar.gz"
  version "0.0.2"
  sha256 "a8b89449866eead5a993223479bb1f046dfdb872671bb28d9454b2c29073923b"
  
  depends_on "jq"

  def install
    bin.install "docker-credential-ecr-login"
    #system "jq", "-M", "'.credHelpers += {foobar:3}'", "~/.docker/config.json"
  end

  def caveats
    "Add the following to your ~/.docker/config.json
{
	"credHelpers": {
		"aws_account_id.dkr.ecr.region.amazonaws.com": "ecr-login"
	}
}
"
  end

  test do
    
  end
end
