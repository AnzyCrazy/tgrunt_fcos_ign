terraform {
  source = "../../modules"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env  = "dev"
  // path = "../../modules/ec2/config.yaml"
}
