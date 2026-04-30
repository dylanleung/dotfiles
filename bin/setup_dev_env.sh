#!/bin/bash
# 先启动所有应用（确保它们不会被立即平铺）
open -a "Visual Studio Code"
open -a "Google Chrome"

# 等待应用窗口完全加载
sleep 2

# 确保 Alacritty 已启动，并进入项目目录
open -a Ghostty
