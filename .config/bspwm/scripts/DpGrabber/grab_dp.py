from pathlib import Path
from typing import Union
import subprocess as sp


def find_connectd_dp():
    
    process = sp.run("xrandr -q", shell=True, capture_output=True, text=True)

    process_output: str = process.stdout 

