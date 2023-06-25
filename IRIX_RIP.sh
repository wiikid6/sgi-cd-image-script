#!/bin/bash
echo "Starting IRIX CD-ROM rip..."
dd if=/dev/cdrom of=IRIX_CD.iso bs=2048
echo "Rip Finished!"
echo "Mounting disk file to test intact filesystem..."
mount -o loop -t efs IRIX_CD.iso ./IRIX_MNT
echo "Done..."
echo "Listing files to manually verify filesystem integrity"
ls ./IRIX_MNT
echo "If filesystem is intact, all files on disk should be viewable!"
echo "Script Completed"
