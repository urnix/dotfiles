# WARNING: `rw` + `nobrowse` options is not safe...

diskutil unmount /dev/disk2s1 &&
sudo mkdir /Volumes/Elements &&
sudo mount -w -t ntfs -o rw,nobrowse /dev/disk2s1 /Volumes/Elements &&
open /Volumes/Elements