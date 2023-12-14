import os
import pickle


def SimpleDisplay(args):
    file_path = f"{args.save_dir}/total.pickle"

    with open(file_path, "rb") as f:
        total = pickle.load(f)

    print('total value ==== >', total)


if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser(description='Download.')
    parser.add_argument('--save_dir', default='data', type=str, help='data directory')

    args = parser.parse_args()
    SimpleDisplay(args)
