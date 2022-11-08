import os
import re
import subprocess
import argparse
import csv
import pandas

def parse_args():
    arg_parser = argparse.ArgumentParser(description='Manage dev environments')
    subparsers = arg_parser.add_subparsers(help='The following commands can be used to manage the environments')

    # Parser for the "list" command
    parser_list = subparsers.add_parser('list', help='List registered environments')
    parser_list.set_defaults(command='list')

    # Parser for the "add" command
    parser_add = subparsers.add_parser('add', help='Add a dev environment')
    parser_add.set_defaults(command='add')
    parser_add.add_argument('-i', '--image', metavar='image', nargs=1, type=str, help='docker image name')
    parser_add.add_argument('-c', '--container', metavar='container', nargs=1, type=str, help='docker container name')
    parser_add.add_argument('-n', '--name', metavar='name', nargs=1, type=str, help='env name')

    # Parser for the "run" command
    parser_run = subparsers.add_parser('run', help='Run a dev environment')
    parser_run.set_defaults(command='run')
    parser_run.add_argument("name", metavar='name', nargs=1, type=str, help='env name')

    return arg_parser.parse_args()

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
            -multimonitors
            -screen 0 -wgl -nodecoration +xinerama 
            '
        """
    start_vcxsr_command = "".join(start_vcxsr_command.splitlines())
    os.system(start_vcxsr_command)

def kill_vcxsr():
    os.system("taskkill -f -im vcxsrv*")

def list_command():
    script_path = os.path.dirname(os.path.realpath(__file__))
    environments_path = os.path.join(script_path, './environments.csv')
    environments = pandas.read_csv(environments_path, sep=",\s+", engine="python")
    print(environments)
    input()

def add_command(args):
    with open('environments.csv', 'a', encoding='UTF8') as f:
        writer = csv.writer(f)
        writer.writerow([args.name[0], args.image[0], args.container[0]])

def run_command(args):
    script_path = os.path.dirname(os.path.realpath(__file__))
    environments_path = os.path.join(script_path, './environments.csv')
    environments = pandas.read_csv(environments_path, sep=",\s*", engine="python")

    import pdb; pdb.set_trace()
    environment = environments[environments["Name"] == args.name[0]].iloc[0]

    kill_vcxsr()
    # TODO: In theory I could have opened multpile enviornments using the :number in ArgumentList of vcxsrv command
    start_vcxsr()

    display_ip = get_display_ip()
    print(display_ip)

    image_name = environment["Image"]
    container_name = environment["Container"]

    # https://stackoverflow.com/questions/32073971/stopping-docker-containers-by-image-name-arch
    rm_containers_by_image_name = f"powershell -Command docker rm $(docker stop $(docker ps -a -q --filter ancestor={image_name} --format='{{{{.ID}}}}'))"
    os.system(rm_containers_by_image_name)

    # TODO: move intsall to different script
    # We can check if a container exists with: docker ps -a  -> regex by name
    # This will install the container, only needed for the first time
    docker_command = f"""docker run 
        -it 
        --gpus=all
        --privileged  
        --name {container_name} 
        -v /c:/windows 
        -v /lib/modules:/lib/modules:ro
        -e DISPLAY={display_ip}:0 
        -p 4200:4200
        --memory=16GB --memory-swap=16GB
        {image_name} 
        """ 
        # /root/dotfiles/docker/arch-base/start_i3.sh"""
    docker_command = "".join(docker_command.splitlines())

    # We just need to start the container that we already have installed
    # docker_command = f"docker start arch-base-test"

    os.system(docker_command)

def main():
    args = parse_args()

    if args.command == "list":
        list_command()
    elif args.command == "add":
        add_command(args)
    elif args.command == "run":
        run_command(args)

if __name__ == "__main__":
    main()
