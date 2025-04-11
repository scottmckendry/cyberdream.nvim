## Usage

### Install

1. Create the k9s config directory if it doesn't exist:

   ```sh
   mkdir -p ~/.config/k9s/skins
   ```

2. Download the `cyberdream.yml` or `cyberdream-light.yml` skin file to your k9s skins directory:

   ```sh
   # For dark theme
   curl -o ~/.config/k9s/skins/cyberdream.yml https://raw.githubusercontent.com/scottmckendry/cyberdream.nvim/refs/heads/main/extras/k9s/cyberdream.yml
   # For light theme
   curl -o ~/.config/k9s/skins/cyberdream.yml https://raw.githubusercontent.com/scottmckendry/cyberdream.nvim/refs/heads/main/extras/k9s/cyberdream-light.yml
   ```

3. Configure k9s to use the skin by editing `~/.config/k9s/config.yml`:

   ```yaml
   k9s:
     skin: cyberdream
   ```

   Or for light theme:

   ```yaml
   k9s:
     skin: cyberdream-light
   ```
