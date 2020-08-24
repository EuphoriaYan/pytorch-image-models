

import os
import sys
import re
import argparse
from random import random
from shutil import copy

parser = argparse.ArgumentParser()
parser.add_argument('--src_dir', type=str, required=True)
parser.add_argument('--dst_dir', type=str, required=True)
args = parser.parse_args()


def checkDir(dir):
    if not os.path.isdir(dir):
        os.mkdir(dir)
    return


if __name__ == '__main__':
    src_dir = args.src_dir
    dst_dir = args.dst_dir
    checkDir(src_dir)
    checkDir(dst_dir)

    file_list = os.listdir(src_dir)
    for f in file_list:
        label = f.split('~')[0]
        checkDir(os.path.join(dst_dir, label))
        copy(os.path.join(src_dir, f), os.path.join(dst_dir, label))
