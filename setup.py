#!/usr/bin/env python3

import logging
import os

import click


def init_logging(level: int) -> None:
    assert isinstance(level, int)
    logging.basicConfig(
        format="%(asctime)s %(levelname)s [%(filename)s:%(lineno)d](%(funcName)s) - %(message)s"
        if level <= logging.DEBUG
        else "%(asctime)s %(levelname)s - %(message)s",
        level=level,
        handlers=[logging.StreamHandler()],
    )


class JobLogger:
    def __init__(self, message: str) -> None:
        self.message = message

    def __enter__(self):
        logging.info(self.message)

    def __exit__(self, exc_type, exc_val, exc_tb):
        logging.info(f"{self.message} - done")


def replace_file(filename, old, new):
    with open(filename, "r") as fp:
        content = fp.read()
    content = content.replace(old, new)
    with open(filename, "w") as fp:
        fp.write(content)


@click.command()
@click.option("-o", "--org", "org_opt", required=True, help="organization")
@click.option("-r", "--repo", "repo_opt", required=True, help="repository")
@click.option(
    "--required-version",
    "required_opt",
    default="0.7",
    help="required nvim version, by default is `0.7`",
)
@click.option(
    "--indent-size", "indent_opt", default=2, help="indent size, by default is `2`"
)
@click.option(
    "--debug",
    "debug_opt",
    is_flag=True,
    help="enable debug, by default is `false`",
)
def setup(debug_opt, org_opt, repo_opt, required_opt, indent_opt):
    init_logging(logging.DEBUG if debug_opt else logging.INFO)
    logging.debug(
        f"debug_opt:{debug_opt}, org_opt:{org_opt}, repo_opt:{repo_opt}, required_opt:{required_opt}, indent_opt:{indent_opt}"
    )

    org = org_opt
    repo_nvim = repo_opt
    assert isinstance(repo_nvim, str)
    repo = repo_nvim[:-5] if repo_nvim.endswith(".nvim") else repo_nvim
    repo_underscore = repo.replace("-", "_")
    indent = int(indent_opt)
    assert isinstance(required_opt, str)
    required_version = (
        f"{required_opt}.0" if required_opt.count(".") == 1 else required_opt
    )
    required_version = (
        f"v{required_version}"
        if not required_version.startswith("v")
        else required_version
    )
    required_version_short = required_version[:-2]
    logging.debug(
        f"org:{org}, repo_nvim:{repo_nvim}, repo:{repo}, repo_underscore:{repo_underscore}, indent:{indent}, required_version:{required_version}, required_version_short:{required_version_short}"
    )

    # remove CHANGELOG.md
    if os.path.exists("CHANGELOG.md"):
        with JobLogger("remove CHANGELOG.md"):
            os.remove("CHANGELOG.md")

    # clear README.md
    with JobLogger("update README.md"):
        with open("README.md", "w") as fp:
            fp.write(
                f"""
# {repo_nvim}

<p align="center">
<a href="https://github.com/neovim/neovim/releases/{required_version}"><img alt="Neovim" src="https://img.shields.io/badge/Neovim-{required_version_short}+-57A143?logo=neovim&logoColor=57A143" /></a>
<a href="https://luarocks.org/modules/{org}/{repo_nvim}"><img alt="luarocks" src="https://custom-icon-badges.demolab.com/luarocks/v/{org}/{repo_nvim}?label=LuaRocks&labelColor=063B70&logo=tag&logoColor=fff&color=blue" /></a>
<a href="https://github.com/{org}/{repo_nvim}/actions/workflows/test.yml"><img alt="test.yml" src="https://img.shields.io/github/actions/workflow/status/{org}/{repo_nvim}/test.yml?label=GitHub%20CI&labelColor=181717&logo=github&logoColor=fff" /></a>
<a href="https://app.codecov.io/github/{org}/{repo_nvim}"><img alt="codecov" src="https://img.shields.io/codecov/c/github/{org}/{repo_nvim}?logo=codecov&logoColor=F01F7A&label=Codecov" /></a>
</p>

"""
            )

    # update LICENSE
    with JobLogger("update LICENSE"):
        replace_file("LICENSE", "linrongbin16", org)
        replace_file("LICENSE", "ci-template", repo)

    # update .github/workflows
    with JobLogger("update .github/workflows"):
        for action_file in os.listdir(".github/workflows"):
            replace_file(f".github/workflows/{action_file}", "linrongbin16", org)
            replace_file(f".github/workflows/{action_file}", "ci-template", org)
            replace_file(f".github/workflows/{action_file}", "v0.7.0", required_version)

    # update .luacov
    with JobLogger("update .luacov"):
        replace_file(".luacov", "linrongbin16", org)
        replace_file(".luacov", "ci-template", repo)

    # rename lua/ci-template.lua
    with JobLogger("rename lua/ci-template.lua"):
        os.rename("lua/ci-template.lua", f"lua/{repo}.lua")

    # rename spec/ci_template_spec.lua
    with JobLogger("rename spec/ci_template_spec.lua"):
        os.rename("spec/ci_template_spec.lua", f"spec/{repo_underscore}_spec.lua")

    # update spec/{repo_underscore}_spec.lua
    with JobLogger(f"update spec/{repo_underscore}_spec.lua"):
        replace_file(f"spec/{repo_underscore}_spec.lua", "linrongbin16", org)
        replace_file(f"spec/{repo_underscore}_spec.lua", "ci-template", repo)
        replace_file(f"spec/{repo_underscore}_spec.lua", "ci_template", repo_underscore)

    # clear version.txt
    with JobLogger("update version.txt"):
        with open("version.txt", "w") as fp:
            fp.write("")

    if indent == 2:
        return

    # update .editorconfig
    with JobLogger(f"update .editorconfig"):
        replace_file(f".editorconfig", "= 2", f"= {indent}")

    # update .stylua.toml
    with JobLogger(f"update .stylua.toml"):
        replace_file(f".stylua.toml", "= 2", f"= {indent}")

    # update .nvim.lua
    with JobLogger(f"update .nvim.lua"):
        replace_file(f".nvim.lua", "= 2", f"= {indent}")


if __name__ == "__main__":
    setup()
