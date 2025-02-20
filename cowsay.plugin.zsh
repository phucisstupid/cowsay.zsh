() {
  # %x: name of file containing code being executed
  local cowsay_dir="${${(%):-%x}:h}/cowsay"

  # Paths
  local jokes_file="$cowsay_dir/jokes.txt"
  local cowsay_path="/opt/homebrew/opt/cowsay/share/cows/opt/homebrew/opt/cowsay/share/cowsay/cows"

  # Aliases
  alias joke="rg -v '^\s*$' \"$jokes_file\" | shuf -n 1 | cowsay -f \"\$(ls \"$cowsay_path\" | shuf -n 1)\" | lolcat"

  # Ensure jokes file exists
  if [[ ! -f "$jokes_file" ]]; then
    echo "[cowsay.zsh] jokes.txt not found in $cowsay_dir" >&2
    return
  fi

  # Display a random joke automatically when the plugin is loaded
  eval $random_joke
}
