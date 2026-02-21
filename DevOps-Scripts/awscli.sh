# 1. Download
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# 2. Install unzip (if not installed)
sudo apt update
sudo apt install unzip -y

# 3. Unzip
unzip awscliv2.zip

# 4. Install AWS CLI
sudo ./aws/install

# 5. Verify
aws --version
