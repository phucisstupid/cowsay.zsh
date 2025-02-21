() {
  local cowsay_dir="${${(%):-%x}:h}/cowsay"
  local jokes_file="$cowsay_dir/jokes.txt"
  local cowsay_path="/opt/homebrew/opt/cowsay/share/cowsay/cows"

  if ! command -v cowsay &> /dev/null; then
    echo "[cowsay.zsh] cowsay is not installed. Please install it first." >&2 
    return
  fi

  alias joke="rg -v '^\s*$' \"$jokes_file\" | shuf -n 1 | cowsay -f \"\$(ls \"$cowsay_path\" | shuf -n 1)\" "
  alias dadjoke="rg -v '^\s*$' \"$jokes_file\" | shuf -n 1 | cowthink -f \"\$(ls \"$cowsay_path\" | shuf -n 1)\" "
}
