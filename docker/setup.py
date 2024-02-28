import argparse
import subprocess
import getpass

# Default values
username = "duvva"

def login_to_docker(username, password):
    try:
        login_command = f"echo {password} | docker login -u {username} --password-stdin"
        login_result = subprocess.run(login_command, shell=True, check=True, text=True)
        print("Login successful!")
    except subprocess.CalledProcessError as e:
        print("Login failed. Please check your credentials and try again.")
        print(e)

def main():
    parser = argparse.ArgumentParser(description="Docker Hub Login Script")
    parser.add_argument("-u", "--username", default=username, help="DockerHub username")
    parser.add_argument("-p", "--password", help="DockerHub password")
    args = parser.parse_args()

    if args.password == username:
        password = getpass.getpass("Please enter DockerHub password: ")
    else:
        password = args.password

    if args.username == username:
        response = input(f"Is your Docker username [{username}]? (Press Enter for default or type a new one): ".format(username))
        if response:
            docker_username = response
        else:
            docker_username = username
    else:
        docker_username = args.username

    api_key = getpass.getpass("Please enter your API key: ")

    login_to_docker(docker_username, password)

if __name__ == "__main__":
    main()
