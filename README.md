# python-static-analysis

This repo generates a docker container containing the Static analysis tools that Springload uses

## Releases

To generate a new container version, add a git tag to a specific commit, and push that tag to the repo

Github actions will then build this container and attach tags for the major, minor and full version tags (ie, 2.1.3 would be tagged 2, 2.1 and 2.1.3)

## Versioning strategy

We are working with a [Semantic Versioning](https://semver.org/) strategy for releases on this container.

Practically this means that a *patch* version will for be anything backwards compatible, including adding a new tool.

A minor version is.... not very useful in this context, but could be a change to a tool, small package upgrades, or compatible base-container change.

A major version is **anything** that would change the formatting of previously acceptable code.

As such, we recommend pinning consuming repos to the *major*.