import os
import re
import subprocess

# Run this script to open ubuntu
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


def start():

    # Arguments for VcXsrv
    # https://gist.github.com/ctaggart/68ead4d0d942b240061086f4ba587f5f
    start_vcxsr_command = r"""
        powershell -Command Start-Process -FilePath 'C:\Program Files\VcXsrv\vcxsrv.exe' 
        -ArgumentList ':0 
            -screen 0 @2 -wgl -nodecoration +xinerama 
            -screen 1 @1 -wgl -nodecoration +xinerama'"""
    start_vcxsr_command = "".join(start_vcxsr_command.splitlines())

    os.system(start_vcxsr_command)

    display_ip = get_display_ip()
    print(display_ip)

    # https://stackoverflow.com/questions/32073971/stopping-docker-containers-by-image-name-ubuntu
    image_name = "ubuntu-base"
    container_name = "ubuntu-base-test"
    rm_containers_by_image_name = f"powershell -Command docker rm $(docker stop $(docker ps -a -q --filter ancestor={image_name} --format='{{{{.ID}}}}'))"
    os.system(rm_containers_by_image_name)
    rm_containers_by_image_name = f"powershell -Command docker rm $(docker stop $(docker ps -a -q --filter name={container_name}))"
    os.system(rm_containers_by_image_name)

    # TODO: move intsall to different script
    # We can check if a container exists with: docker ps -a  -> regex by name
    # This will install the container, only needed for the first time
    # docker_command = f"docker run -it -v /c:/windows -e DISPLAY={display_ip}:0 --name {container_name} {image_name} supervisord"
    docker_command = f"docker run -it -v /c:/windows -e DISPLAY={display_ip}:0 --name {container_name} {image_name} ~/dotfiles/docker/ubuntu-base/start_i3.sh"

    # We just need to start the container that we already have installed
    # docker_command = f"docker start ubuntu-base-test"

    os.system(docker_command)

if __name__ == "__main__":
    start()
