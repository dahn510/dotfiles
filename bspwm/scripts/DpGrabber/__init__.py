from threading import Lock
from typing import Dict, List, Any
import functools



def singleton(cls):
    
    @functools.wraps(cls)
    def wrapper_singleton(*args, **kwargs):
        if not wrapper_singleton.instance:
            wrapper_singleton.instance = cls(*args, **kwargs)
        return wrapper_singleton.instance

    wrapper_singleton.instance = None
    return wrapper_singleton



@singleton
class Config():
    
    def __init__(self, cmd: List[Any]):
        self._cmd = cmd
        self._env_var: str = "PREFERRED_DISPLAY_PORT"
        self._env_dp_prefix: str = "CONNECTED_DISPLAY_PORT"

