import os
import re
import subprocess

# Run this script to open arch
# Run "supervisord &" to start i3

def get_display_ip() -> str:
    ipconfig_result = subprocess.check_output(["ipconfig.exe"]).decode('utf-8')
    display_ip = None

    start_searching = False
    for line in ipconfig_result.splitlines():
        if "WSL" in line:
            start_searching = True
        if start_searching is True:
            display_ip_search = re.search("IPv4\D*(\d*\.\d*\.\d*\.\d*)", line)
            if display_ip_search:
                display_ip = display_ip_search.group(1)

    if not display_ip:
        print("Could not find display IP address")
        return

    return display_ip

def start_vcxsr():
    # Arguments for VcXsrv
    # https://gist.github.com/ctaggart/68ead4d0d942b240061086f4ba587f5f
    # "C:\Program Files\VcXsrv\vcxsrv.exe"" :0 -screen 0 @2 -wgl -nodecoration +xinerama -screen 1 @1 -wgl -nodecoration +xinerama -engine 1
    start_vcxsr_command = r"""
        powershell -Command Start-Process -FilePath 'C:\Program Files\VcXsrv\vcxsrv.exe' 
        -ArgumentList ':0 
            -ac
            -screen 0 @1 -wgl -nodecoration +xinerama 
            -screen 1 @2 -wgl -nodecoration +xinerama'"""
    start_vcxsr_command = "".join(start_vcxsr_command.splitlines())
    os.system(start_vcxsr_command)

def kill_vcxsr():
    os.system("taskkill -f -im vcxsrv*")

def start():

    kill_vcxsr()
    start_vcxsr()

    display_ip = get_display_ip()
    print(display_ip)

    ubuntu_command = f"""
        ubuntu 
            -c "~/dotfiles/dev-environment/wsl/wlaunch {display_ip}:0"
        """
        # /root/dotfiles/docker/arch-base/start_i3.sh"""
    print(ubuntu_command)
    ubuntu_command = "".join(ubuntu_command.splitlines())

    os.system(ubuntu_command)

if __name__ == "__main__":
    start()
