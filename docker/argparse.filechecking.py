import argparse
import os
def checking(folder):
    files_list = []
    directories_list = []
    try:
        if os.path.exists(folder) and os.path.isdir(folder):
            item_path = os.listdir(folder)
            for item in item_path:
                item_path = os.path.join(folder, item)
                if os.path.isfile(item_path):
                    files_list.append(item_path)
                elif os.path.isdir(item_path):
                    directories_list.append(item_path)
            print("\n*******************List of files*********************:")
            print("\nFiles:")
            for files in files_list:
                print(files)
            print("\n*****************List of Directories*****************:")
            print("\nDirectories:")
            for directories in directories_list:
                print(directories)
        else:
            print(f"{folder} does not exits")
    except Exception as e:
        print(f"FileExistsError :{e}")

def main():
    dfolder = "/src_data"
    parser = argparse.ArgumentParser(description="checking folder")
    parser.add_argument('-f', '--foldername', type=str, default=dfolder, help='specifiy the folder name')
    args = parser.parse_args()
    checking(args.foldername)

if __name__ == "__main__":
    main()
