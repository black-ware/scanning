#jangan Recode ya stah
#!/usr/bin/env python
from urllib2 import Request, urlopen, URLError, HTTPError
def Space(j):
        i = 0
        while i<=j:
                print " "
                i+=1
def adfin():
        f = open("wrd.txt","r");
        print("\033[39;1mTarget ( ex : http://www.blackware.com / https://blackware.com ")
        link = raw_input("\033[32;1mroot@BlackWare_Sec : ")
	print "\033[92m \n\nlink adminnya ! : \n"
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
                        print "OK => ",req_link
adfin()
