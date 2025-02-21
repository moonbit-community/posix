# get ./src/examples all directories
import os
import glob
import typing

def build_moon_run_cmd(path : str ):
    # 	moon run src/examples/01-close/ --target native
    return f'moon run {path} --target native'

def clean_example_env():
    os.system('rm -rf ./tmp')

def build_example_env():
    os.system('mkdir -p ./tmp')
    with open('./tmp/input.txt', 'w') as f:
        f.write('Lorem ipsum odor amet, consectetuer adipiscing elit.')


def run_moon_run_cmd(path : str):
    clean_example_env()
    build_example_env()
    print(f"running: {os.path.basename(path)}")
    status = os.system(build_moon_run_cmd(path))
    
    if status != 0:
        exit(status)
        
    # if ./tmp/output.txt exists, print it
    out = "./tmp/output.txt"
    if os.path.exists(out):
        with open(out, 'r') as f:
            print(f"{out}: ")
            print(f.read())

def exclude_files(dir : str, exclude : list[str]):
    for basename in exclude:
        if dir.endswith(basename):
            return False 
    return True 

# main function
def main():
    clean_example_env()
    build_example_env()

    dirs = glob.glob('./src/examples/*')
    exclude = ['00-template', '35-pause']
    dirs = [dir for dir in dirs if exclude_files(dir,exclude) and os.path.isdir(dir)]
    # dir exclude and isdir

    dirs.sort()
    
    for dir in dirs:
        run_moon_run_cmd(dir)
        print("")

if __name__ == '__main__':
    main()