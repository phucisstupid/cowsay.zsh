# 🐮 cowsay.zsh

A simple Zsh plugin that displays a joke with `cowsay` and `lolcat` every time you open a terminal.

## 📥 Installation

### Using Zinit🌻
   ```sh
   zinit depth"1" lucid nocd light-mode atload"joke" for phucleeuwu/cowsay.zsh 
   ```
### Manual Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/phucleeuwu/cowsay.zsh.git ~/cowsay.zsh
   ```
2. Source the plugin in your `.zshrc`:
   ```sh
   source ~/cowsay.zsh/cowsay.plugin.zsh
   ```
3. Restart your terminal:
   ```sh
   source ~/.zshrc
   ```

## 🛠 Usage
Just open your terminal! The plugin will automatically display a joke every session 
If you don't want automatic display:
   ```sh
   zinit depth"1" lucid nocd light-mode for phucleeuwu/cowsay.zsh 
   ```

You can also manually trigger it:
```sh
joke
```
or:
```sh
dadjoke
```

## 🔄 Automatic Joke Updates
This repository includes a GitHub Actions workflow to update `jokes.txt` daily.
To update jokes, use git pull for git install
Zinit update:
```sh
zinit update phucleeuwu/cowsay.zsh
```

### Workflow Details:
- Fetches 100 new jokes from `icanhazdadjoke.com`
- Commits and pushes updates to `jokes.txt`
- Runs every day at midnight (UTC)

## 🚀 Customization
You can customize the joke behavior by modifying `joke.plugin.zsh`. Here’s what you can do:

- **Change joke source:** Modify the `jokes_file` path.
- **Use a specific cowsay character:** Replace `ls` with a fixed filename, e.g., `cowsay -f dragon`.

## 🐧 Dependencies
Ensure you have these installed:
- `cowsay`
- `lolcat`
- `ripgrep (rg)`
- `jq`

Install them via Homebrew:
```sh
brew install cowsay lolcat ripgrep jq
```

## 📜 License
MIT License - Feel free to use and modify!

---
Made with 🐮💬 by [phucleeuwu](https://github.com/phucleeuwu)

