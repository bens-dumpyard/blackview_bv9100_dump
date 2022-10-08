#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:61fbb4e68a106ad20c963abccc62bb6af76ccc5f; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:383868cbec3ed24c9e75f182f8e0bc95b00ac059 EMMC:/dev/block/platform/bootdevice/by-name/recovery 61fbb4e68a106ad20c963abccc62bb6af76ccc5f 33554432 383868cbec3ed24c9e75f182f8e0bc95b00ac059:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
