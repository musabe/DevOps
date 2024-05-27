## Complete Guide for Setting Up a DevOps Pipeline Using 5 Ubuntu VMs

# Step 1: Install VMware Workstation

1. Download and install VMware Workstation on your host machine.
2. Open VMware Workstation.

## Step 2: Create a New Virtual Machine

1. Click on "Create a New Virtual Machine" in the VMware Workstation dashboard.
2. Select "Typical" configuration and click "Next."
3. Choose "Installer disc image file (iso)" and browse to select the Ubuntu ISO file.
4. Follow the on-screen instructions to complete the Ubuntu VM setup.
5. Repeat this step to create a total of 7 Ubuntu VMs.

## Step 3: Power On and Configure Ubuntu VMs

1. Power on each Ubuntu VM.
2. Follow the Ubuntu installation wizard to set up each VM with a unique hostname, username, and password.
3. Update each VM with the latest packages using the terminal:sudo apt update
sudo apt upgrade

4. Install OpenSSH server on each VM to allow remote access:sudo apt install openssh-server

## Step 4: Clone Ubuntu VMs

1. Shutdown one of the configured Ubuntu VMs.
2. Right-click on the VM in VMware Workstation and select "Manage" -> "Clone."
3. Choose the appropriate cloning options and provide a new name for the cloned VM.
4. Power on the cloned VM and configure it as needed.

## Step 5: Set Up DevOps Tools

1. Install Git on each Ubuntu VM to manage source code:sudo apt install git
2. Install Jenkins for automation server:sudo apt install default-jre
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins

3. Configure Jenkins to set up continuous integration pipelines.

## Step 6: Connect the VMs in a Pipeline

1. Use Jenkins to create pipelines that connect the Ubuntu VMs in a DevOps pipeline.
2. Define stages and tasks for each VM in the pipeline.

## Step 7: Test and Run the DevOps Pipeline

1. Test the pipeline by triggering builds and deployments.
2. Monitor the pipeline for any issues and optimize as needed.


