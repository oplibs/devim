* json
:CocInstall coc-json
* bash
:CocInstall coc-sh
* c, c++, object-c
"languageserver": {
      "clangd": {
          "command": "clangd",
          "rootPatterns": ["compile_flags.txt", "compile_commands.json"],
          "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"]
      }
}
:CocInstall coc-clangd

* cmake
:CocInstall coc-cmake

* docker
npm install -g dockerfile-language-server-nodejs
"languageserver": {
  "dockerfile": {
      "command": "docker-langserver",
      "filetypes": ["dockerfile"],
      "args": ["--stdio"]
  }
}

* markdown
:CocInstall coc-markdownlint

* sql
npm i -g sql-language-server (error)
"languageserver": {
  "sql": {
      "command": "sql-language-server",
      "args" : ["up", "--method", "stdio"],
      "filetypes": ["sql", "mysql"]
          }
      }
