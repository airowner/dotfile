
from multiprocessing import Process
import sys, os

def usage(desc=None):
    print("usage: multipleprocess fork_num cmd")
    if desc:
        print(desc)
    sys.exit(0)

def callback(cmd):
    os.system(cmd)


if __name__ == '__main__':
    try:
        process_num = int(sys.argv[1])
    except:
        usage('fork_num 必须是整形，并发执行数')

    cmd = (' ').join(sys.argv[2:])

    process_list = [];

    for i in range(process_num):
        p = Process(target=callback, args=(cmd,))
        p.start()
        process_list.append(p)

    for p in process_list:
        p.join()

