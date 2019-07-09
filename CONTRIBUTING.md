# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue,
email, or any other method with the owners of this repository before making a change. 

Please note we have a [code of conduct](https://github.com/alexkreidler/terraform-provisioner-ansible/blob/master/CODE_OF_CONDUCT.md), please follow it in all your interactions with the project.

## Pull Request Process

1. Before submitting a pull request, ensure that the build succeds, tests pass and golint does not report any issues.
2. If new provisioner attrbiutes have been added, please document them in the README.md file.
3. Do not increase the version in `.version` file. Version updates are handled during releases.
4. If any of the dependencies have been updated, please state the reason for that change.

## Getting started

The new version uses full Go modules, and has moved away from glide versioning. We have auxiliary scripts in the `./bin` folder to help release artifacts, etc, but for local development, running various targets in the `Makefile` should be sufficient.

On my local machine, I just run `make build-darwin`, which automatically builds the plugin and installs it to my local `~/.terraform.d/plugins/` folder.

Note: if there is another version of `terraform-provisioner-ansible` in your plugins folder, it will sometimes try to use that version instead and you may get errors, so be sure to delete any outdated versions you may have.