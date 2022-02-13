SHELL=/bin/bash
PATH=/usr/bin:/bin:/usr/local/bin
MAILTO=phuijse@inf.uach.cl

# Download models from gdrive every day at 0:00 AM
0 0 * * * /root/custom-torch-serve-image/download_models.sh
