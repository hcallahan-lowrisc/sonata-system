#!/usr/bin/env python3.10
# Copyright lowRISC contributors
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

from pathlib import Path
from typing import NamedTuple

import git
from mako.template import Template


class SystemInfo(NamedTuple):
    commit_hash: str
    dirty: bool


def generate_system_info() -> None:
    repo = git.Repo(search_parent_directories=True)
    sha = repo.head.object.hexsha[0:8]
    dirty = repo.is_dirty()
    print(
        "System info: Git hash " + sha + " " + ("DIRTY!" if dirty else "clean")
    )
    repo_path = Path(repo.working_dir)
    system_info = SystemInfo(sha, dirty)

    for template, output in (
        (
            Path.joinpath(
                repo_path, "rtl/ip/system_info/templates/system_info.sv.tpl"
            ),
            Path("system_info.sv"),
        ),
        (
            Path.joinpath(
                repo_path, "rtl/ip/system_info/templates/system_info.core.tpl"
            ),
            Path("system_info.core"),
        ),
        # TODO is there a way not to have to copy these over to the
        # auto-generated folder?
        (
            Path.joinpath(
                repo_path, "rtl/ip/system_info/rtl/system_info_reg_pkg.sv"
            ),
            Path("system_info_reg_pkg.sv"),
        ),
        (
            Path.joinpath(
                repo_path, "rtl/ip/system_info/rtl/system_info_reg_top.sv"
            ),
            Path("system_info_reg_top.sv"),
        ),
    ):
        content = Template(filename=str(template)).render(
            system_info=system_info
        )
        output.write_text(content)


def main() -> None:
    generate_system_info()


if __name__ == "__main__":
    main()
