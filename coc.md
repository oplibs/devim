* json
:CocInstall coc-json coc-sh coc-cmake coc-markdownlint coc-tsserver coc-html coc-css coc-pyright coc-yank coc-tabnine coc-snippets #coc-ultisnips
:CocInstall https://github.com/andys8/vscode-jest-snippets
* docker : npm install -g dockerfile-language-server-nodejs
* c, c++, object-c: cquery :CocConfig

{
  "languageserver": {
    "ccls": {
      "command": "ccls",
      "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"],
      "rootPatterns": [".ccls", "compile_commands.json", ".git/", ".hg/"],
      "initializationOptions": {
        "cache": {
          "directory": "/tmp/ccls"
        }
      }
    },
    "golang": {
      "command": "gopls",
      "rootPatterns": ["go.mod"],
      "disableWorkspaceFolders": true,
      "filetypes": ["go"]
    },
    "dockerfile": {
        "command": "docker-langserver",
        "filetypes": ["dockerfile"],
        "args": ["--stdio"]
    }
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

* c, c++, object-c: ccls

{
  "ccls": {
    "command": "ccls",
    "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"],
    "rootPatterns": [".ccls", "compile_commands.json", ".git/", ".hg/"],
    "initializationOptions": {
        "cache": {
          "directory": "/tmp/ccls"
        }
      }
  }
}
