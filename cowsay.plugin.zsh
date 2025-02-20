() {
  local cowsay_dir="${${(%):-%x}:h}/cowsay"
  local jokes_file="$cowsay_dir/jokes.txt"
  local cowsay_path="/opt/homebrew/opt/cowsay/share/cowsay/cows"

  if [[ ! -f "$jokes_file" ]]; then
    echo "[cowsay.zsh] jokes.txt not found in $cowsay_dir" >&2
    return
  fi

  alias joke="rg -v '^\s*$' \"$jokes_file\" | shuf -n 1 | cowsay -f \"\$(ls \"$cowsay_path\" | shuf -n 1)\" | lolcat"
  alias dadjoke="rg -v '^\s*$' \"$jokes_file\" | shuf -n 1 | cowthink -f \"\$(ls \"$cowsay_path\" | shuf -n 1)\" | lolcat"
}
