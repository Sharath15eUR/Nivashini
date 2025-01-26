Q1.Create a file and add executable permission to all users (user, group and others)

nivashini@nivashini-VirtualBox:~$ touch sample1
nivashini@nivashini-VirtualBox:~$ chmod a+x sample1
nivashini@nivashini-VirtualBox:~$ ls -l sample1
-rwxrwxr-x 1 nivashini nivashini 0 Jan 25 22:12 sample1

Q2.Create a file and remove write permission for group user alone.

nivashini@nivashini-VirtualBox:~$ touch groupusersfile
nivashini@nivashini-VirtualBox:~$ chmod g-w groupusersfile
nivashini@nivashini-VirtualBox:~$ ls -l groupusersfile
-rw-r--r-- 1 nivashini nivashini 0 Jan 25 22:39 groupusersfile

Q3.Create a file and add a softlink to the file in different directory (Eg : Create a file in
dir1/dir2/file and create a softlink for file inside dir1)

nivashini@nivashini-VirtualBox:~$ mkdir -p dir1/dir2
nivashini@nivashini-VirtualBox:~$ touch dir1/dir2/sample
nivashini@nivashini-VirtualBox:~$ ln -s dir1/dir2/sample dir1/softlink
nivashini@nivashini-VirtualBox:~$ ls -l dir1
total 4
drwxrwxr-x 2 nivashini nivashini 4096 Jan 25 22:41 dir2
lrwxrwxrwx 1 nivashini nivashini   16 Jan 25 22:42 softlink -> dir1/dir2/sample


Q4.Use ps command with options to display all active process running on the system.

