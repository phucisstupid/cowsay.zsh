() {
  local cowsay_dir="${${(%):-%x}:h}/cowsay"
  local jokes_file="$cowsay_dir/jokes.txt"
  local cowsay_path="/opt/homebrew/opt/cowsay/share/cowsay/cows"

  if ! command -v cowsay &> /dev/null; then
    echo "[cowsay.zsh] cowsay is not installed. Please install it first." >&2 
    return
  fi

  if [[ ! -f "$jokes_file" ]]; then
    echo "[cowsay.zsh] jokes.txt not found in $cowsay_dir. Please ensure the file exists." >&2
    return
  fi

  if [[ ! -d "$cowsay_path" ]]; then
    echo "[cowsay.zsh] cowsay path not found: $cowsay_path" >&2
    return
  fi

  joke() {
    rg -v '^\s*$' "$jokes_file" | shuf -n 1 | cowsay -f "$(ls "$cowsay_path" | shuf -n 1)" | lolcat
  }

  dadjoke() {
    rg -v '^\s*$' "$jokes_file" | shuf -n 1 | cowthink -f "$(ls "$cowsay_path" | shuf -n 1)" | lolcat
  }

  alias joke=joke
  alias dadjoke=dadjoke

  if [[ -z "$NO_JOKE_ON_STARTUP" ]]; then
    (joke &)  # Run in background to avoid overriding the shell prompt
  fi
}
