#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
# 添加 PassWall 源
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> feeds.conf.default
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default

# 更新 feeds
./scripts/feeds update -a
./scripts/feeds install -a
```

4. **提交更改**：点击 **Commit changes** → **Commit changes**

---

### 第五步：开始编译！🚀

1. 点击顶部 **Actions** 标签
2. 点击左侧 **Build OpenWrt**
3. 点击右侧蓝色按钮 **Run workflow** 
4. 在弹出菜单中再次点击绿色按钮 **Run workflow**

**现在就开始编译了！** ⏳

---

## ⏱️ 等待编译完成

- **编译时间**：大约 2-4 小时
- **进度查看**：在 Actions 页面可以看到进度
- **状态标识**：
  - 🟡 黄色圆圈 = 正在编译
  - ✅ 绿色对勾 = 编译成功
  - ❌ 红色叉号 = 编译失败

---

## 📥 下载编译好的固件

编译成功后：

1. 在 **Actions** 页面，点击你的编译任务
2. 滚动到底部 **Artifacts** 区域
3. 点击下载：
```
   📦 OpenWrt_firmware_rockchip_armv8_xxxxx.zip
