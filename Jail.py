#!/usr/bin/env /usr/bin/python3
from difflib import SequenceMatcher
import subprocess
import re
import os

def run_cmd(cmd, get_output=True, timeout=35, stop_on_error=True):
    output =  ""
    try:
        if get_output:
            p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
            output, err = p.communicate(timeout=timeout)
            rc = p.returncode
        else:
            result = subprocess.check_call(cmd, stderr=subprocess.STDOUT, shell=True, timeout=timeout)
    except subprocess.CalledProcessError as e:
        if stop_on_error:
            msg = 'Falla en sudo_cmd: %s' % (e.returncode, str(e))
    except Exception as e:
        if stop_on_error:
            msg = 'Falla en sudo_cmd: %s' % str(e)
    return output

def check(test_str):
    pattern = r'[^\.acflst*\-\s]'
    if re.search(pattern, test_str):
        print('Caracter invalido en el comando %r, solo los caracteres en los corchetes son permitidos [.acflst*- ]\n' % (test_str))
        print('Caracter no permitido.')
    
    else:
        try: 
            output = run_cmd(cmd, get_output=True, stop_on_error=True)
            print(output)
        except OSError:
            print('Error desconocido')

while True:
    try:
        s = input('Encuentra el codigo >>')
    except:
        break

    try:
        cmd = s
        check(cmd)
    except OSError:
        print('Error desconocido.')
