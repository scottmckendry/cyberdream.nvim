# Changelog

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
