# Homebrew Tap for SMVN

Kho cài đặt Homebrew Cask chính thức cho **SMVN** (Smart Model & Multi-Agent Orchestrator for macOS).

## 🚀 Cài đặt

### Bước 1: Thêm token GitHub (chỉ cần làm 1 lần vì repo SMVN là Private)
Thêm dòng sau vào file `~/.zshrc`:
```bash
export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)
```
Sau đó tải lại cấu hình terminal:
```bash
source ~/.zshrc
```

### Bước 2: Thêm tap và cài đặt SMVN
```bash
# Thêm tap
brew tap manhnv319/tap

# Cài đặt SMVN vào /Applications
brew install --cask smvn
```

---

## 🔄 Cập nhật phiên bản mới

Mỗi khi có bản phát hành mới trên GitHub Releases, chỉ cần chạy 1 lệnh:
```bash
brew upgrade --cask smvn
```

---

## 🗑️ Gỡ cài đặt
```bash
brew uninstall --cask smvn
```
