import inspect


def read_file(file_path: str) -> str:
    r: str
    try:
        with open(file_path) as f:
            r = f.read()
    except Exception as ex:
        print('Error in {}(): {}'.format(str(inspect.currentframe().f_code.co_name), str(ex)))
    return r