import time
import xbmc
import os

if __name__ == '__main__':
  monitor = xbmc.Monitor()

  while not monitor.abortRequested():
    if monitor.waitForAbort(10):
      break
  xbmc.log("Turning off steam controllers at %s" % time.time(), level=xbmc.LOGNOTICE)
  os.system("resources/lib/shutdownsteamcontrollers.sh")
   
