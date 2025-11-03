return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
        "lua_ls",
        "html",
        "emmet_ls",
        "ts_ls",
        "cssls",
        "tailwindcss",
        "intelphense",
			},
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local config = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Lua
			config.lua_ls.setup({
				capabilities = capabilities,
			})

			-- HTML
			config.html.setup({
				capabilities = capabilities,
			})

			-- Emmet
			config.emmet_ls.setup({
				capabilities = capabilities,
				filetypes = {
					"html",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"php",
					"blade",
				},
			})

			-- TypeScript/JavaScript
			config.ts_ls.setup({
				capabilities = capabilities,
			})

			-- CSS
			config.cssls.setup({
				capabilities = capabilities,
			})

      -- PHP
			config.intelphense.setup({
				capabilities = capabilities,
				settings = {
					intelphense = {
						files = {
							maxSize = 5000000,
						},
						environment = {
							includePaths = {
								"vendor",
								"node_modules",
							},
						},
						stubs = {
							"apache",
							"bcmath",
							"bz2",
							"calendar",
							"com_dotnet",
							"Core",
							"ctype",
							"curl",
							"date",
							"dba",
							"dom",
							"enchant",
							"exif",
							"FFI",
							"fileinfo",
							"filter",
							"fpm",
							"ftp",
							"gd",
							"gettext",
							"gmp",
							"hash",
							"iconv",
							"imap",
							"intl",
							"json",
							"ldap",
							"libxml",
							"mbstring",
							"meta",
							"mysqli",
							"oci8",
							"odbc",
							"openssl",
							"pcntl",
							"pcre",
							"PDO",
							"pdo_mysql",
							"pdo_pgsql",
							"pdo_sqlite",
							"pgsql",
							"Phar",
							"posix",
							"pspell",
							"readline",
							"Reflection",
							"session",
							"shmop",
							"SimpleXML",
							"snmp",
							"soap",
							"sockets",
							"sodium",
							"SPL",
							"sqlite3",
							"standard",
							"superglobals",
							"sysvmsg",
							"sysvsem",
							"sysvshm",
							"tidy",
							"tokenizer",
							"xml",
							"xmlreader",
							"xmlrpc",
							"xmlwriter",
							"xsl",
							"Zend OPcache",
							"zip",
							"zlib",
							-- Frameworki
							"wordpress",
							"laravel",
							"symfony",
							"phpunit",
							-- Rozszerzenia Composer
							"mongodb",
							"redis",
							"memcached",
							"xdebug",
						},
					},
				},
			})
		end,
	},
}
