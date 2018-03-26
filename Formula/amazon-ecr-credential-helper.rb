class AmazonEcrCredentialHelper < Formula
  desc "Automatically gets credentials for Amazon ECR on docker push/docker pull."
  homepage "https://github.com/estahn/amazon-ecr-credential-helper"
  url "https://github.com/estahn/amazon-ecr-credential-helper/releases/download/v0.1.0/amazon-ecr-credential-helper_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "5d2d076e3b8dd0e48fb3cb93f56659ddb009156ee3afcadd35f60bcebef4c4df"
  
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
