terraform {
  source = "../../modules"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  env = "stage"
}