nivashini@nivashini-VirtualBox:~$ ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.2  0.1  23000 14064 ?        Ss   22:03   0:05 /sbin/init splash
root           2  0.0  0.0      0     0 ?        S    22:03   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    22:03   0:00 [pool_workqueue_release]
root           4  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-rcu_g]
root           5  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-rcu_p]
root           6  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-slub_]
root           7  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-netns]
root           8  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/0:0-cgroup_destroy]
root          10  0.0  0.0      0     0 ?        I<   22:03   0:02 [kworker/0:0H-kblockd]
root          11  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/u8:0-ext4-rsv-conversion]
root          12  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-mm_pe]
root          13  0.0  0.0      0     0 ?        I    22:03   0:00 [rcu_tasks_kthread]
root          14  0.0  0.0      0     0 ?        I    22:03   0:00 [rcu_tasks_rude_kthread]
root          15  0.0  0.0      0     0 ?        I    22:03   0:00 [rcu_tasks_trace_kthread]
root          16  0.0  0.0      0     0 ?        S    22:03   0:00 [ksoftirqd/0]
root          17  0.0  0.0      0     0 ?        I    22:03   0:02 [rcu_preempt]
root          18  0.0  0.0      0     0 ?        S    22:03   0:00 [migration/0]
root          19  0.0  0.0      0     0 ?        S    22:03   0:00 [idle_inject/0]
root          20  0.0  0.0      0     0 ?        S    22:03   0:00 [cpuhp/0]
root          21  0.0  0.0      0     0 ?        S    22:03   0:00 [cpuhp/1]
root          22  0.0  0.0      0     0 ?        S    22:03   0:00 [idle_inject/1]
root          23  0.0  0.0      0     0 ?        S    22:03   0:00 [migration/1]
root          24  0.0  0.0      0     0 ?        S    22:03   0:00 [ksoftirqd/1]
root          27  0.0  0.0      0     0 ?        S    22:03   0:00 [cpuhp/2]
root          28  0.0  0.0      0     0 ?        S    22:03   0:00 [idle_inject/2]
root          29  0.0  0.0      0     0 ?        S    22:03   0:00 [migration/2]
root          30  0.0  0.0      0     0 ?        S    22:03   0:00 [ksoftirqd/2]
root          32  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/2:0H-events_highpri]
root          33  0.0  0.0      0     0 ?        S    22:03   0:00 [cpuhp/3]
root          34  0.0  0.0      0     0 ?        S    22:03   0:00 [idle_inject/3]
root          35  0.0  0.0      0     0 ?        S    22:03   0:00 [migration/3]
root          36  0.0  0.0      0     0 ?        S    22:03   0:00 [ksoftirqd/3]
root          39  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/u9:0-events_power_efficient]
root          43  0.0  0.0      0     0 ?        S    22:03   0:00 [kdevtmpfs]
root          44  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-inet_]
root          46  0.0  0.0      0     0 ?        S    22:03   0:00 [kauditd]
root          47  0.0  0.0      0     0 ?        S    22:03   0:00 [khungtaskd]
root          48  0.0  0.0      0     0 ?        S    22:03   0:00 [oom_reaper]
root          49  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/u10:1-writeback]
root          50  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-write]
root          51  0.0  0.0      0     0 ?        S    22:03   0:00 [kcompactd0]
root          52  0.0  0.0      0     0 ?        SN   22:03   0:00 [ksmd]
root          54  0.0  0.0      0     0 ?        SN   22:03   0:00 [khugepaged]
root          55  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-kinte]
root          56  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-kbloc]
root          57  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-blkcg]
root          58  0.0  0.0      0     0 ?        S    22:03   0:00 [irq/9-acpi]
root          59  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/3:1-events]
root          60  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-tpm_d]
root          61  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-ata_s]
root          62  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-md]
root          63  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-md_bi]
root          64  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-edac-]
root          65  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-devfr]
root          66  0.0  0.0      0     0 ?        S    22:03   0:00 [watchdogd]
root          67  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/u11:1-events_freezable_power_]
root          68  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/u11:2-events_unbound]
root          69  0.0  0.0      0     0 ?        I<   22:03   0:01 [kworker/2:1H-kblockd]
root          70  0.0  0.0      0     0 ?        S    22:03   0:00 [kswapd0]
root          71  0.0  0.0      0     0 ?        S    22:03   0:00 [ecryptfs-kthread]
root          72  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-kthro]
root          73  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-acpi_]
root          75  0.0  0.0      0     0 ?        S    22:03   0:00 [scsi_eh_0]
root          76  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-scsi_]
root          77  0.0  0.0      0     0 ?        S    22:03   0:00 [scsi_eh_1]
root          78  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-scsi_]
root          80  0.0  0.0      0     0 ?        I    22:03   0:01 [kworker/u12:3-events_power_efficient]
root          82  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-mld]
root          83  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/3:1H-kblockd]
root          84  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-ipv6_]
root          92  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-kstrp]
root          95  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/u13:0]
root          99  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/u17:0-ttm]
root         113  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/u10:2-events_unbound]
root         114  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-charg]
root         140  0.1  0.0      0     0 ?        I<   22:03   0:02 [kworker/1:1H-kblockd]
root         170  0.0  0.0      0     0 ?        S    22:03   0:00 [scsi_eh_2]
root         180  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-scsi_]
root         222  0.0  0.0      0     0 ?        S    22:03   0:01 [jbd2/sda2-8]
root         223  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-ext4-]
root         276  0.0  0.1  50840 17280 ?        S<s  22:03   0:01 /usr/lib/systemd/systemd-journald
root         328  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/u8:1-ext4-rsv-conversion]
root         335  0.1  0.0      0     0 ?        S    22:03   0:05 [irq/18-vmwgfx]
root         336  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-ttm]
root         357  0.0  0.0  30416  8224 ?        Ss   22:03   0:00 /usr/lib/systemd/systemd-udevd
systemd+     397  0.0  0.0  17556  7424 ?        Ss   22:03   0:00 /usr/lib/systemd/systemd-oomd
systemd+     403  0.0  0.1  21976 13312 ?        Ss   22:03   0:00 /usr/lib/systemd/systemd-resolved
systemd+     404  0.0  0.0  91044  7680 ?        Ssl  22:03   0:00 /usr/lib/systemd/systemd-timesyncd
root         443  0.0  0.0      0     0 ?        S    22:03   0:00 [psimon]
root         537  0.0  0.0      0     0 ?        I<   22:03   0:01 [kworker/3:2H-kblockd]
root         587  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/R-crypt]
root         817  0.0  0.0      0     0 ?        I<   22:03   0:00 [kworker/0:2H-kblockd]
avahi        902  0.0  0.0   8664  4352 ?        Ss   22:03   0:00 avahi-daemon: running [nivashini-VirtualBox.local]
message+     903  0.0  0.0  12160  7040 ?        Ss   22:03   0:02 @dbus-daemon --system --address=systemd: --nofork --n
gnome-r+     906  0.0  0.1 512804 16176 ?        Ssl  22:03   0:00 /usr/libexec/gnome-remote-desktop-daemon --system
polkitd      910  0.0  0.1 325956 11652 ?        Ssl  22:03   0:01 /usr/lib/polkit-1/polkitd --no-debug
root         914  0.0  0.0 322444  6528 ?        Ssl  22:03   0:00 /usr/libexec/power-profiles-daemon
root         922  0.2  0.3 2065620 33940 ?       Ssl  22:03   0:07 /usr/lib/snapd/snapd
root         930  0.0  0.0 322356  7624 ?        Ssl  22:03   0:00 /usr/libexec/accounts-daemon
root         936  0.0  0.0  18492  2688 ?        Ss   22:03   0:00 /usr/sbin/cron -f -P
root         947  0.0  0.0 318792  6400 ?        Ssl  22:03   0:00 /usr/libexec/switcheroo-control
root         950  0.0  0.0  18152  8704 ?        Ss   22:03   0:00 /usr/lib/systemd/systemd-logind
root         951  0.0  0.1 469244 13520 ?        Ssl  22:03   0:00 /usr/libexec/udisks2/udisksd
syslog       959  0.0  0.0 222564  5888 ?        Ssl  22:03   0:00 /usr/sbin/rsyslogd -n -iNONE
avahi        968  0.0  0.0   8476  1448 ?        S    22:03   0:00 avahi-daemon: chroot helper
root         971  0.0  0.0  17376  6272 ?        Ss   22:03   0:00 /usr/sbin/wpa_supplicant -u -s -O DIR=/run/wpa_suppli
root         988  0.0  0.0      0     0 ?        I    22:03   0:00 [kworker/2:3-cgroup_destroy]
root        1027  0.0  0.1 392088 12840 ?        Ssl  22:03   0:00 /usr/sbin/ModemManager
root        1184  0.0  0.1  47500 12160 ?        Ss   22:03   0:00 /usr/sbin/cupsd -l
root        1191  0.0  0.2 121248 22656 ?        Ssl  22:03   0:00 /usr/bin/python3 /usr/share/unattended-upgrades/unatt
root        1331  0.0  0.1 345440 19012 ?        Ssl  22:03   0:00 /usr/sbin/NetworkManager --no-daemon
cups-br+    1430  0.0  0.1 268392 19968 ?        Ssl  22:03   0:00 /usr/sbin/cups-browsed
kernoops    1433  0.0  0.0  12744  2312 ?        Ss   22:03   0:00 /usr/sbin/kerneloops --test
kernoops    1440  0.0  0.0  12744  2440 ?        Ss   22:03   0:00 /usr/sbin/kerneloops
root        1500  0.0  0.0 323492  9216 ?        Ssl  22:03   0:00 /usr/sbin/gdm3
root        1513  0.0  0.0      0     0 ?        S    22:03   0:00 [psimon]
rtkit       1540  0.0  0.0  22940  3456 ?        SNsl 22:03   0:00 /usr/libexec/rtkit-daemon
colord      1659  0.0  0.1 329144 14176 ?        Ssl  22:03   0:00 /usr/libexec/colord
root        1707  0.0  0.0 325740  8832 ?        Ssl  22:03   0:00 /usr/libexec/upowerd
root        2102  0.0  0.0 472444 10752 ?        Sl   22:03   0:00 gdm-session-worker [pam/gdm-password]
nivashi+    2147  0.0  0.1  21096 12672 ?        Ss   22:04   0:01 /usr/lib/systemd/systemd --user
nivashi+    2150  0.0  0.0  21456  3640 ?        S    22:04   0:00 (sd-pam)
nivashi+    2163  0.0  0.1 124312 13764 ?        S<sl 22:04   0:00 /usr/bin/pipewire
nivashi+    2166  0.0  0.0 106804  5760 ?        Ssl  22:04   0:00 /usr/bin/pipewire -c filter-chain.conf
nivashi+    2169  0.0  0.1 415948 18304 ?        S<sl 22:04   0:00 /usr/bin/wireplumber
nivashi+    2172  0.0  0.1 125008 12852 ?        S<sl 22:04   0:00 /usr/bin/pipewire-pulse
nivashi+    2184  0.0  0.0  11016  6488 ?        Ss   22:04   0:02 /usr/bin/dbus-daemon --session --address=systemd: --n
nivashi+    2185  0.0  0.0 325604  9856 ?        SLsl 22:04   0:00 /usr/bin/gnome-keyring-daemon --foreground --componen
nivashi+    2208  0.0  0.0 693120  6912 ?        Ssl  22:04   0:00 /usr/libexec/xdg-document-portal
nivashi+    2220  0.0  0.0 318532  5760 ?        Ssl  22:04   0:00 /usr/libexec/xdg-permission-store
root        2227  0.0  0.0   2704  1920 ?        Ss   22:04   0:00 fusermount3 -o rw,nosuid,nodev,fsname=portal,auto_unm
nivashi+    2259  0.0  0.0 244336  6144 tty2     Ssl+ 22:04   0:00 /usr/libexec/gdm-wayland-session env GNOME_SHELL_SESS
nivashi+    2264  0.0  0.1 306876 16512 tty2     Sl+  22:04   0:00 /usr/libexec/gnome-session-binary --session=ubuntu
nivashi+    2385  0.0  0.0 162652  6784 ?        Ssl  22:04   0:00 /usr/libexec/gcr-ssh-agent --base-dir /run/user/1000/
nivashi+    2390  0.0  0.0 100216  5632 ?        Ssl  22:04   0:00 /usr/libexec/gnome-session-ctl --monitor
nivashi+    2410  0.0  0.0 322936  7680 ?        Ssl  22:04   0:00 /usr/libexec/gvfsd
nivashi+    2451  0.0  0.0 468380  6912 ?        Sl   22:04   0:00 /usr/libexec/gvfsd-fuse /run/user/1000/gvfs -f
nivashi+    2484  0.0  0.1 676588 18048 ?        Ssl  22:04   0:00 /usr/libexec/gnome-session-binary --systemd-service -
nivashi+    2507  0.0  0.0 382932  7680 ?        Sl   22:04   0:00 /usr/libexec/at-spi-bus-launcher --launch-immediately
nivashi+    2512  5.2  2.5 4014800 288280 ?      Rsl  22:04   2:22 /usr/bin/gnome-shell
nivashi+    2523  0.0  0.0   9608  4992 ?        S    22:04   0:00 /usr/bin/dbus-daemon --config-file=/usr/share/default
nivashi+    2573  0.0  0.0 236068  7424 ?        Sl   22:04   0:00 /usr/libexec/at-spi2-registryd --use-gnome-session
nivashi+    2584  0.0  0.1 654724 17280 ?        Sl   22:04   0:00 /usr/libexec/gnome-shell-calendar-server
nivashi+    2599  0.0  0.3 592252 42752 ?        Ssl  22:04   0:00 /usr/libexec/evolution-source-registry
nivashi+    2606  0.0  0.0 230228  5376 ?        Ssl  22:04   0:00 /usr/libexec/dconf-service
nivashi+    2611  0.0  0.2 2540168 26800 ?       Sl   22:04   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Shel
nivashi+    2615  0.1  0.1 471256 12180 ?        Ssl  22:04   0:03 /usr/bin/ibus-daemon --panel disable
nivashi+    2616  0.0  0.0 392184  6528 ?        Ssl  22:04   0:00 /usr/libexec/gsd-a11y-settings
nivashi+    2617  0.0  0.1 421576 20228 ?        Ssl  22:04   0:00 /usr/libexec/gsd-color
nivashi+    2619  0.0  0.1 440332 12032 ?        Ssl  22:04   0:00 /usr/libexec/gsd-datetime
nivashi+    2620  0.0  0.0 467532  7552 ?        Ssl  22:04   0:00 /usr/libexec/gsd-housekeeping
nivashi+    2625  0.0  0.1 420428 19716 ?        Ssl  22:04   0:00 /usr/libexec/gsd-keyboard
nivashi+    2627  0.0  0.2 750276 25092 ?        Ssl  22:04   0:00 /usr/libexec/gsd-media-keys
nivashi+    2633  0.0  0.2 605932 24196 ?        Ssl  22:04   0:00 /usr/libexec/gsd-power
nivashi+    2641  0.0  0.0 332312 11136 ?        Ssl  22:04   0:00 /usr/libexec/gsd-print-notifications
nivashi+    2648  0.0  0.0 539752  6400 ?        Ssl  22:04   0:00 /usr/libexec/gsd-rfkill
nivashi+    2650  0.0  0.0 318228  6272 ?        Ssl  22:04   0:00 /usr/libexec/gsd-screensaver-proxy
nivashi+    2651  0.0  0.1 551860 11648 ?        Ssl  22:04   0:00 /usr/libexec/gsd-sharing
nivashi+    2655  0.0  0.0 468216  8192 ?        Ssl  22:04   0:00 /usr/libexec/gsd-smartcard
nivashi+    2656  0.0  0.0 402304  9728 ?        Ssl  22:04   0:00 /usr/libexec/gsd-sound
nivashi+    2662  0.0  0.1 421400 20484 ?        Ssl  22:04   0:00 /usr/libexec/gsd-wacom
nivashi+    2670  0.0  0.5 823136 59892 ?        Sl   22:04   0:00 /usr/libexec/evolution-data-server/evolution-alarm-no
nivashi+    2695  0.0  0.0 305492  7040 ?        Sl   22:04   0:00 /usr/libexec/gsd-disk-utility-notify
nivashi+    2773  0.0  0.0 397856  9984 ?        Ssl  22:04   0:00 /usr/libexec/gvfs-udisks2-volume-monitor
nivashi+    2786  0.0  0.1 424872 14848 ?        Sl   22:04   0:00 /usr/libexec/gsd-printer
nivashi+    2793  0.0  0.2 555312 23936 ?        Sl   22:04   0:00 /usr/libexec/goa-daemon
nivashi+    2835  0.0  0.0 318460  6272 ?        Ssl  22:04   0:00 /usr/libexec/gvfs-mtp-volume-monitor
nivashi+    2839  0.0  0.0 397796  9088 ?        Sl   22:04   0:00 /usr/libexec/goa-identity-service
nivashi+    2840  0.0  0.2 899448 24576 ?        Ssl  22:04   0:00 /usr/libexec/evolution-calendar-factory
nivashi+    2849  0.0  0.0 318440  6272 ?        Ssl  22:04   0:00 /usr/libexec/gvfs-goa-volume-monitor
nivashi+    2862  0.0  0.0 398044  7808 ?        Ssl  22:04   0:00 /usr/libexec/gvfs-afc-volume-monitor
nivashi+    2863  0.0  0.0 319132  7168 ?        Sl   22:04   0:00 /usr/libexec/ibus-dconf
nivashi+    2864  0.1  0.2 430168 29440 ?        Sl   22:04   0:04 /usr/libexec/ibus-extension-gtk3
nivashi+    2868  0.0  0.0 319096  7168 ?        Sl   22:04   0:00 /usr/libexec/ibus-portal
nivashi+    2887  0.0  0.0 319428  6912 ?        Ssl  22:04   0:00 /usr/libexec/gvfs-gphoto2-volume-monitor
nivashi+    2898  0.0  0.2 834076 29696 ?        Ssl  22:04   0:00 /usr/libexec/evolution-addressbook-factory
nivashi+    2901  0.0  0.6 243140 75804 ?        S    22:04   0:00 /usr/bin/Xwayland :0 -rootless -noreset -accessx -cor
nivashi+    2907  0.0  0.0 245008  6272 ?        Ssl  22:04   0:00 /usr/libexec/gvfsd-metadata
nivashi+    2932  0.0  0.0 245440  7424 ?        Sl   22:04   0:00 /usr/libexec/ibus-engine-simple
nivashi+    2946  0.0  0.1  39000 11904 ?        Ss   22:04   0:00 /snap/snapd-desktop-integration/178/usr/bin/snapd-des
nivashi+    3017  0.0  0.0 618112  8704 ?        Sl   22:04   0:00 /usr/libexec/gvfsd-trash --spawner :1.20 /org/gtk/gvf
nivashi+    3128  0.0  0.2 429468 30604 ?        Sl   22:04   0:00 /snap/snapd-desktop-integration/178/usr/bin/snapd-des
nivashi+    3156  0.0  0.2 744796 28068 ?        SNsl 22:04   0:01 /usr/libexec/tracker-miner-fs-3
nivashi+    3162  0.0  0.6 638876 75064 ?        Ssl  22:04   0:00 /usr/libexec/gsd-xsettings
nivashi+    3186  0.0  0.2 2597620 26924 ?       Sl   22:04   0:00 /usr/bin/gjs -m /usr/share/gnome-shell/org.gnome.Scre
nivashi+    3218  0.0  0.1 710388 14664 ?        Ssl  22:04   0:00 /usr/libexec/xdg-desktop-portal
nivashi+    3229  0.0  0.3 565068 40572 ?        Ssl  22:04   0:00 /usr/libexec/xdg-desktop-portal-gnome
root        3289  0.0  0.0 322460  7240 ?        Ssl  22:04   0:00 /usr/libexec/ubuntu-advantage-desktop-daemon
nivashi+    3292  0.0  0.2 275780 24816 ?        Sl   22:04   0:00 /usr/libexec/ibus-x11
nivashi+    3302  0.0  0.7 718992 80660 ?        Sl   22:04   0:00 /usr/libexec/mutter-x11-frames
nivashi+    3305  0.0  0.2 426428 26244 ?        Ssl  22:04   0:00 /usr/libexec/xdg-desktop-portal-gtk
nivashi+    3735  0.0  0.2 577940 33412 ?        Sl   22:05   0:00 /usr/bin/update-notifier
nivashi+    4503  0.0  0.0 396900  8448 ?        Sl   22:08   0:00 /usr/libexec/gvfsd-recent --spawner :1.20 /org/gtk/gv
root        4585  0.0  0.0      0     0 ?        I<   22:09   0:00 [kworker/u14:13-ttm]
root        4587  0.0  0.0      0     0 ?        I<   22:09   0:00 [kworker/u14:14-ttm]
root        4598  0.0  0.0      0     0 ?        I<   22:09   0:00 [kworker/u15:6-ttm]
root        4727  0.0  0.0      0     0 ?        I    22:09   0:00 [kworker/u10:3-events_power_efficient]
nivashi+    4768  0.4  0.5 637812 60012 ?        Rsl  22:11   0:10 /usr/libexec/gnome-terminal-server
nivashi+    4776  0.0  0.0  19692  5248 pts/0    Ss   22:11   0:00 bash
root        4822  0.0  0.0      0     0 ?        I    22:18   0:00 [kworker/0:2-events]
root        4838  0.0  0.0      0     0 ?        I    22:23   0:00 [kworker/u9:1-events_power_efficient]
root        4846  0.1  0.0      0     0 ?        I    22:30   0:01 [kworker/u12:0-events_unbound]
root        4851  0.0  0.0      0     0 ?        I    22:30   0:00 [kworker/1:1-events]
nivashi+    4898  0.0  0.5 2950212 62396 ?       Sl   22:33   0:00 gjs /usr/share/gnome-shell/extensions/ding@rastersoft
root        4937  0.0  0.0      0     0 ?        I    22:33   0:00 [kworker/u12:2-events_power_efficient]
root        5099  0.0  0.0      0     0 ?        I<   22:34   0:00 [kworker/u16:8-ttm]
root        5107  0.0  0.0      0     0 ?        I<   22:34   0:00 [kworker/u15:13-ttm]
root        5143  0.0  0.0      0     0 ?        I    22:36   0:00 [kworker/u9:3-events_unbound]
root        5145  0.0  0.0      0     0 ?        I<   22:36   0:00 [kworker/u17:4-ttm]
nivashi+    5159 26.9  3.7 11466248 418824 ?     Sl   22:36   3:25 /snap/firefox/4793/usr/lib/firefox/firefox
nivashi+    5365  0.0  0.4 208020 49408 ?        Sl   22:36   0:00 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
nivashi+    5417  0.1  0.8 2432272 99004 ?       Sl   22:36   0:01 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
nivashi+    5446  0.5  1.2 2461704 142788 ?      Sl   22:36   0:04 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
root        5449  0.0  0.0      0     0 ?        I    22:36   0:00 [kworker/u11:3]
nivashi+    5495  0.0  0.1 1836124 20948 ?       Sl   22:36   0:00 /usr/bin/snap userd
nivashi+    5639  0.1  1.0 2443064 115932 ?      Sl   22:36   0:01 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
nivashi+    5987  0.0  0.4 206812 45312 ?        Sl   22:37   0:00 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
nivashi+    6024 45.9  6.3 3140048 705664 ?      Sl   22:37   5:47 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
nivashi+    6046  0.0  0.6 2390372 75576 ?       Sl   22:37   0:00 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
nivashi+    6079  0.0  0.6 2390364 76344 ?       Sl   22:37   0:00 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
root        6108  0.0  0.0      0     0 ?        I    22:37   0:00 [kworker/3:2-events]
nivashi+    6121  0.0  0.6 2390364 75320 ?       Sl   22:37   0:00 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
root        6325  0.0  0.0      0     0 ?        I    22:40   0:00 [kworker/1:2-cgroup_destroy]
root        6337  0.0  0.0      0     0 ?        I<   22:40   0:00 [kworker/1:0H]
root        6419  0.0  0.0      0     0 ?        I    22:42   0:00 [kworker/2:1-events]
nivashi+    6422  0.0  0.5 381540 62628 ?        Sl   22:42   0:00 /snap/firefox/4793/usr/lib/firefox/firefox -contentpr
root        6488  0.0  0.0      0     0 ?        I<   22:43   0:00 [kworker/u16:2-ttm]
root        6797  0.9  0.0      0     0 ?        I<   22:49   0:00 [kworker/0:1H-kblockd]
nivashi+    6820  0.0  0.0  22416  4736 pts/0    R+   22:49   0:00 ps aux

Q5.Create 3 files in a dir1 and re-direct the output of list command with sorted by timestamp
of the files to a file

nivashini@nivashini-VirtualBox:~$ mkdir sampledir
nivashini@nivashini-VirtualBox:~$ touch sampledir/file1 sampledir/file2 sampledir/file3
nivashini@nivashini-VirtualBox:~$ ls -lt sampledir>sampledir/sorted_output.txt
nivashini@nivashini-VirtualBox:~$ cat sampledir/sorted_output.txt
total 0
-rw-rw-r-- 1 nivashini nivashini 0 Jan 25 22:54 sorted_output.txt
-rw-rw-r-- 1 nivashini nivashini 0 Jan 25 22:53 file1
-rw-rw-r-- 1 nivashini nivashini 0 Jan 25 22:53 file2
-rw-rw-r-- 1 nivashini nivashini 0 Jan 25 22:53 file3
