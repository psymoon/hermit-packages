description = "Backup and migrate Kubernetes applications and their persistent volumes."
binaries = ["velero"]
test = "velero version --client-only"
repository = "https://github.com/vmware-tanzu/velero"
source = "https://github.com/vmware-tanzu/velero/releases/download/v${version}/velero-v${version}-${os}-${arch}.tar.gz"

on "unpack" {
  rename {
    from = "${root}/velero-v${version}-${os}-${arch}/velero"
    to = "${root}/velero"
  }
}

platform "darwin" {
  source = "https://github.com/vmware-tanzu/velero/releases/download/v${version}/velero-v${version}-${os}-amd64.tar.gz"
}

platform "windows" {
  source = "https://github.com/vmware-tanzu/velero/releases/download/v${version}/velero-v${version}-${os}-amd64.tar.gz"
}

version "1.9.2" "1.9.3" "1.10.0" {
  auto-version {
    github-release = "vmware-tanzu/velero"
  }
}

sha256sums = {
  "https://github.com/vmware-tanzu/velero/releases/download/v1.9.2/velero-v1.9.2-linux-amd64.tar.gz": "6727ed2ab68bec962c70682f63943acb44028e0f92a1201a1101b3347a9c4840",
  "https://github.com/vmware-tanzu/velero/releases/download/v1.9.2/velero-v1.9.2-darwin-amd64.tar.gz": "89fce9b88ac0de34c52874e00054bbaaa101160c5a8160c76e3ee8570a1d4c21",
  "https://github.com/vmware-tanzu/velero/releases/download/v1.9.3/velero-v1.9.3-linux-amd64.tar.gz": "13e498c1ebec1e7c5bd633cbd39775e2b60cc55c29333abf019abaf29f19cc0e",
  "https://github.com/vmware-tanzu/velero/releases/download/v1.9.3/velero-v1.9.3-darwin-amd64.tar.gz": "3b31a30ce60326ca77b77394b3936677c93306f11eb7d03b9a964f8012b10578",
  "https://github.com/vmware-tanzu/velero/releases/download/v1.10.0/velero-v1.10.0-darwin-amd64.tar.gz": "93eecbced3fa340b52c8b2159bd7b2d02164db4777978c23da3e4fbe936a1153",
  "https://github.com/vmware-tanzu/velero/releases/download/v1.10.0/velero-v1.10.0-linux-amd64.tar.gz": "3cf8c26b17a06f3f43ec43c854618a619f4e14e2e690bd813e55797aae1db155",
}
