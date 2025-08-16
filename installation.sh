set -e

APP_NAME="dawg"
INSTALL_DIR="/usr/local/bin"
INSTALLING_REPO="https://github.com/Arya-1-HR/Run-Dawg/main/bin/dawg"

echo "[*] Installing $APP_NAME from "$INSTALLING_REPO" to "$INSTALL_DIR" ..."
curl -L "$INSTALLING_REPO" -o "$APP_NAME"
sudo mv "$APP_NAME" "$INSTALL_DIR/"
sudo chmod -x "$INSTALL_DIR/$APP_NAME"

echo "[*] Installation complete! Running $APP_NAME..."
echo "[*] Run command "$APP_NAME" to start"