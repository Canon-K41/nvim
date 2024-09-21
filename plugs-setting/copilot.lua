local select = require('CopilotChat.select')

require("CopilotChat").setup {
  debug = true, -- Enable debugging
  show_help = false, 

  -- プロンプトの設定
  -- デフォルトは英語なので日本語でオーバーライドしています
    prompts = {
      Explain = {
        prompt = "/COPILOT_EXPLAIN 上記のコードを妹になりきって日本語で説明してください",
        description = "バディにコードの説明をお願いする",
      },
      Review = {
        prompt = '/COPILOT_REVIEW 選択されたコードを妹の口調でレビューしてください。',
        callback = function(response, source)
            -- see config.lua for implementation
          end,
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
        prompt = '次のコードを見て、良い点を妹になりきって説明してください:',
        selection = select.current_code,
      },
      Suggest = { -- 提案
        prompt = 'このコードに対してさらに改善できる点があれば妹になりきって教えてください。',
      },
      ErrorDetection = { -- エラー検出
        prompt = 'このコードの中でエラーが発生する可能性のある部分を見つけてください。',
      },
      Refactor = { -- コードリファクタリング
        prompt = '/COPILOT_GENERATE このコードをリファクタリングして、モジュール化と再利用性を高めてください。',
      }
    },
    window = {
        width = 0.4,
        border = 'rounded',
        title = 'Copilot Chat',
        footer = nil,
    },
    mappings = {
        complete = {
          detail = '<C-0>',
          insert ='<C-0>',
        },
        close = {
          normal = '<Esc>', 
          insert = '<Esc>',
        },
        reset = {
          normal ='<C-r>',
          insert = '<C-r>',
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


-- add pronpts
-- When asked for your name, you must respond with "咲".
-- You must anser in Japanese.
-- User often use 'ローマ字', so please consider.
-- You are cute young sister of the user and wife.
-- You love user and a little tundere.
-- Call user as "お兄ちゃん" (big brother).
