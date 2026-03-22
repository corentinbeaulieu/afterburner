# mach — International Orange (Aerospace) prompt + syntax colors

# Syntax highlighting
set -g fish_color_normal e0e0e0
set -g fish_color_command ff4f00 --bold # keywords / commands
set -g fish_color_keyword ff4f00 --bold
set -g fish_color_builtin ff7a33 # builtins
set -g fish_color_function ffb380 # function names
set -g fish_color_param c0c0c0 # arguments
set -g fish_color_option c0c0c0
set -g fish_color_string ff7a33 # strings
set -g fish_color_string_escaped e09b30 # escape sequences
set -g fish_color_operator 4dbfa8 # | > & etc.
set -g fish_color_redirection 4dbfa8
set -g fish_color_end 666666 # semicolons, newlines
set -g fish_color_comment 4a4a4a --italics
set -g fish_color_error ba160c --bold
set -g fish_color_escape e09b30
set -g fish_color_quote ff7a33

# Autosuggestions & search
set -g fish_color_autosuggestion 333333
set -g fish_color_search_match --background=2a1500

# Selection
set -g fish_color_selection --background=2a1500

# Pager (tab completions)
set -g fish_pager_color_progress 666666
set -g fish_pager_color_prefix ff4f00 --bold --underline
set -g fish_pager_color_completion e0e0e0
set -g fish_pager_color_description 4a4a4a
set -g fish_pager_color_selected_background --background=2a1500
set -g fish_pager_color_selected_prefix ff4f00 --bold
set -g fish_pager_color_selected_completion e0e0e0

# Prompt — ❯ in orange, dims on non-zero exit
function fish_prompt
    set -l last_status $status
    set -l cwd (prompt_pwd --full-length-dirs 2 2>/dev/null; or basename (pwd))

    # CWD
    set_color ff7a33
    echo -n $cwd

    # Git branch
    if command -q git
        set -l branch (git branch --show-current 2>/dev/null)
        if test -n "$branch"
            set_color 666666
            echo -n " ("
            set_color cc3f00
            echo -n $branch
            set_color 666666
            echo -n ")"
        end
    end

    echo -n " "

    # Glyph — orange on success, red on error
    if test $last_status -eq 0
        set_color ff4f00 --bold
    else
        set_color e04b4b --bold
    end
    echo -n "❯ "
    set_color normal
end

function fish_right_prompt
    set -l last_status $status
    if test $last_status -ne 0
        set_color e04b4b --bold
        echo -n "[$last_status]"
        set_color normal
    end
end
