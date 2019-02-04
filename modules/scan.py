#Gak Usah Recode Tools Ini Ya Stah ^_^
from urllib2 import Request, urlopen, URLError, HTTPError

def Space(j):
        i = 0
        while i<=j:
                print " ",
                i+=1
def kentod():
        f = open("exploit.txt","r");
        link = raw_input("Target : ")
        print "\n\033[39;1mHasil : \n"
        while True:
                sub_link = f.readline()
                if not sub_link:
                        break
                req_link = "http://"+link+"/"+sub_link
                req = Request(req_link)
                try:
                        response = urlopen(req)
                except HTTPError as e:
                        continue
                except URLError as e:
                        continue
                else:
                        print "Vuln ! = ",req_link
kentod()
