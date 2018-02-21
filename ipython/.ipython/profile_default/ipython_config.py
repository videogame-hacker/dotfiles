c = get_config()

c.TerminalIPythonApp.display_banner = False
c.InteractiveShell.colors = "linux"

from IPython.terminal.prompts import Prompts, Token

class BasicPrompt(Prompts):
    def in_prompt_tokens(self, cli=None):
        return [(Token.Prompt, ">>> ")]

    def out_prompt_tokens(self):
        return [(Token.OutPrompt, "=== ")]

c.TerminalInteractiveShell.prompts_class = BasicPrompt
