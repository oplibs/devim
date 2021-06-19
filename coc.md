* json
:CocInstall coc-json coc-sh coc-cmake coc-markdownlint coc-tsserver coc-html coc-css coc-pyright

* c, c++, object-c
cquery
"languageserver": {
  "cquery": {
    "command": "cquery",
    "args": ["--log-file=/tmp/cq.log"],
    "filetypes": ["c", "cc", "cpp", "c++"],
    "rootPatterns": ["compile_flags.txt", "compile_commands.json", ".git/", ".hg/"],
    "initializationOptions": {
      "cacheDirectory": "/tmp/cquery"
    }
  }
}

* docker
npm install -g dockerfile-language-server-nodejs
"languageserver": {
  "dockerfile": {
      "command": "docker-langserver",
      "filetypes": ["dockerfile"],
      "args": ["--stdio"]
  }
}

* sql
npm i -g sql-language-server (error)
"languageserver": {
  "sql": {
      "command": "sql-language-server",
      "args" : ["up", "--method", "stdio"],
      "filetypes": ["sql", "mysql"]
          }
      }
