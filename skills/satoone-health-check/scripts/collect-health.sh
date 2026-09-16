#!/usr/bin/env bash
set -u

section() { printf '\n=== %s ===\n' "$1"; }
run() { printf '$ %s\n' "$*"; "$@" 2>&1 || printf '[exit=%s]\n' "$?"; }

section META
run date -Is
run whoami
run hostnamectl
run uname -a
run uptime
run timedatectl

section COMPUTE
run lscpu
run free -h
run vmstat 1 3
run sh -c "grep -H . /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq 2>/dev/null"
run ps -eo pid,ppid,stat,comm,%cpu,%mem --sort=-%cpu

section STORAGE
run lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINT,ROTA,RO
run df -hT -x tmpfs -x devtmpfs
run df -ih -x tmpfs -x devtmpfs
run sh -c "cat /sys/block/mmcblk*/device/life_time /sys/block/mmcblk*/device/pre_eol_info 2>/dev/null"

section THERMAL_POWER
run sh -c 'for z in /sys/class/thermal/thermal_zone*; do echo "$z"; cat "$z/type" "$z/temp" 2>/dev/null; done'
run sh -c "grep -H . /sys/class/thermal/cooling_device*/{type,cur_state,max_state} 2>/dev/null"
run sh -c 'for p in /sys/class/power_supply/*; do echo "$p"; grep -H . "$p"/{type,status,capacity,voltage_now,current_now,power_now} 2>/dev/null; done'

section SERVICES_LOGS
run systemctl is-system-running
run systemctl --failed --no-pager --plain
run journalctl -p 0..3 -b --no-pager -n 120
run journalctl -k -p 0..4 -b --no-pager -n 160

section NETWORK
run ip -brief link
run ip -brief address
run ip route
run iw dev wlan0 link
run ping -c 4 -W 2 192.168.15.1
run ping -c 4 -W 2 1.1.1.1
run getent ahostsv4 deb.debian.org
run ss -lntup

section PERIPHERALS
run lsusb
run sh -c 'for f in /sys/class/drm/card*-HDMI-*/status /sys/class/drm/card*-HDMI-*/modes; do echo "$f"; cat "$f" 2>/dev/null; done'
run sh -c "grep -E '^(N: Name|H: Handlers)' /proc/bus/input/devices"
run aplay -l

section MAINTENANCE_SECURITY
run dpkg --audit
run sh -c "apt-get -s upgrade 2>/dev/null | grep -E '^[0-9]+ upgraded|^Inst '"
run who
run last -n 10
if command -v ufw >/dev/null; then run ufw status; else echo 'ufw: not installed'; fi
if [ "$(id -u)" -eq 0 ]; then
  run sh -c "/usr/sbin/sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication|maxauthtries|x11forwarding)'"
else
  echo 'Privileged SSH/log details may be incomplete; rerun after sudo -i when required.'
fi

