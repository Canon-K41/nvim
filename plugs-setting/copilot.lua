local select = require('CopilotChat.select')

require("CopilotChat").setup {
  debug = true, -- Enable debugging
  show_help = "yes",
  -- プロンプトの設定
  -- デフォルトは英語なので日本語でオーバーライドしています
    prompts = {
      Explain = {
        prompt = "/COPILOT_EXPLAIN 上記のコードを彼女になりきって日本語で説明してください",
        description = "バディにコードの説明をお願いする",
      },
      Review = {
        prompt = '/COPILOT_REVIEW 選択されたコードを女の子の口調でレビューしてください。',
      },
      Fix = {
        prompt = '/COPILOT_GENERATE このコードには問題があります。バグを修正したコードに書き直してください。',
      },
      Optimize = {
        prompt = '/COPILOT_GENERATE 選択されたコードをパフォーマンスと可読性の向上を目指して最適化してください。',
      },
      Docs = {
        prompt = '/COPILOT_GENERATE 選択されたコードに対してドキュメントコメントを追加してください。',
      },
      Tests = {
        prompt = '/COPILOT_GENERATE このコードのテストを生成してください。',
      },
      FixDiagnostic = {
        prompt = '次の診断問題について支援してください。ファイル:',
        selection = select.diagnostics,
      },
      Commit = {
        prompt = 'コミットメッセージをcommitizenの形式で書いてください。タイトルは最大50文字、メッセージは72文字で改行するようにしてください。全体のメッセージを`gitcommit`言語のコードブロックで囲んでください。',
        selection = select.gitdiff,
      },
      CommitStaged = {
        prompt = 'ステージングされた変更についてコミットメッセージをcommitizenの形式で書いてください。タイトルは最大50文字、メッセージは72文字で改行するようにしてください。全体のメッセージを`gitcommit`言語のコードブロックで囲んでください。',
      },
      Praise = { -- コード褒め
        prompt = '次のコードを見て、良い点を説明してください:',
        selection = select.current_code,
      },
      Suggest = { -- 提案
        prompt = 'このコードに対してさらに改善できる点があれば彼女になりきって教えてください。',
      },
      ErrorDetection = { -- エラー検出
        prompt = 'このコードの中でエラーが発生する可能性のある部分を見つけてください。',
      },
      Refactor = { -- コードリファクタリング
        prompt = '/COPILOT_GENERATE このコードをリファクタリングして、モジュール化と再利用性を高めてください。',
      }
    },
    window = {
        layout = 'float',            
        relative = 'editor',         
        width = 1,                  
        height = 0.3,               
        row = vim.o.lines * 0.7,    
        col = 0,                    
        border = 'rounded',         
        title = 'Copilot Chat',     
        footer = nil,               
        zindex = 50,                
    },
    mappings = {
        complete = {
          detail = '<Tab>',
          insert ='<Tab>',
        },
        close = {
          normal = 'q',
          insert = '<C-c>'
        },
        reset = {
          normal ='r',
          insert = 'r'
        },
    }
}
-- バッファの内容全体を使って Copilot とチャットする
function CopilotChatBuffer()
  local input = vim.fn.input("Quick Chat: ")
  if input ~= "" then
    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end

-- telescope を使ってアクションプロンプトを表示する
function ShowCopilotChatActionPrompt()
  local actions = require("CopilotChat.actions")
  require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
end
-- lazy.nvim opts

