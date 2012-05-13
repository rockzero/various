# 西暦から平成に変換する

ad = ARGV[0].to_i


tenmei = ad - 1780
an_ei = ad - 1771
meiwa = ad - 1763
houreki = ad - 1750
kan_en = ad - 1747
enkyou = ad - 1743
kanpou = ad - 1740
genbun = ad - 1735
kyouhou = ad - 1715
shoutoku = ad - 1710
houei = ad - 1703
genroku = ad - 1687
joukyou = ad - 1683
tenna = ad - 1680
enpou = ad - 1672
kanbun = ad - 1660
manji = ad - 1657
meireki = ad - 1654
jouou = ad - 1651
keian = ad - 1647
shouhou = ad - 1643
kanei = ad - 1623
genna = ad - 1614
keityou = ad - 1595
bunroku = ad - 1591
tenshou = ad - 1572
genki = ad - 1569
eiroku = ad - 1557
man_en = ad - 1859
kouji = ad - 1554
tenbun = ad - 1531
kyouroku = ad - 1527
daiei = ad - 1520
eishou = ad - 1503
bunki = ad - 1500
meiou = ad - 1491
entoku = ad - 1488
choukyou = ad - 1486
bunmei = ad - 1468
ounin = ad - 1466
bunshou = ad - 1465
kanshou = ad - 1459
chouroku = ad - 1456
koushou = ad - 1454
kyoutoku = ad - 1451
houtoku = ad - 1448
bun_an = ad - 1443
kakitsu = ad - 1440
eikyou = ad - 1428
shouchou = ad - 1427
ouei = ad - 1393
meitoku = ad - 1389
kouou = ad - 1388
kakei = ad - 1386
shitoku = ad - 1383
eitoku = ad - 1380
kouryaku = ad - 1379
eiwa = ad - 1374
if ad > 1988
  gengou = ad - 1988
  print "平成"
elsif ad > 1925
gengou = ad - 1925
  print "昭和"
elsif ad > 1912
gengou = ad - 1911
  print "大正"
elsif ad > 1867
gengou = ad - 1867
  print "明治"
elsif ad > 1864
gengou = ad - 1864
  print "慶応"
elsif ad > 1863
gengou = ad -1863
  print "元治"
elsif ad > 1860
gengou = ad - 1860
print "文久"
elsif ad > 1859
gengou = ad - 1859
print "万延"
elsif ad > 1853
gengou = ad - 1853
print "安政"
elsif ad > 1847
gengou = ad - 1847
  print "嘉永"
elsif ad > 1843
gengou = ad - 1843
  print "弘化"
elsif ad > 1829
gengou = ad - 1829
print "天保"
elsif ad > 1817
gengou = ad - 1817
print "文政"
elsif ad > 1803
gengou = ad - 1803
print "文化"
elsif ad > 1800
gengou = ad - 1800  
print "享和"
elsif 
gengou = ad - 1788                                                                                 
print "寛政"
else
gengou = ad
  print "西暦"
end
if gengou == 1
gengou = "元"
end
print "#{gengou}年\n"
