# Changelog

## [5.1.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v5.0.1...v5.1.0) (2025-02-18)


### Features

* **config:** remove v5.0.0 deprecation warnings and opts translations ([dd3af96](https://github.com/scottmckendry/cyberdream.nvim/commit/dd3af96edca4eb088457871d87745ed6a5d6dc02))
* small notify styling updates ([6e337f1](https://github.com/scottmckendry/cyberdream.nvim/commit/6e337f1030bb6b08e13644aec2638f45387d2b44))

## [5.0.1](https://github.com/scottmckendry/cyberdream.nvim/compare/v5.0.0...v5.0.1) (2025-02-06)


### Bug Fixes

* remove tags file potentially causing lazy updates to fail ([a4f2fec](https://github.com/scottmckendry/cyberdream.nvim/commit/a4f2feca3d1758eb8083f738fcada9414c1e3e74))

## [5.0.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.6.1...v5.0.0) (2025-02-06)


### ⚠ BREAKING CHANGES

* **config:** replace `theme` and `borderless_telescope` options
* replace `bgAlt` & `bgHighlight` with `bg_alt` & `bg_highlight`

### Features

* add deprecation warnings for updated options ([ebe3bd0](https://github.com/scottmckendry/cyberdream.nvim/commit/ebe3bd040d8ff0510bc9036fc1ad368c172e9627))
* **config:** replace `theme` and `borderless_telescope` options ([a16bbb4](https://github.com/scottmckendry/cyberdream.nvim/commit/a16bbb4736e15a650a7047bff0d800d1a4a366ed))
* **extensions:** add picker support for snacks ([a203d41](https://github.com/scottmckendry/cyberdream.nvim/commit/a203d41b17763d0288d8fc6a0db7fafd6d5aa5fb))
* **extras:** Add color for virtual ruler in helix ([#166](https://github.com/scottmckendry/cyberdream.nvim/issues/166)) ([05d44f6](https://github.com/scottmckendry/cyberdream.nvim/commit/05d44f6a0fa9c2690fd027424aea73eedf12956f))
* **extras:** add foot terminal extra ([#164](https://github.com/scottmckendry/cyberdream.nvim/issues/164)) ([a4bfe69](https://github.com/scottmckendry/cyberdream.nvim/commit/a4bfe69f11c04b8245e77df1930d2ca25dc19939))


### Code Refactoring

* replace `bgAlt` & `bgHighlight` with `bg_alt` & `bg_highlight` ([d2578fa](https://github.com/scottmckendry/cyberdream.nvim/commit/d2578fa70b021f08e09e43cc930114c872792214))

## [4.6.1](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.6.0...v4.6.1) (2025-01-17)


### Bug Fixes

* **cache:** sanitize functions in config ([baeb71a](https://github.com/scottmckendry/cyberdream.nvim/commit/baeb71a64e5fc715664032ed8e0cfb086be70caa))
* **config:** move config option to correct class ([c21f29b](https://github.com/scottmckendry/cyberdream.nvim/commit/c21f29b23c10a5e905158a487065c8ed8da2bc36))

## [4.6.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.5.0...v4.6.0) (2025-01-10)


### Features

* **extras:** add ghostty extra ([6226dd2](https://github.com/scottmckendry/cyberdream.nvim/commit/6226dd2864c0b8be406133551fca11f87acb1dcf))
* **extras:** add tab colors for kitty ([#154](https://github.com/scottmckendry/cyberdream.nvim/issues/154)) ([5597042](https://github.com/scottmckendry/cyberdream.nvim/commit/5597042d621b2b94006f6806b2f359b3acb3f994))
* set lower contrast whitespace highlight ([#155](https://github.com/scottmckendry/cyberdream.nvim/issues/155)) ([8db57c2](https://github.com/scottmckendry/cyberdream.nvim/commit/8db57c2d42dfa0b5906d48c5c69fb0ac5d40fc0a))


### Bug Fixes

* **extensions:** remove BlinkCmpLabel bg ([#158](https://github.com/scottmckendry/cyberdream.nvim/issues/158)) ([4f8dcaa](https://github.com/scottmckendry/cyberdream.nvim/commit/4f8dcaa5a989ef207f7a06ffaf5db9d17b9f9156))
* **extras:** correct kitty tab fg color ([#157](https://github.com/scottmckendry/cyberdream.nvim/issues/157)) ([e46e958](https://github.com/scottmckendry/cyberdream.nvim/commit/e46e958729a29492cc1681dac7bd8fd640a4d15b))
* **tabline:** make bg of tabline transparent ([#162](https://github.com/scottmckendry/cyberdream.nvim/issues/162)) ([b98d33a](https://github.com/scottmckendry/cyberdream.nvim/commit/b98d33ab209474e4510b9050fb55b5c9d19a8ddf))
* **treesitter:** improve contrast for asm builtins and rust imports ([dcfa0a3](https://github.com/scottmckendry/cyberdream.nvim/commit/dcfa0a3fbed7e2c60bcfb5c7ce2b02ef6c254d22))

## [4.5.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.4.0...v4.5.0) (2024-12-22)


### Features

* **cache:** auto-detect config updates & rebuild cache ([f94b960](https://github.com/scottmckendry/cyberdream.nvim/commit/f94b960ea2edf943397722f9d002802ac6add331)), closes [#147](https://github.com/scottmckendry/cyberdream.nvim/issues/147)
* **extensions:** add snacks.nvim dashboard highlights ([b0e1429](https://github.com/scottmckendry/cyberdream.nvim/commit/b0e14290e737b1ae3f3cdcaf9bdcc7c3070ab88e))
* **extensions:** extend neogit pallete and highlights ([#153](https://github.com/scottmckendry/cyberdream.nvim/issues/153)) ([2ee87ea](https://github.com/scottmckendry/cyberdream.nvim/commit/2ee87eafa03f956ebf5b507cce2bfa07a5d3a3f0))


### Bug Fixes

* **extensions:** add missing whichkey highlights ([534527b](https://github.com/scottmckendry/cyberdream.nvim/commit/534527bbdefbaccf1e99c213e98d0871e35cc596)), closes [#147](https://github.com/scottmckendry/cyberdream.nvim/issues/147)
* **extensions:** add telescope default highlights ([7312900](https://github.com/scottmckendry/cyberdream.nvim/commit/731290012f435e06e4d5d64ed7c09cec49df2663)), closes [#147](https://github.com/scottmckendry/cyberdream.nvim/issues/147)

## [4.4.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.3.0...v4.4.0) (2024-11-08)


### Features

* add new option `saturation` ([ed73819](https://github.com/scottmckendry/cyberdream.nvim/commit/ed73819ee5b17890a4fa3269644217328afdfd1b)), closes [#140](https://github.com/scottmckendry/cyberdream.nvim/issues/140)
* **extensions:** add snacks.nvim ([28cde1c](https://github.com/scottmckendry/cyberdream.nvim/commit/28cde1cf8b792e6dffe51f0d98632b361baa972b))


### Bug Fixes

* **extras:** contrast in counter status component ([6985950](https://github.com/scottmckendry/cyberdream.nvim/commit/6985950962b1c89bc2d1b6c23900dcd7b6eb245e))
* use different highlight for active window winbar ([358f6bf](https://github.com/scottmckendry/cyberdream.nvim/commit/358f6bfdd06115c139fb5518d3b95688083b7f70))

## [4.3.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.2.0...v4.3.0) (2024-10-16)


### Features

* **extensions:** add support for blink.cmp ([e16acba](https://github.com/scottmckendry/cyberdream.nvim/commit/e16acba7ed7c630bf655fd1452504fba1c38e3b2))
* **extras:** add warp terminal theme ([f6760d3](https://github.com/scottmckendry/cyberdream.nvim/commit/f6760d3b7ee3c9949d9ec1cb2f82f683e25c912d))


### Bug Fixes

* **extras:** color name typo in warp template ([1b1037f](https://github.com/scottmckendry/cyberdream.nvim/commit/1b1037f3b1cb07c6fdec2f5632a407c64e80b118))

## [4.2.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.1.0...v4.2.0) (2024-10-01)


### Features

* **extras:** base16 theme ([5be7d02](https://github.com/scottmckendry/cyberdream.nvim/commit/5be7d024b591a36b765bd7ab0732cab1c2a9b777))
* **extras:** yazi theme ([5bd0a7d](https://github.com/scottmckendry/cyberdream.nvim/commit/5bd0a7d71df2a35cde81bbe0bce1a5c83f492283))

## [4.1.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v4.0.0...v4.1.0) (2024-08-29)


### Features

* **extensions:** update markview.nvim highlight groups ([4f40270](https://github.com/scottmckendry/cyberdream.nvim/commit/4f402704f52acb53306d63f7eae1003871f723f2)), closes [#127](https://github.com/scottmckendry/cyberdream.nvim/issues/127)
* **extras:** add lsd theme ([dc99ecf](https://github.com/scottmckendry/cyberdream.nvim/commit/dc99ecf23d691e8f943574ba1b44e3f518118d62))
* **extras:** update zed windows and search highlights ([6689105](https://github.com/scottmckendry/cyberdream.nvim/commit/6689105dd79b7460f180dcb20ca11b38ae4e9488))


### Bug Fixes

* **extensions:** show Telescope results title ([#125](https://github.com/scottmckendry/cyberdream.nvim/issues/125)) ([11ef74a](https://github.com/scottmckendry/cyberdream.nvim/commit/11ef74ad01a0aa76e3775876af35590c0e5bc410))
* **extras:** fix json syntax error in tilix ([#132](https://github.com/scottmckendry/cyberdream.nvim/issues/132)) ([acdfdec](https://github.com/scottmckendry/cyberdream.nvim/commit/acdfdec82c340bdc66c4a728757f8b55cba6e630))
* **telescope:** 'flat' style look closer to readme screenshots ([a36ef6f](https://github.com/scottmckendry/cyberdream.nvim/commit/a36ef6f05ee1e1ea8c29c8ff3bee293a5bd8e7b7))
* **telescope:** fix headings for default style and remove duplicate properties ([fadfa8e](https://github.com/scottmckendry/cyberdream.nvim/commit/fadfa8ee6fa4c566958d450a552ecc092e60d8ae))

## [4.0.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.8.0...v4.0.0) (2024-08-17)


### ⚠ BREAKING CHANGES

* **config:** overrides no longer merge with defaults

### Features

* **extensions:** add helpview.nvim ([6ee2234](https://github.com/scottmckendry/cyberdream.nvim/commit/6ee2234f5b8e877d7125ba4e8fcbd317235a2c87)), closes [#122](https://github.com/scottmckendry/cyberdream.nvim/issues/122)
* **extensions:** add neogit ([#117](https://github.com/scottmckendry/cyberdream.nvim/issues/117)) ([31f31f2](https://github.com/scottmckendry/cyberdream.nvim/commit/31f31f27dbc2517f72656ad4031f15d25a20dcf2)), closes [#116](https://github.com/scottmckendry/cyberdream.nvim/issues/116)
* **extensions:** more complete hls for gitsigns.nvim ([abc44e4](https://github.com/scottmckendry/cyberdream.nvim/commit/abc44e40e3141899e57a5c87c3a5191dc1d55930))
* **extensions:** support transparent fzflua window ([1854b40](https://github.com/scottmckendry/cyberdream.nvim/commit/1854b40d92539f9bc8b29f5c118c01e928af09cd)), closes [#120](https://github.com/scottmckendry/cyberdream.nvim/issues/120)


### Bug Fixes

* **config:** overrides no longer merge with defaults ([458f1ed](https://github.com/scottmckendry/cyberdream.nvim/commit/458f1edcd851f135cbbd4fbfbf5e0d156e967570))
* **extensions:** remove redundant underline property from helpview links ([9454c83](https://github.com/scottmckendry/cyberdream.nvim/commit/9454c831c269dbdf2dc63be4afeb09697a442c52))

## [3.8.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.7.0...v3.8.0) (2024-08-06)


### Features

* **cache:** auto-generate cache on first load ([68d7298](https://github.com/scottmckendry/cyberdream.nvim/commit/68d7298210a555fb5b3ed7bcb72dfd638b0569f3))
* **extras:** add vivid extra ([#113](https://github.com/scottmckendry/cyberdream.nvim/issues/113)) ([2f45a94](https://github.com/scottmckendry/cyberdream.nvim/commit/2f45a94f456ec3c02c4b135e735b8da3fdff7433))


### Bug Fixes

* **ci:** use built in token for label removal ([0669430](https://github.com/scottmckendry/cyberdream.nvim/commit/0669430226434521095c17c989212862ccc0a26e))
* **config:** consistent hl type in overrides function and table ([8550789](https://github.com/scottmckendry/cyberdream.nvim/commit/85507898765a00339aaf2ce7c77b0c3dfb3f7380))
* **extras-rio:** Fix dimmed and light colors for light theme ([0c277c0](https://github.com/scottmckendry/cyberdream.nvim/commit/0c277c093685d17ec3045ef0a517b12a07d190cb))
* **extras:** kitty base16 correction on brights (color8) ([#110](https://github.com/scottmckendry/cyberdream.nvim/issues/110)) ([6f91fff](https://github.com/scottmckendry/cyberdream.nvim/commit/6f91fff18169c248fe3db18e124fff5bceb999a1))


### Performance Improvements

* **cache:** use JSON encoding for cached theme ([bca6544](https://github.com/scottmckendry/cyberdream.nvim/commit/bca65445e051cbc80b4b158123ef7d474430f018))

## [3.7.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.6.0...v3.7.0) (2024-07-27)


### Features

* **cache:** add experimental cache option to improve load times ([462f2ca](https://github.com/scottmckendry/cyberdream.nvim/commit/462f2cacce38c9b0ef7f66dc356b8cb6d80895f4))
* **extensions:** migrate treesitter config to an extensions ([11b9eca](https://github.com/scottmckendry/cyberdream.nvim/commit/11b9eca52bb1984b015e127ec018dc1f4ecaf63b))
* **extras:** add rio terminal ([02b29be](https://github.com/scottmckendry/cyberdream.nvim/commit/02b29be12532c821b519235d72a84810e7e01803))
* highlight undercurl only for spell groups ([0db72c2](https://github.com/scottmckendry/cyberdream.nvim/commit/0db72c2a5c0443c3732aa349b6da4344f449a254)), closes [#103](https://github.com/scottmckendry/cyberdream.nvim/issues/103)

## [3.6.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.5.0...v3.6.0) (2024-07-23)


### Features

* **extensions:** add grug-far.nvim ([916102a](https://github.com/scottmckendry/cyberdream.nvim/commit/916102a282ae99a8e7a1fc52ded19754b4452d99))
* **extensions:** add markdown.nvim ([ba25d43](https://github.com/scottmckendry/cyberdream.nvim/commit/ba25d43d68dd34d31bee88286fb6179df2763c31))
* **extras:** zed - add cursor color and change active line bg ([#101](https://github.com/scottmckendry/cyberdream.nvim/issues/101)) ([2208cfe](https://github.com/scottmckendry/cyberdream.nvim/commit/2208cfe27110a8c6fb8ee5ada84ac6f14230e7a3))


### Bug Fixes

* **markdown:** add missing H6 highlight ([7d658e7](https://github.com/scottmckendry/cyberdream.nvim/commit/7d658e768199b235e14363fa8e122754a78747c5))

## [3.5.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.4.0...v3.5.0) (2024-07-18)


### Features

* **extensions:** add hop.nvim ([70470cb](https://github.com/scottmckendry/cyberdream.nvim/commit/70470cb37386be034f7d9540c40c056f1756196a))
* **extensions:** add markview.nvim ([958ad23](https://github.com/scottmckendry/cyberdream.nvim/commit/958ad2337d73fdc898db0d0072acb4ea29e45d64))
* **extensions:** improve bg contrast for markview.nvim headings ([d96290a](https://github.com/scottmckendry/cyberdream.nvim/commit/d96290af1c2cffcfdadb266144097e5496d08fd3))
* **extras:** add zed editor theme ([7d75ae8](https://github.com/scottmckendry/cyberdream.nvim/commit/7d75ae89e0580964573c55d29da8be33634e2457))
* **palette:** remove mostly unused 'lightgrey' color ([b3125d5](https://github.com/scottmckendry/cyberdream.nvim/commit/b3125d50c94793a4a65bad7d47739f18ed8a6205))


### Bug Fixes

* **base:** improve distinction between builtin and defintion types ([b36e661](https://github.com/scottmckendry/cyberdream.nvim/commit/b36e66120020c9544771d24c5e304d755276ae2d)), closes [#96](https://github.com/scottmckendry/cyberdream.nvim/issues/96)
* **ci:** skip doc push step on pull requests ([cdfab47](https://github.com/scottmckendry/cyberdream.nvim/commit/cdfab4744cc154ce7f3ed4aae37cf9bd7c60b0ce))
* **extensions:** correctly name mixed leap/gitsigns extensions ([b91d2b1](https://github.com/scottmckendry/cyberdream.nvim/commit/b91d2b1b6bdcd308fbf913bcfa38db63ac12b99b))
* **extras:** Add modified, warning and error colors to zed theme ([#98](https://github.com/scottmckendry/cyberdream.nvim/issues/98)) ([2b52b8b](https://github.com/scottmckendry/cyberdream.nvim/commit/2b52b8b91bcae2987faf3746ad4e1891cf84ced5))

## [3.4.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.3.0...v3.4.0) (2024-07-06)


### Features

* **dx:** port folke's "dev mode" from tokyonight ([1abba18](https://github.com/scottmckendry/cyberdream.nvim/commit/1abba1897d0f527c7a10ffc1ef06e8920c7a3f7a))
* **extensions:** add gitpad.nvim ([#88](https://github.com/scottmckendry/cyberdream.nvim/issues/88)) ([6bcfdd6](https://github.com/scottmckendry/cyberdream.nvim/commit/6bcfdd60564878ca8e2cdd91b2a15a0348ee59a3))
* **extensions:** add kubectl.nvim ([#88](https://github.com/scottmckendry/cyberdream.nvim/issues/88)) ([9820cc3](https://github.com/scottmckendry/cyberdream.nvim/commit/9820cc3ce324972501e9883f2073e9bd62fd6e1f))
* **extensions:** add trouble.nvim ([#88](https://github.com/scottmckendry/cyberdream.nvim/issues/88)) ([b23ea93](https://github.com/scottmckendry/cyberdream.nvim/commit/b23ea93970c43b6e79620fef702c9db1bc869879))


### Bug Fixes

* **ci:** ignore selene warning for .lazy.lua ([0d9bcca](https://github.com/scottmckendry/cyberdream.nvim/commit/0d9bcca9ee70ab1f8c20de1b066dbb4ef76c7548))
* **config:** typo in extension type definition ([#90](https://github.com/scottmckendry/cyberdream.nvim/issues/90)) ([d118d45](https://github.com/scottmckendry/cyberdream.nvim/commit/d118d45734a71cc23d6383b4dce695bfc99afbbf))
* use bg instead of fg for diff highlight groups ([852cede](https://github.com/scottmckendry/cyberdream.nvim/commit/852cede7e655b86e3d51562ebfb886e1b635d68a))


### Performance Improvements

* **ci:** use pre-compiled selene ([e8608c3](https://github.com/scottmckendry/cyberdream.nvim/commit/e8608c315a3b44ce912f3d7d7f7dfa8cdbb1b160))

## [3.3.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.2.0...v3.3.0) (2024-06-29)


### Features

* add support for toggleable extensions ([#82](https://github.com/scottmckendry/cyberdream.nvim/issues/82)) ([07d5a85](https://github.com/scottmckendry/cyberdream.nvim/commit/07d5a85d8c7aed217cbb7fe59b3c0c982fd4822f))
* **extensions:** add alpha, cmp, dashboard, grapple ([6af8320](https://github.com/scottmckendry/cyberdream.nvim/commit/6af832028897d2652182541854ba3e3facc40655))
* **extensions:** add explicit full 'mini.nvim' support ([#86](https://github.com/scottmckendry/cyberdream.nvim/issues/86)) ([63a4dbe](https://github.com/scottmckendry/cyberdream.nvim/commit/63a4dbe911ee4a117e883c25de5da029b50cc81b))
* **extensions:** borderless fzf-lua theme ([ba05f56](https://github.com/scottmckendry/cyberdream.nvim/commit/ba05f56f9f1e2a08d1acf8952b5a209a2268842c)), closes [#81](https://github.com/scottmckendry/cyberdream.nvim/issues/81)
* **extensions:** migrate remaining theme plugins to extensions ([ad8ad48](https://github.com/scottmckendry/cyberdream.nvim/commit/ad8ad480c653144940636a52578db65ab86e8b9c))


### Bug Fixes

* **mini:** use solid color where `bg` is used as `fg` ([3d8ee41](https://github.com/scottmckendry/cyberdream.nvim/commit/3d8ee41853e43b021342d101fd7fcaf99656c3d8))
* missing `Added` and `Removed` groups ([8e5bf0b](https://github.com/scottmckendry/cyberdream.nvim/commit/8e5bf0bc8684f0bd99a514d045807a5a08742717))
* visual mode contrast ([e5b5f34](https://github.com/scottmckendry/cyberdream.nvim/commit/e5b5f34aa86b21566cc688014724fc1c57dd236d))

## [3.2.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.1.0...v3.2.0) (2024-06-17)


### Features

* **markup:** improve first look readability/distinction ([#77](https://github.com/scottmckendry/cyberdream.nvim/issues/77)) ([8546564](https://github.com/scottmckendry/cyberdream.nvim/commit/85465644bc3cdd3d5f57c7565db09bab1058668f))


### Bug Fixes

* attempted blend on transparent color after mode toggle ([c326f93](https://github.com/scottmckendry/cyberdream.nvim/commit/c326f93f6f5e8c652e3357690129e5ccf7027ffe))

## [3.1.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v3.0.0...v3.1.0) (2024-06-15)


### Features

* add highlight override function to config opts ([#70](https://github.com/scottmckendry/cyberdream.nvim/issues/70)) ([344db87](https://github.com/scottmckendry/cyberdream.nvim/commit/344db872e954de3c69b632fbc419870919a8a53b))
* **ci:** developer experience improvements ([#71](https://github.com/scottmckendry/cyberdream.nvim/issues/71)) ([b7c5f5b](https://github.com/scottmckendry/cyberdream.nvim/commit/b7c5f5b4fbed9a9655bf738d3fbf932ecfe24f78))
* **ci:** run ci checks on pull requests ([9d0662e](https://github.com/scottmckendry/cyberdream.nvim/commit/9d0662e79d0a1ccb437dee7d7cd093a076a14f3b))
* **highlights:** improved `NonText` readability ([#74](https://github.com/scottmckendry/cyberdream.nvim/issues/74)) ([aec0467](https://github.com/scottmckendry/cyberdream.nvim/commit/aec04675175107fb613e638312dd90cddca3977f))
* **telescope:** add `nvchad` borderless telescope style ([#75](https://github.com/scottmckendry/cyberdream.nvim/issues/75)) ([c1085d7](https://github.com/scottmckendry/cyberdream.nvim/commit/c1085d73fcb72edc14dab0f6a90d0e8155b51d03))
* use more distinct colors for variable types ([#73](https://github.com/scottmckendry/cyberdream.nvim/issues/73)) ([e668b02](https://github.com/scottmckendry/cyberdream.nvim/commit/e668b02fb438fe1be907dfd83f98b7eb2a563b66))


### Bug Fixes

* blended transparent color cuasing error ([99746e8](https://github.com/scottmckendry/cyberdream.nvim/commit/99746e8044552422e5b44358b50f075a71161b67))

## [3.0.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v2.0.0...v3.0.0) (2024-06-13)


### ⚠ BREAKING CHANGES

* un-break previous breaking change :poop:

### Bug Fixes

* un-break previous breaking change :poop: ([78b6bc0](https://github.com/scottmckendry/cyberdream.nvim/commit/78b6bc0a7aea89d64e2d74b24f5ea064ee6f3671))

## [2.0.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.9.0...v2.0.0) (2024-06-12)


### ⚠ BREAKING CHANGES

* theme toggling highlighting issues ([#66](https://github.com/scottmckendry/cyberdream.nvim/issues/66))

### Bug Fixes

* check colorscheme setting before executing update autocmd ([1801de8](https://github.com/scottmckendry/cyberdream.nvim/commit/1801de891253b80e2e5b8fdc7c3faf54f49b93ae))
* theme toggling highlighting issues ([#66](https://github.com/scottmckendry/cyberdream.nvim/issues/66)) ([943ba0a](https://github.com/scottmckendry/cyberdream.nvim/commit/943ba0a6704b41a2606d39b5aa3796b02c586b9b))

## [1.9.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.7.0...v1.9.0) (2024-06-08)


### Features

* add 'auto' option to use vim.o.background for light/dark theme ([ce0a60d](https://github.com/scottmckendry/cyberdream.nvim/commit/ce0a60d9258ef4bb94c995f3ad2e272e7073eef4)), closes [#63](https://github.com/scottmckendry/cyberdream.nvim/issues/63)
* add vim cmd to toggle between theme modes ([#56](https://github.com/scottmckendry/cyberdream.nvim/issues/56)) ([17f9e55](https://github.com/scottmckendry/cyberdream.nvim/commit/17f9e55bd3c349006190e7ff8203c2af6b7e3051))
* **extras:** add tmux extra ([#59](https://github.com/scottmckendry/cyberdream.nvim/issues/59)) ([9eb7c63](https://github.com/scottmckendry/cyberdream.nvim/commit/9eb7c63091d7369eba9015e9c656ca644ba6a3a4))


### Miscellaneous Chores

* release 1.9.0 ([69cedc7](https://github.com/scottmckendry/cyberdream.nvim/commit/69cedc7dfc1937c83d207bdebdb3fdfaf2cf778f))

## [1.8.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.7.0...v1.8.0) (2024-06-03)


### Features

* add vim cmd to toggle between theme modes ([#56](https://github.com/scottmckendry/cyberdream.nvim/issues/56)) ([17f9e55](https://github.com/scottmckendry/cyberdream.nvim/commit/17f9e55bd3c349006190e7ff8203c2af6b7e3051))
* **extras:** add tmux extra ([#59](https://github.com/scottmckendry/cyberdream.nvim/issues/59)) ([9eb7c63](https://github.com/scottmckendry/cyberdream.nvim/commit/9eb7c63091d7369eba9015e9c656ca644ba6a3a4))

## [1.7.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.6.0...v1.7.0) (2024-05-18)


### Features

* add support for grapple.nvim ([638e37c](https://github.com/scottmckendry/cyberdream.nvim/commit/638e37c62cc04a354b4bc1e5daafecb9356be7d8))
* **extras:** add support for kitty term ([#48](https://github.com/scottmckendry/cyberdream.nvim/issues/48)) ([3b57712](https://github.com/scottmckendry/cyberdream.nvim/commit/3b577123ca6d580c971fdc49ebf8950794c80d20))


### Bug Fixes

* add theme variant field to config class ([3b5e1df](https://github.com/scottmckendry/cyberdream.nvim/commit/3b5e1df018b239df0410fb94275a134913fd0c9f))
* **docs:** small typo in readme ([0511451](https://github.com/scottmckendry/cyberdream.nvim/commit/0511451180b81fd821bd37bca2c61b8d049f69fc))
* improve contrast for line numbers ([5827dc9](https://github.com/scottmckendry/cyberdream.nvim/commit/5827dc9a34b9f2d009ad8a75f4dd7121a3e77511))
* low contrast counter in telelscope light theme ([0511451](https://github.com/scottmckendry/cyberdream.nvim/commit/0511451180b81fd821bd37bca2c61b8d049f69fc))

## [1.6.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.5.0...v1.6.0) (2024-05-11)


### Features

* add light colors variant ([#45](https://github.com/scottmckendry/cyberdream.nvim/issues/45)) ([548968a](https://github.com/scottmckendry/cyberdream.nvim/commit/548968a9ac9e9f9d3597c4abe976df030773af69))

## [1.5.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.4.0...v1.5.0) (2024-05-07)


### Features

* add lua type annotations to config ([cf39bc4](https://github.com/scottmckendry/cyberdream.nvim/commit/cf39bc40cd4cae374aef569f7b985323e083cd15))
* add support for mini.files ([2615669](https://github.com/scottmckendry/cyberdream.nvim/commit/2615669d9815d1e975d2a3ffba5fb78745e25378))
* **extras:** add lazydocker extra ([eecc28a](https://github.com/scottmckendry/cyberdream.nvim/commit/eecc28a0cdf43b1bc74b4d5f031baff26a4be551))
* **extras:** add support for zellij ([#40](https://github.com/scottmckendry/cyberdream.nvim/issues/40)) ([a9cb4b2](https://github.com/scottmckendry/cyberdream.nvim/commit/a9cb4b229127e1b06964e73b5d55fad300b560be))


### Bug Fixes

* markdown bold and italic highlights on v9.5 ([f8342c9](https://github.com/scottmckendry/cyberdream.nvim/commit/f8342c96d4d0bfc39490a866e5e66316881571be)), closes [#32](https://github.com/scottmckendry/cyberdream.nvim/issues/32)

## [1.4.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.3.0...v1.4.0) (2024-05-05)


### Features

* add helix theme extra ([#28](https://github.com/scottmckendry/cyberdream.nvim/issues/28)) ([2420116](https://github.com/scottmckendry/cyberdream.nvim/commit/24201167df02088f66577831742d120d10a554ce))
* **CI:** update CI and other QoL updates ([#39](https://github.com/scottmckendry/cyberdream.nvim/issues/39)) ([5f60b64](https://github.com/scottmckendry/cyberdream.nvim/commit/5f60b64e16fbc870992e6414e21ae08607b7f883))
* **extras:** auto-generate extras ([#37](https://github.com/scottmckendry/cyberdream.nvim/issues/37)) ([61b2a27](https://github.com/scottmckendry/cyberdream.nvim/commit/61b2a27784bbaaa3c5a7783d951b8743164fb070))
* **gitui:** Basic theme setup for gitui ([#36](https://github.com/scottmckendry/cyberdream.nvim/issues/36)) ([03251ad](https://github.com/scottmckendry/cyberdream.nvim/commit/03251adb7ac5c29867f0658c613599af329cf917))

## [1.3.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.2.1...v1.3.0) (2024-05-03)


### Features

* add support for indent-blankline ([a9eb003](https://github.com/scottmckendry/cyberdream.nvim/commit/a9eb003663010322b3acbf41740dd8024f24acb9))
* add support for treesitter-context ([ef2cbcc](https://github.com/scottmckendry/cyberdream.nvim/commit/ef2cbccda1197f5ed07d52177456c14db27fd0f5))

## [1.2.1](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.2.0...v1.2.1) (2024-04-30)


### Bug Fixes

* differentiate matches when replacing with /gc ([d777f1b](https://github.com/scottmckendry/cyberdream.nvim/commit/d777f1bfb0e6e1d74b3f243d8e4999b6b931ae19))
* set CursorLine hl to visible color ([528085b](https://github.com/scottmckendry/cyberdream.nvim/commit/528085bc1760a76ff4e9aba4d85b0d39d2486866))

## [1.2.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.1.0...v1.2.0) (2024-04-28)


### Features

* add support for nofify ([dab90f1](https://github.com/scottmckendry/cyberdream.nvim/commit/dab90f1cf0c49bab8fb7a967d47724e075bcc437)), closes [#22](https://github.com/scottmckendry/cyberdream.nvim/issues/22)


### Bug Fixes

* typo in default config properties ([8008e70](https://github.com/scottmckendry/cyberdream.nvim/commit/8008e70302ecf70b32c7d3658dc6a346351ed93d))

## [1.1.0](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.0.1...v1.1.0) (2024-04-27)


### Features

* add fish theme ([#18](https://github.com/scottmckendry/cyberdream.nvim/issues/18)) ([19693ee](https://github.com/scottmckendry/cyberdream.nvim/commit/19693ee5a577addb4dd2f7c43474e84f283ccc3b))


### Bug Fixes

* change wezterm cursor_fg ([#19](https://github.com/scottmckendry/cyberdream.nvim/issues/19)) ([75966c7](https://github.com/scottmckendry/cyberdream.nvim/commit/75966c7ee08b6ebb6ca97fd7ee8d8f8b27103481))
* use non-conflicting hl for quickfix list ([d400d3f](https://github.com/scottmckendry/cyberdream.nvim/commit/d400d3fede6ad68df0c4c58d009da7420dcb43cb)), closes [#17](https://github.com/scottmckendry/cyberdream.nvim/issues/17)

## [1.0.1](https://github.com/scottmckendry/cyberdream.nvim/compare/v1.0.0...v1.0.1) (2024-04-27)


### Bug Fixes

* set TS [@variable](https://github.com/variable) to built-in color ([eaabbae](https://github.com/scottmckendry/cyberdream.nvim/commit/eaabbaea162e90c671cff64bdbca2d2e2a211a30))
* use visible color for colorcolumn highlight ([341178e](https://github.com/scottmckendry/cyberdream.nvim/commit/341178ea1d9da135e2aace85ff186d4ba1eea85e)), closes [#16](https://github.com/scottmckendry/cyberdream.nvim/issues/16)

## 1.0.0 (2024-04-26)


### Features

* Add highlights for dashboard-nvim ([#7](https://github.com/scottmckendry/cyberdream.nvim/issues/7)) ([6c193f4](https://github.com/scottmckendry/cyberdream.nvim/commit/6c193f40753ca356776ab2dccc3c0ac393725e26))
* add lazygit theme extra ([920f867](https://github.com/scottmckendry/cyberdream.nvim/commit/920f8670d3cf625fd3ecd00fb5ac99e76c7d553d))
* add noice lsp progress highlight groups ([917f81d](https://github.com/scottmckendry/cyberdream.nvim/commit/917f81dfeb606b1f0b0276fd0e9852e3f787e906))
* add opts for colors highlights & telescope ([#6](https://github.com/scottmckendry/cyberdream.nvim/issues/6)) ([eedbda3](https://github.com/scottmckendry/cyberdream.nvim/commit/eedbda33658e6e32bddc970da1b88653dd978ad9))
* add opts for terminal colors ([#11](https://github.com/scottmckendry/cyberdream.nvim/issues/11)) ([78a1024](https://github.com/scottmckendry/cyberdream.nvim/commit/78a1024a2e02b85274b37ba9fdfa3cf30600d6af))
* add popular terminal emulator themes ([265ed77](https://github.com/scottmckendry/cyberdream.nvim/commit/265ed77f93d3378d33c80d9c22b96488f58ab147))
* add support for heirline and gitsigns ([2276cda](https://github.com/scottmckendry/cyberdream.nvim/commit/2276cda2f400a0158d444abde0b52796a870e6d2))
* add support for lualine ([#2](https://github.com/scottmckendry/cyberdream.nvim/issues/2)) ([2988070](https://github.com/scottmckendry/cyberdream.nvim/commit/2988070d56f5fd5f243f8d620cd1f058aa4ef6e1))
* add support for rainbow-delimiters.nvim ([7daee3d](https://github.com/scottmckendry/cyberdream.nvim/commit/7daee3db5af361935f693cb45493f8400ff56a3a))
* add tmtheme extra ([93c4567](https://github.com/scottmckendry/cyberdream.nvim/commit/93c4567d6d822705906ce95be25ef1ee7945be94))
* cleaner-looking folds ([82af167](https://github.com/scottmckendry/cyberdream.nvim/commit/82af167ddab53c79455a64ae7790d759c95500b9)), closes [#13](https://github.com/scottmckendry/cyberdream.nvim/issues/13)
* define highlight for telescope selection ([279d997](https://github.com/scottmckendry/cyberdream.nvim/commit/279d99791ed659ee06208d519dc206117ff8efb5))
* make cursor line transparent by default ([7fa0734](https://github.com/scottmckendry/cyberdream.nvim/commit/7fa07343e535f29ba16a13567e220dd2c999278e))


### Bug Fixes

* add missing heirline highlight group ([f1ff29b](https://github.com/scottmckendry/cyberdream.nvim/commit/f1ff29b1a5a27cada244a2a171395feeba135036))
* add missing TS fallbacks for md headings ([3acf4fa](https://github.com/scottmckendry/cyberdream.nvim/commit/3acf4fa7a09f20d569009e7e77891782dc215921))
* cmp match hidden on selected item ([f90f0e1](https://github.com/scottmckendry/cyberdream.nvim/commit/f90f0e1cedd5db709da4bb6a2e1b27de3a09af4f))
* overly bright fillchar HLs when enbabled ([7422b6c](https://github.com/scottmckendry/cyberdream.nvim/commit/7422b6c30e483bcea925a0546c47b580b92baaa6))
* swap fg with bg in heirline hl groups ([aa28bc7](https://github.com/scottmckendry/cyberdream.nvim/commit/aa28bc743440c89bb45d67823b3d662022121026))
* typo in WinSeparator highlight group ([a80be2f](https://github.com/scottmckendry/cyberdream.nvim/commit/a80be2fecf59d0c74541ac6c10f0e2f37120afde))
* untested wezterm theme errors ([fadfe60](https://github.com/scottmckendry/cyberdream.nvim/commit/fadfe60206b8f239c11c4ee6f7b1d1f2c6c5cb12))
* update lazygit config schema url ([1845546](https://github.com/scottmckendry/cyberdream.nvim/commit/184554643fa02460b2429d4adfb8a7e6ddc89476))
* use bg highlight color for visual selection ([16833ca](https://github.com/scottmckendry/cyberdream.nvim/commit/16833ca440a6d35a6fd321dc4960c782cd7b10f4)), closes [#9](https://github.com/scottmckendry/cyberdream.nvim/issues/9)
