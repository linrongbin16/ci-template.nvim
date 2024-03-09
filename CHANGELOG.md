# Changelog

## [7.0.0](https://github.com/linrongbin16/ci-template.nvim/compare/ci-template.nvim-v6.0.1...ci-template.nvim-v7.0.0) (2024-03-09)


### ⚠ BREAKING CHANGES

* **tag:** remove 'stable' tag ([#82](https://github.com/linrongbin16/ci-template.nvim/issues/82))

### Bug Fixes

* **release:** fix release config ([#83](https://github.com/linrongbin16/ci-template.nvim/issues/83)) ([aec27f8](https://github.com/linrongbin16/ci-template.nvim/commit/aec27f884aab7527aba3734136f4846a914b481c))
* **release:** fix rocks version ([#82](https://github.com/linrongbin16/ci-template.nvim/issues/82)) ([675a97e](https://github.com/linrongbin16/ci-template.nvim/commit/675a97e6b327800cb07411a96fde3935432f5b43))
* **release:** fix tag name ([#80](https://github.com/linrongbin16/ci-template.nvim/issues/80)) ([f96295d](https://github.com/linrongbin16/ci-template.nvim/commit/f96295d0333de322d047ac041be9aceab9ca1aa6))


### Performance Improvements

* **tag:** remove 'stable' tag ([#82](https://github.com/linrongbin16/ci-template.nvim/issues/82)) ([675a97e](https://github.com/linrongbin16/ci-template.nvim/commit/675a97e6b327800cb07411a96fde3935432f5b43))

## [6.0.1](https://github.com/linrongbin16/ci-template.nvim/compare/ci-template.nvim-v6.0.0...ci-template.nvim-v6.0.1) (2024-03-09)


### Bug Fixes

* **release:** print tag ([#78](https://github.com/linrongbin16/ci-template.nvim/issues/78)) ([c05f07c](https://github.com/linrongbin16/ci-template.nvim/commit/c05f07c84006897141ce8aa2d48fa6c06a26d724))

## [6.0.0](https://github.com/linrongbin16/ci-template.nvim/compare/ci-template.nvim-v5.0.0...ci-template.nvim-v6.0.0) (2024-03-09)


### ⚠ BREAKING CHANGES

* migrate 'luacheck' to 'selene' ([#67](https://github.com/linrongbin16/ci-template.nvim/issues/67))
* **json:** remove embedded actboy16/json.lua ([#48](https://github.com/linrongbin16/ci-template.nvim/issues/48))
* **actions:** drop json install, now have commons ([#46](https://github.com/linrongbin16/ci-template.nvim/issues/46))
* **ci:** revert to mono ci ([#40](https://github.com/linrongbin16/ci-template.nvim/issues/40))
* **actions:** require personal access token

### Features

* **actions:** require personal access token ([0389583](https://github.com/linrongbin16/ci-template.nvim/commit/0389583827fa49fb07f6d5f8e9604b56d0cf24c8))
* **ci:** add `setup.py` to initialize project ([#53](https://github.com/linrongbin16/ci-template.nvim/issues/53)) ([a1bc494](https://github.com/linrongbin16/ci-template.nvim/commit/a1bc494d14834becbe44fd0b77e73d2dd1868e03))
* **docs:** badges ([1db7f39](https://github.com/linrongbin16/ci-template.nvim/commit/1db7f393ca59eae83e0d86d4d9fbac218918deb3))
* **docs:** badges ([ef6f6ef](https://github.com/linrongbin16/ci-template.nvim/commit/ef6f6efae82ec5c55fb4fad188877051d3ab0d81))
* migrate 'luacheck' to 'selene' ([#67](https://github.com/linrongbin16/ci-template.nvim/issues/67)) ([a0e33c9](https://github.com/linrongbin16/ci-template.nvim/commit/a0e33c93f4ea0a45c44dc7701aa092be51d41bc6))
* **test:** running test cases in macos/windows ([#51](https://github.com/linrongbin16/ci-template.nvim/issues/51)) ([f51b688](https://github.com/linrongbin16/ci-template.nvim/commit/f51b6882e2e72a3c63c34d67539820f6f987629a))
* try 'release-please@v4' ([#74](https://github.com/linrongbin16/ci-template.nvim/issues/74)) ([c1b801d](https://github.com/linrongbin16/ci-template.nvim/commit/c1b801d9e499fb33b3a4111313a283c57c2f6617))
* use personal token for please-release ([92ee485](https://github.com/linrongbin16/ci-template.nvim/commit/92ee4855ec842794a353ffd5b3f343dd02a689fb))
* use personal token for please-release ([bfd498a](https://github.com/linrongbin16/ci-template.nvim/commit/bfd498aab95bcda96214327e590b737a553fdcf4))


### Bug Fixes

* ci ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))
* **ci:** fix PR/default branch detect ([#57](https://github.com/linrongbin16/ci-template.nvim/issues/57)) ([5ef298c](https://github.com/linrongbin16/ci-template.nvim/commit/5ef298c7fc57ea7e80adb16a3100b56a4a8bb5d7))
* **ci:** remove personal token from release-please ([733ff89](https://github.com/linrongbin16/ci-template.nvim/commit/733ff89d298ea27bfdbd4bc3b44b078679742180))
* **ci:** revert ci ([#44](https://github.com/linrongbin16/ci-template.nvim/issues/44)) ([0b4bb46](https://github.com/linrongbin16/ci-template.nvim/commit/0b4bb46c69e68ea27565d611433bee924ca232c3))
* **ci:** revert luarocks ([1d36abd](https://github.com/linrongbin16/ci-template.nvim/commit/1d36abd0da12b7f716dfc560c21f53721d56e0d2))
* **ci:** revert luarocks ([97f2bb8](https://github.com/linrongbin16/ci-template.nvim/commit/97f2bb81c05c575c783606e133ff4c78e3195c52))
* **docs:** fix minimal require Neovim version ([#19](https://github.com/linrongbin16/ci-template.nvim/issues/19)) ([bce58e3](https://github.com/linrongbin16/ci-template.nvim/commit/bce58e3a601db958b08abf0fbef2bd6801149194))
* **docs:** typing ([#31](https://github.com/linrongbin16/ci-template.nvim/issues/31)) ([e875d30](https://github.com/linrongbin16/ci-template.nvim/commit/e875d3065a5ef294818302b8d8d32ea99e1e0c57))
* fix doc badges ([#70](https://github.com/linrongbin16/ci-template.nvim/issues/70)) ([88e6d44](https://github.com/linrongbin16/ci-template.nvim/commit/88e6d44166406e988c59c812231658e0cc958be6))
* **luarocks:** only upload when tags created ([#42](https://github.com/linrongbin16/ci-template.nvim/issues/42)) ([1f297d1](https://github.com/linrongbin16/ci-template.nvim/commit/1f297d12e97f381eb48ca0b7c1809580df15957c))
* **release:** add manifest for v4 ([#75](https://github.com/linrongbin16/ci-template.nvim/issues/75)) ([a5d9662](https://github.com/linrongbin16/ci-template.nvim/commit/a5d96625ba9ad5f3870a8a4006e604442eb98bf4))
* **release:** use personal access token ([#37](https://github.com/linrongbin16/ci-template.nvim/issues/37)) ([337922b](https://github.com/linrongbin16/ci-template.nvim/commit/337922b15c0c62193ea214ebf907fb8050e571e0))
* replace 'ci-template' with '{repo}' ([#69](https://github.com/linrongbin16/ci-template.nvim/issues/69)) ([8b04b4a](https://github.com/linrongbin16/ci-template.nvim/commit/8b04b4a4fa2a89eb1a1f63828ac3dacbba5549b0))
* Update ci.yml ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))


### Performance Improvements

* **actions:** add release.yml ([#35](https://github.com/linrongbin16/ci-template.nvim/issues/35)) ([0389583](https://github.com/linrongbin16/ci-template.nvim/commit/0389583827fa49fb07f6d5f8e9604b56d0cf24c8))
* **actions:** drop json install, now have commons ([#46](https://github.com/linrongbin16/ci-template.nvim/issues/46)) ([107db18](https://github.com/linrongbin16/ci-template.nvim/commit/107db181e1a60ad50b8e03251ec2f35533ac7593))
* **ci:** merge multiple action files into single file ([#61](https://github.com/linrongbin16/ci-template.nvim/issues/61)) ([047c68e](https://github.com/linrongbin16/ci-template.nvim/commit/047c68e5d9754293732b8692ab23fd1cddc0c37e))
* **ci:** remove legacy from fzfx.nvim ([0b4bb46](https://github.com/linrongbin16/ci-template.nvim/commit/0b4bb46c69e68ea27565d611433bee924ca232c3))
* **ci:** split code coverage into separated action ([#58](https://github.com/linrongbin16/ci-template.nvim/issues/58)) ([a0d4ad6](https://github.com/linrongbin16/ci-template.nvim/commit/a0d4ad6a999a148ce7b6f2e0dc4581ad0e7a0413))
* **ci:** update name ([#49](https://github.com/linrongbin16/ci-template.nvim/issues/49)) ([cff0118](https://github.com/linrongbin16/ci-template.nvim/commit/cff0118185eae633add424da66a5d5045933b9a1))
* **codecov:** exclude json.lua file ([#20](https://github.com/linrongbin16/ci-template.nvim/issues/20)) ([e860434](https://github.com/linrongbin16/ci-template.nvim/commit/e860434f681b4fa4edf229726fbb5a76d3268cf0))
* Create ci-template.lua ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* Create version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))
* **docs:** add development ([#26](https://github.com/linrongbin16/ci-template.nvim/issues/26)) ([e99aae2](https://github.com/linrongbin16/ci-template.nvim/commit/e99aae254f369428fb0365f281b212297751cc61))
* **docs:** add usage ([#24](https://github.com/linrongbin16/ci-template.nvim/issues/24)) ([93bb632](https://github.com/linrongbin16/ci-template.nvim/commit/93bb6326f4fba51441c790bb62144844d6b309d5))
* **docs:** squash and merge PRs ([#33](https://github.com/linrongbin16/ci-template.nvim/issues/33)) ([46f3103](https://github.com/linrongbin16/ci-template.nvim/commit/46f310397e53b91620e49da4348a59132469470f))
* **docs:** use template ([#30](https://github.com/linrongbin16/ci-template.nvim/issues/30)) ([122fe28](https://github.com/linrongbin16/ci-template.nvim/commit/122fe2810fd770b04d855f51bd11784f67421523))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([54a8618](https://github.com/linrongbin16/ci-template.nvim/commit/54a861862a90928b87a9bf70066ea1ed94adee9c))
* **exrc:** add indent size for project local options ([#28](https://github.com/linrongbin16/ci-template.nvim/issues/28)) ([852dadb](https://github.com/linrongbin16/ci-template.nvim/commit/852dadb2d78e08e3cca43b3ab551802bb8f81a25))
* **json:** remove embedded actboy16/json.lua ([#48](https://github.com/linrongbin16/ci-template.nvim/issues/48)) ([b0df923](https://github.com/linrongbin16/ci-template.nvim/commit/b0df923898e3f43b1388da50fb405532441ae86c))
* rename to ci-template ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* **setup:** don't remove setup.py ([#62](https://github.com/linrongbin16/ci-template.nvim/issues/62)) ([3a56683](https://github.com/linrongbin16/ci-template.nvim/commit/3a56683bb7a5c1637cc7728397ffb7177b78cc6c))
* version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))


### Reverts

* **ci:** revert to mono ci ([#40](https://github.com/linrongbin16/ci-template.nvim/issues/40)) ([43a1eea](https://github.com/linrongbin16/ci-template.nvim/commit/43a1eeaed3be4734c1f35d9002798da60e90936f))

## [5.0.0](https://github.com/linrongbin16/ci-template.nvim/compare/v4.2.1...v5.0.0) (2024-03-04)


### ⚠ BREAKING CHANGES

* migrate 'luacheck' to 'selene' ([#67](https://github.com/linrongbin16/ci-template.nvim/issues/67))

### Features

* migrate 'luacheck' to 'selene' ([#67](https://github.com/linrongbin16/ci-template.nvim/issues/67)) ([a0e33c9](https://github.com/linrongbin16/ci-template.nvim/commit/a0e33c93f4ea0a45c44dc7701aa092be51d41bc6))


### Bug Fixes

* fix doc badges ([#70](https://github.com/linrongbin16/ci-template.nvim/issues/70)) ([88e6d44](https://github.com/linrongbin16/ci-template.nvim/commit/88e6d44166406e988c59c812231658e0cc958be6))
* replace 'ci-template' with '{repo}' ([#69](https://github.com/linrongbin16/ci-template.nvim/issues/69)) ([8b04b4a](https://github.com/linrongbin16/ci-template.nvim/commit/8b04b4a4fa2a89eb1a1f63828ac3dacbba5549b0))

## [4.2.1](https://github.com/linrongbin16/ci-template.nvim/compare/v4.2.0...v4.2.1) (2024-01-15)


### Performance Improvements

* **ci:** merge multiple action files into single file ([#61](https://github.com/linrongbin16/ci-template.nvim/issues/61)) ([047c68e](https://github.com/linrongbin16/ci-template.nvim/commit/047c68e5d9754293732b8692ab23fd1cddc0c37e))
* **setup:** don't remove setup.py ([#62](https://github.com/linrongbin16/ci-template.nvim/issues/62)) ([3a56683](https://github.com/linrongbin16/ci-template.nvim/commit/3a56683bb7a5c1637cc7728397ffb7177b78cc6c))

## [4.2.0](https://github.com/linrongbin16/ci-template.nvim/compare/v4.1.0...v4.2.0) (2024-01-15)


### Features

* **ci:** add `setup.py` to initialize project ([#53](https://github.com/linrongbin16/ci-template.nvim/issues/53)) ([a1bc494](https://github.com/linrongbin16/ci-template.nvim/commit/a1bc494d14834becbe44fd0b77e73d2dd1868e03))


### Bug Fixes

* **ci:** fix PR/default branch detect ([#57](https://github.com/linrongbin16/ci-template.nvim/issues/57)) ([5ef298c](https://github.com/linrongbin16/ci-template.nvim/commit/5ef298c7fc57ea7e80adb16a3100b56a4a8bb5d7))


### Performance Improvements

* **ci:** split code coverage into separated action ([#58](https://github.com/linrongbin16/ci-template.nvim/issues/58)) ([a0d4ad6](https://github.com/linrongbin16/ci-template.nvim/commit/a0d4ad6a999a148ce7b6f2e0dc4581ad0e7a0413))

## [4.1.0](https://github.com/linrongbin16/ci-template.nvim/compare/v4.0.0...v4.1.0) (2024-01-03)


### Features

* **test:** running test cases in macos/windows ([#51](https://github.com/linrongbin16/ci-template.nvim/issues/51)) ([f51b688](https://github.com/linrongbin16/ci-template.nvim/commit/f51b6882e2e72a3c63c34d67539820f6f987629a))


### Performance Improvements

* **ci:** update name ([#49](https://github.com/linrongbin16/ci-template.nvim/issues/49)) ([cff0118](https://github.com/linrongbin16/ci-template.nvim/commit/cff0118185eae633add424da66a5d5045933b9a1))

## [4.0.0](https://github.com/linrongbin16/ci-template.nvim/compare/v3.0.2...v4.0.0) (2023-12-14)


### ⚠ BREAKING CHANGES

* **json:** remove embedded actboy16/json.lua ([#48](https://github.com/linrongbin16/ci-template.nvim/issues/48))
* **actions:** drop json install, now have commons ([#46](https://github.com/linrongbin16/ci-template.nvim/issues/46))

### Performance Improvements

* **actions:** drop json install, now have commons ([#46](https://github.com/linrongbin16/ci-template.nvim/issues/46)) ([107db18](https://github.com/linrongbin16/ci-template.nvim/commit/107db181e1a60ad50b8e03251ec2f35533ac7593))
* **json:** remove embedded actboy16/json.lua ([#48](https://github.com/linrongbin16/ci-template.nvim/issues/48)) ([b0df923](https://github.com/linrongbin16/ci-template.nvim/commit/b0df923898e3f43b1388da50fb405532441ae86c))

## [3.0.2](https://github.com/linrongbin16/ci-template.nvim/compare/v3.0.1...v3.0.2) (2023-12-12)


### Bug Fixes

* **ci:** revert ci ([#44](https://github.com/linrongbin16/ci-template.nvim/issues/44)) ([0b4bb46](https://github.com/linrongbin16/ci-template.nvim/commit/0b4bb46c69e68ea27565d611433bee924ca232c3))


### Performance Improvements

* **ci:** remove legacy from fzfx.nvim ([0b4bb46](https://github.com/linrongbin16/ci-template.nvim/commit/0b4bb46c69e68ea27565d611433bee924ca232c3))

## [3.0.1](https://github.com/linrongbin16/ci-template.nvim/compare/v3.0.0...v3.0.1) (2023-12-12)


### Bug Fixes

* **luarocks:** only upload when tags created ([#42](https://github.com/linrongbin16/ci-template.nvim/issues/42)) ([1f297d1](https://github.com/linrongbin16/ci-template.nvim/commit/1f297d12e97f381eb48ca0b7c1809580df15957c))

## [3.0.0](https://github.com/linrongbin16/ci-template.nvim/compare/v2.0.0...v3.0.0) (2023-12-12)


### ⚠ BREAKING CHANGES

* **ci:** revert to mono ci ([#40](https://github.com/linrongbin16/ci-template.nvim/issues/40))

### Bug Fixes

* **release:** use personal access token ([#37](https://github.com/linrongbin16/ci-template.nvim/issues/37)) ([337922b](https://github.com/linrongbin16/ci-template.nvim/commit/337922b15c0c62193ea214ebf907fb8050e571e0))


### Reverts

* **ci:** revert to mono ci ([#40](https://github.com/linrongbin16/ci-template.nvim/issues/40)) ([43a1eea](https://github.com/linrongbin16/ci-template.nvim/commit/43a1eeaed3be4734c1f35d9002798da60e90936f))

## [2.0.1](https://github.com/linrongbin16/ci-template.nvim/compare/v2.0.0...v2.0.1) (2023-12-12)


### Bug Fixes

* **release:** use personal access token ([#37](https://github.com/linrongbin16/ci-template.nvim/issues/37)) ([337922b](https://github.com/linrongbin16/ci-template.nvim/commit/337922b15c0c62193ea214ebf907fb8050e571e0))

## [2.0.0](https://github.com/linrongbin16/ci-template.nvim/compare/v1.5.5...v2.0.0) (2023-12-12)


### ⚠ BREAKING CHANGES

* **actions:** require personal access token

### Features

* **actions:** require personal access token ([0389583](https://github.com/linrongbin16/ci-template.nvim/commit/0389583827fa49fb07f6d5f8e9604b56d0cf24c8))


### Performance Improvements

* **actions:** add release.yml ([#35](https://github.com/linrongbin16/ci-template.nvim/issues/35)) ([0389583](https://github.com/linrongbin16/ci-template.nvim/commit/0389583827fa49fb07f6d5f8e9604b56d0cf24c8))

## [1.5.5](https://github.com/linrongbin16/ci-template.nvim/compare/v1.5.4...v1.5.5) (2023-12-11)


### Bug Fixes

* **docs:** typing ([#31](https://github.com/linrongbin16/ci-template.nvim/issues/31)) ([e875d30](https://github.com/linrongbin16/ci-template.nvim/commit/e875d3065a5ef294818302b8d8d32ea99e1e0c57))


### Performance Improvements

* **docs:** squash and merge PRs ([#33](https://github.com/linrongbin16/ci-template.nvim/issues/33)) ([46f3103](https://github.com/linrongbin16/ci-template.nvim/commit/46f310397e53b91620e49da4348a59132469470f))
* **docs:** use template ([#30](https://github.com/linrongbin16/ci-template.nvim/issues/30)) ([122fe28](https://github.com/linrongbin16/ci-template.nvim/commit/122fe2810fd770b04d855f51bd11784f67421523))

## [1.5.4](https://github.com/linrongbin16/ci-template.nvim/compare/v1.5.3...v1.5.4) (2023-12-11)


### Performance Improvements

* **exrc:** add indent size for project local options ([#28](https://github.com/linrongbin16/ci-template.nvim/issues/28)) ([852dadb](https://github.com/linrongbin16/ci-template.nvim/commit/852dadb2d78e08e3cca43b3ab551802bb8f81a25))

## [1.5.3](https://github.com/linrongbin16/ci-template.nvim/compare/v1.5.2...v1.5.3) (2023-12-11)


### Performance Improvements

* **docs:** add development ([#26](https://github.com/linrongbin16/ci-template.nvim/issues/26)) ([e99aae2](https://github.com/linrongbin16/ci-template.nvim/commit/e99aae254f369428fb0365f281b212297751cc61))

## [1.5.2](https://github.com/linrongbin16/ci-template.nvim/compare/v1.5.1...v1.5.2) (2023-12-11)


### Performance Improvements

* **docs:** add usage ([#24](https://github.com/linrongbin16/ci-template.nvim/issues/24)) ([93bb632](https://github.com/linrongbin16/ci-template.nvim/commit/93bb6326f4fba51441c790bb62144844d6b309d5))

## [1.5.1](https://github.com/linrongbin16/ci-template.nvim/compare/v1.5.0...v1.5.1) (2023-12-09)


### Performance Improvements

* **codecov:** exclude json.lua file ([#20](https://github.com/linrongbin16/ci-template.nvim/issues/20)) ([e860434](https://github.com/linrongbin16/ci-template.nvim/commit/e860434f681b4fa4edf229726fbb5a76d3268cf0))

## [1.5.0](https://github.com/linrongbin16/ci-template.nvim/compare/v1.4.1...v1.5.0) (2023-12-09)


### Features

* **docs:** badges ([1db7f39](https://github.com/linrongbin16/ci-template.nvim/commit/1db7f393ca59eae83e0d86d4d9fbac218918deb3))
* **docs:** badges ([ef6f6ef](https://github.com/linrongbin16/ci-template.nvim/commit/ef6f6efae82ec5c55fb4fad188877051d3ab0d81))


### Bug Fixes

* **docs:** fix minimal require Neovim version ([#19](https://github.com/linrongbin16/ci-template.nvim/issues/19)) ([bce58e3](https://github.com/linrongbin16/ci-template.nvim/commit/bce58e3a601db958b08abf0fbef2bd6801149194))

## [1.4.1](https://github.com/linrongbin16/ci-template.nvim/compare/v1.4.0...v1.4.1) (2023-12-09)


### Bug Fixes

* **ci:** remove personal token from release-please ([733ff89](https://github.com/linrongbin16/ci-template.nvim/commit/733ff89d298ea27bfdbd4bc3b44b078679742180))

## [1.4.0](https://github.com/linrongbin16/ci-template.nvim/compare/v1.3.0...v1.4.0) (2023-12-09)


### Features

* use personal token for please-release ([92ee485](https://github.com/linrongbin16/ci-template.nvim/commit/92ee4855ec842794a353ffd5b3f343dd02a689fb))
* use personal token for please-release ([bfd498a](https://github.com/linrongbin16/ci-template.nvim/commit/bfd498aab95bcda96214327e590b737a553fdcf4))


### Bug Fixes

* ci ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))
* **ci:** revert luarocks ([1d36abd](https://github.com/linrongbin16/ci-template.nvim/commit/1d36abd0da12b7f716dfc560c21f53721d56e0d2))
* **ci:** revert luarocks ([97f2bb8](https://github.com/linrongbin16/ci-template.nvim/commit/97f2bb81c05c575c783606e133ff4c78e3195c52))
* Update ci.yml ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))


### Performance Improvements

* Create ci-template.lua ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* Create version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([54a8618](https://github.com/linrongbin16/ci-template.nvim/commit/54a861862a90928b87a9bf70066ea1ed94adee9c))
* rename to ci-template ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))

## [1.3.0](https://github.com/linrongbin16/ci-template.nvim/compare/v1.2.0...v1.3.0) (2023-12-09)


### Features

* use personal token for please-release ([92ee485](https://github.com/linrongbin16/ci-template.nvim/commit/92ee4855ec842794a353ffd5b3f343dd02a689fb))
* use personal token for please-release ([bfd498a](https://github.com/linrongbin16/ci-template.nvim/commit/bfd498aab95bcda96214327e590b737a553fdcf4))


### Bug Fixes

* ci ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))
* Update ci.yml ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))


### Performance Improvements

* Create ci-template.lua ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* Create version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([54a8618](https://github.com/linrongbin16/ci-template.nvim/commit/54a861862a90928b87a9bf70066ea1ed94adee9c))
* rename to ci-template ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))

## [1.2.0](https://github.com/linrongbin16/ci-template.nvim/compare/v1.1.0...v1.2.0) (2023-12-09)


### Features

* use personal token for please-release ([92ee485](https://github.com/linrongbin16/ci-template.nvim/commit/92ee4855ec842794a353ffd5b3f343dd02a689fb))
* use personal token for please-release ([bfd498a](https://github.com/linrongbin16/ci-template.nvim/commit/bfd498aab95bcda96214327e590b737a553fdcf4))


### Bug Fixes

* ci ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))
* Update ci.yml ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))


### Performance Improvements

* Create ci-template.lua ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* Create version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([54a8618](https://github.com/linrongbin16/ci-template.nvim/commit/54a861862a90928b87a9bf70066ea1ed94adee9c))
* rename to ci-template ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))

## [1.1.0](https://github.com/linrongbin16/ci-template.nvim/compare/v1.0.0...v1.1.0) (2023-12-09)


### Features

* use personal token for please-release ([92ee485](https://github.com/linrongbin16/ci-template.nvim/commit/92ee4855ec842794a353ffd5b3f343dd02a689fb))
* use personal token for please-release ([bfd498a](https://github.com/linrongbin16/ci-template.nvim/commit/bfd498aab95bcda96214327e590b737a553fdcf4))

## 1.0.0 (2023-12-09)


### Bug Fixes

* ci ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))
* Update ci.yml ([219a0fe](https://github.com/linrongbin16/ci-template.nvim/commit/219a0fe86ddd2b1dcd4c4f8779e8aa4778959785))


### Performance Improvements

* Create ci-template.lua ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* Create version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([ea4eb52](https://github.com/linrongbin16/ci-template.nvim/commit/ea4eb526bc46e117d83a80935defd2c1efd34c13))
* explicit name for luarocks ([54a8618](https://github.com/linrongbin16/ci-template.nvim/commit/54a861862a90928b87a9bf70066ea1ed94adee9c))
* rename to ci-template ([6127e76](https://github.com/linrongbin16/ci-template.nvim/commit/6127e76bac797180d97e1ec75901c2dea6fc5622))
* version.txt ([bd7241f](https://github.com/linrongbin16/ci-template.nvim/commit/bd7241f213cef3e44577069f4a59a67b78e93d2e))
