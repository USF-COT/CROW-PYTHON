import os
import multiprocessing

try:
    import gevent
    wc = "gevent"
except ImportError:
    wc = "sync"

port = int(os.environ.get("PORT", 8000))
bind = "0.0.0.0:%d" % (port)
workers = multiprocessing.cpu_count()*2+1
worker_class = wc
timeout = 10
proc_name = "crow"
pidfile = "crow.pid"
