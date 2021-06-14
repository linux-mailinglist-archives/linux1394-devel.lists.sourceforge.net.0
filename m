Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 279173A686C
	for <lists+linux1394-devel@lfdr.de>; Mon, 14 Jun 2021 15:51:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lsmzr-0000ZZ-Mx; Mon, 14 Jun 2021 13:51:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <rpinfo@e.kozworkwear.company>) id 1lsmzW-0000Yk-Nn
 for linux1394-devel@lists.sourceforge.net; Mon, 14 Jun 2021 13:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:List-Unsubscribe
 :Message-ID:Subject:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/aIDyx6m29BKUG+/3b9miWMUaCWVSBpZQDDS/LyBck=; b=JC+PyJjBZksD2VoupnFGtZcmsb
 XR5oueUmOOIV2Ade4LgCAIHLTVytpGS/Kwc1Eq+wOU3DdLXwqrd10yMjdJUdJn/ZpVUdYcMafURZM
 vIFhTXq1WYoQ31HUoBvQ1PcUuGWlOdkzHe/NcXkzmAR+kMLTv8+fXawhfd0uucALbtV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:List-Unsubscribe:Message-ID:Subject:
 From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y/aIDyx6m29BKUG+/3b9miWMUaCWVSBpZQDDS/LyBck=; b=mI2N7udm7Gcl/EcZ0f6qft4jUZ
 Cnp5ZiUU8ucTJUvcLvebUNI0Y73ToS7xYImosrFMlRKNuY6v0AqqYMke+sw7FdxQ99OuOqACoJws/
 nAR7/DM9ayHtjxEcRmdcuB4d9cjr/dooaPbVNOU9EU8GJNv9qLB5boNITVqfQH7C8O+s=;
Received: from eagle18-86.ebulteni.com ([185.131.210.86])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsmzC-0008IZ-7c
 for linux1394-devel@lists.sourceforge.net; Mon, 14 Jun 2021 13:51:03 +0000
Received: by eagle18-86.ebulteni.com for
 <linux1394-devel@lists.sourceforge.net>;
 Mon, 14 Jun 2021 16:45:56 +0300 (envelope-from <rpinfo@e.kozworkwear.company>)
Date: Mon, 14 Jun 2021 16:43:14 +0300
To: linux1394-devel@lists.sourceforge.net
From: Koz Workwear <info@e.kozworkwear.company>
Subject: 2021 Workwear Collection by WeTransfer
Message-ID: <c477f14dff439291cf737ae77c7ea8a1@eagle18-86.ebulteni.com>
Importance: Normal
X-STRW: bulk-b0bb41170183ede97bfb-2673-837332
X-CSA-Complaints: whitelist-complaints@eco.de
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.131.210.86 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lsmzC-0008IZ-7c
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Reply-To: info@kozworkwear.company
Content-Type: multipart/mixed; boundary="===============7236726979777078348=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============7236726979777078348==
Content-Type: multipart/alternative;
	boundary="b1_c477f14dff439291cf737ae77c7ea8a1"


--b1_c477f14dff439291cf737ae77c7ea8a1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

=0A=0A [=0A'http://e.kozworkwear.company/system/emailshow.php?mid=3D12da3ec=
e1544b2198738605dc80f106ee5568be9860e844af7&aid=3Dlinux1394-devel@lists.sou=
rceforge.net=0A] =0A=0A2021 Workwear Collection by WeTransferIf you're havi=
ng trouble viewing this=0Aemail please click here.. =0APlease add info@e.ko=
zworkwear.company to your e-mail address book or safe=0Asender list.=0A=0A =
   Hi ,=0A=0A Sorry to disturb=0A=0A We are workwear manufacturer in Istanb=
ul since 2016 exporting all Europe=0Aabout 46 different brands especially i=
n Germany and Sweden.=0A=0A Please see below link for our collection or you=
 can ask us as an=0Aattachment.=0A=0A https://we.tl/t-DXSWKBP5Rk [=0Ahttp:/=
/e.kozworkwear.company/system/gopage.php?m=3D2673&l=3D15070964&id=3De44c503=
5d75cbf083348b0d53bc4bb881279ff4228b568c005&g=3Db0bb41170183ede97bfb=0A]=0A=
=0A OR you can see our fresh design in our instagram account =0A=0A https:/=
/stock.setrow.com/pimage/2673/images/image_2.png [=0Ahttp://e.kozworkwear.c=
ompany/system/gopage.php?m=3D2673&l=3D15070967&id=3D05d8206c9b9596a525d42ab=
fbb69c55592e7716f00e4b26347&g=3Db0bb41170183ede97bfb=0A]=0A=0A Our minumum =
quantity is 50 pcs with your logo and colors.=0A=0A Best Regards=0A=0A SERD=
AR KZ=0A Marketing Manager=0A=0A Mobile : +90 531 3170251=0A Direct: +90 21=
2 596 0898=0A E-mail: serdar@koz.company [=0Ahttp://e.kozworkwear.company/s=
ystem/gopage.php?m=3D2673&l=3D15070970&id=3Dedfef7e5f7ff71ab4d5fe2094145592=
b2a4a23283ec99440e2&g=3Db0bb41170183ede97bfb=0A]=0A _______________________=
_________=0A=0A Turgut zal Mah. Tongubaba cad.Torium Evleri No:21/12=0A 345=
13-Esenyurt=0A Istanbul/TURKIYE=0A https://stock.setrow.com/pimage/2673/ima=
ges/image-20210614163605-1.jpeg=0A LETS DRESS UP YOUR COMPANY OR MAKE YOUR =
BRAND SPECIAL=0A=0A https://stock.setrow.com/pimage/2673/images/image-20210=
614163605-2.jpeg [=0Ahttp://e.kozworkwear.company/system/gopage.php?m=3D267=
3&l=3D15070973&id=3D62b560b7a503b7b115b7dfd2a2b1e7c7a23715fec5659cf600=0Afo=
nt-size: 11px; color: #535353; font-family: Tahoma, Arial, Helvetica,=0Asan=
s-serif; text-decoration: none'>Click here to update your subscription=0Ain=
formation=0A=0Ahttp://www.setrow.com/images/signs/poweredbyfooterv2.png [=
=0Ahttp://www.setrow.com/tr/index.php?utm_source=3DSetrow&utm_medium=3DSign=
&utm_campaign=3D2673=0A]=0A=0A=0A=0A=0A [=0Ahttp://e.kozworkwear.company/sy=
stem/unsubscribe.php?adress=3Dlinux1394-devel@lists.sourceforge.net&aid=3D3=
20701001&lang=3DEng&m=3D2673&bid=3D12da3ece1544b2198738605dc80f106ee5568be9=
860e844af7=0A] =0A=0A

--b1_c477f14dff439291cf737ae77c7ea8a1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.=
w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html xmlns=3D'http://www.w3.=
org/1999/xhtml'><head><title>2021 Workwear Collection by WeTransfer</title>=
<meta http-equiv=3D'Content-Type' content=3D'text/html; charset=3Dutf-8' />=
</head><body><img alt=3D'Please View Images' src=3D'http://e.kozworkwear.co=
mpany/system/goruntulenme.php?adress=3Dlinux1394-devel@lists.sourceforge.ne=
t&aid=3D320701001&bid=3D12da3ece1544b2198738605dc80f106ee5568be9860e844af7&=
m=3D2673' width=3D'0px' height=3D'0px'><table width=3D'100%' align=3D'cente=
r' border=3D'0' cellpadding=3D'0' cellspacing=3D'0'><tr><td align=3D'center=
' valign=3D'top'><span style=3D'font-size: 11px; color: #999; font-family: =
Tahoma, Arial, Helvetica, sans-serif;'>If you're having trouble viewing thi=
s email please <a href=3D'http://e.kozworkwear.company/system/emailshow.php=
?mid=3D12da3ece1544b2198738605dc80f106ee5568be9860e844af7&aid=3Dlinux1394-d=
evel@lists.sourceforge.net&m=3D2673' style=3D'font-size: 11px; color: #999;=
 font-family: Tahoma, Arial, Helvetica, sans-serif;'><span style=3D'font-si=
ze: 11px; color: #999; font-family: Tahoma, Arial, Helvetica, sans-serif;'>=
click here..&nbsp;</span></a><br/><u style=3D'font-size: 11px; color: #999;=
 font-family: Tahoma, Arial, Helvetica, sans-serif;'>Please add <a href=3D'=
mailto:info@e.kozworkwear.company' style=3D'font-size: 11px; color: #999; f=
ont-family: Tahoma, Arial, Helvetica, sans-serif;'>info@e.kozworkwear.compa=
ny</a> to your e-mail address book or safe sender list.</u></span></td></tr=
><tr><td align=3D'center'><html>
<head>
=09<title></title>
</head>
<body>Hi ,<br />
<br />
Sorry to disturb<br />
<br />
We are workwear manufacturer in Istanbul since 2016 exporting all Europe ab=
out 46 different brands especially in Germany and Sweden.<br />
<br />
Please see below link for our collection or you can ask us as an attachment=
.<br />
<br />
<a href=3D"http://e.kozworkwear.company/system/gopage.php?m=3D2673&l=3D1507=
0964&id=3De44c5035d75cbf083348b0d53bc4bb881279ff4228b568c005&g=3Db0bb411701=
83ede97bfb">https://we.tl/t-DXSWKBP5Rk</a><br />
<br />
<br />
<br />
OR you can see our fresh design in our instagram account&nbsp;<br />
<br />
<a href=3D"http://e.kozworkwear.company/system/gopage.php?m=3D2673&l=3D1507=
0967&id=3D05d8206c9b9596a525d42abfbb69c55592e7716f00e4b26347&g=3Db0bb411701=
83ede97bfb"><img height=3D"30" src=3D"https://stock.setrow.com/pimage/2673/=
images/image_2.png" width=3D"30" /></a><br />
<br />
Our minumum quantity is 50 pcs with your logo and colors.<br />
<br />
Best Regards<br />
<br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt"><span style=3D"font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style=3D"color:#404040=
">Serdar K&Ouml;Z</span></span></span></b></span></span><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><span lang=3D"EN-US" style=3D"font-size:9.0pt"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style=3D"color:#404040">M=
arketing Manager</span></span></span></span></span><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f">&nbsp;</span></span><br />
<br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><span lang=3D"EN-US" style=3D"font-size:9.0pt"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style=3D"color:#404040">M=
obile : +90 531 3170251</span></span></span></span></span><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><span lang=3D"EN-US" style=3D"font-size:9.0pt"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style=3D"color:#404040">D=
irect: +90 212 596 0898</span></span></span></span></span><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><span lang=3D"EN-US" style=3D"font-size:9.0pt"><span style=3D"font-famil=
y:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style=3D"color:#404040">E=
-mail:&nbsp;<a href=3D"http://e.kozworkwear.company/system/gopage.php?m=3D2=
673&l=3D15070970&id=3Dedfef7e5f7ff71ab4d5fe2094145592b2a4a23283ec99440e2&g=
=3Db0bb41170183ede97bfb" style=3D"color:blue; text-decoration:underline">se=
rdar@koz.company</a></span></span></span></span></span><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><span lang=3D"SV" style=3D"font-size:9.0pt"><span style=3D"font-family:&=
quot;Arial&quot;,&quot;sans-serif&quot;"><span style=3D"color:#404040">____=
____________________________</span></span></span></span></span><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f">&nbsp;</span></span><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><span style=3D"font-size:9.0pt"><span style=3D"font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;"><span style=3D"color:#404040">Turgut &Ouml;zal=
 Mah. Tongu&ccedil;baba cad.Torium Evleri No:21/12</span></span></span></sp=
an></span><br />
<span style=3D"font-size:11pt"><span style=3D"background:white"><span style=
=3D"line-height:18.0pt"><span style=3D"font-family:Calibri,sans-serif"><spa=
n style=3D"font-size:9.0pt"><span style=3D"font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;"><span style=3D"color:#404040">34513-Esenyurt</span></=
span></span></span></span></span></span><br />
<span style=3D"font-size:11pt"><span style=3D"background:white"><span style=
=3D"line-height:18.0pt"><span style=3D"font-family:Calibri,sans-serif"><spa=
n style=3D"font-size:9.0pt"><span style=3D"font-family:&quot;Arial&quot;,&q=
uot;sans-serif&quot;"><span style=3D"color:#404040">Istanbul/TURKIYE</span>=
</span></span></span></span></span></span><br />
<img height=3D"100" src=3D"https://stock.setrow.com/pimage/2673/images/imag=
e-20210614163605-1.jpeg" width=3D"100" /><br />
<span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-seri=
f"><b><span style=3D"font-size:8.0pt"><span style=3D"font-family:&quot;Sego=
e Script&quot;"><span style=3D"color:#17365d"><span style=3D"text-transform=
:uppercase"><span style=3D"letter-spacing:.75pt">lET&#39;s DRESS&nbsp;UP&nb=
sp;YOUR COMPANY</span></span></span></span></span></b><b> </b><b><span styl=
e=3D"font-size:8.0pt"><span style=3D"font-family:&quot;Segoe Script&quot;">=
<span style=3D"color:#17365d"><span style=3D"text-transform:uppercase"><spa=
n style=3D"letter-spacing:.75pt">OR</span></span></span></span></span></b><=
b> </b><b><span style=3D"font-size:8.0pt"><span style=3D"font-family:&quot;=
Segoe Script&quot;"><span style=3D"color:#17365d"><span style=3D"text-trans=
form:uppercase"><span style=3D"letter-spacing:.75pt">MAKE YOUR BRAND SPECIA=
L</span></span></span></span></span></b></span></span><br />
<br />
<a href=3D"http://e.kozworkwear.company/system/gopage.php?m=3D2673&l=3D1507=
0973&id=3D62b560b7a503b7b115b7dfd2a2b1e7c7a23715fec5659cf600&g=3Db0bb411701=
83ede97bfb"><img height=3D"30" src=3D"https://stock.setrow.com/pimage/2673/=
images/image-20210614163605-2.jpeg" width=3D"30" /></a><span style=3D"font-=
size:11pt"><span style=3D"font-family:Calibri,sans-serif">&nbsp; </span></s=
pan><span style=3D"font-size:11pt"><span style=3D"font-family:Calibri,sans-=
serif">&nbsp;</span></span><img height=3D"28" src=3D"https://stock.setrow.c=
om/pimage/2673/images/image-20210614163605-4.png" width=3D"50" /><br />
&nbsp;</body>
</html>
</td></tr><tr><td align=3D'center'><table align=3D'center' border=3D'0' cel=
lpadding=3D'0' cellspacing=3D'0' width=3D'100%' style=3D'border-top:1px sol=
id #e6e6e6'><tr><td align=3D'center' valign=3D'middle' height=3D'45'><br></=
td></tr><tr><td align=3D'center' valign=3D'middle'><br><table align=3D'cent=
er' border=3D'0' cellpadding=3D'0' cellspacing=3D'0'>=0A                   =
     <tr>=0A                            <td><span style=3D'font-weight: nor=
mal; font-size: 11px; color: #535353; font-family: Tahoma, Arial, Helvetica=
, sans-serif; text-decoration: none'><a style=3D'font-weight: normal; color=
: #535353; text-decoration:none' href=3D'http://e.kozworkwear.company/syste=
m/unsubscribe.php?adress=3Dlinux1394-devel@lists.sourceforge.net&aid=3D3207=
01001&lang=3DEng&m=3D2673&bid=3D12da3ece1544b2198738605dc80f106ee5568be9860=
e844af7' target=3D_blank>Click here to unsubscribe</a></span></td>=0A      =
                      <td width=3D'30' align=3D'center'><img src=3D'http://=
stock.setrow.com/media/mailing/footer_pipe.png' alt=3D'Footer image' border=
=3D'0' /></td>=0A                            <td><span style=3D'font-weight=
: normal; font-size: 11px; color: #535353; font-family: Tahoma, Arial, Helv=
etica, sans-serif; text-decoration: none'><a style=3D'font-weight: normal; =
color: #535353; text-decoration:none' href=3D'http://e.kozworkwear.company/=
system/abonebilgiguncelleme.php?adress=3Dlinux1394-devel@lists.sourceforge.=
net&aid=3D320701001&lang=3DEng&m=3D2673' target=3D_blank>Click here to upda=
te your subscription information</a></span></td>=0A                        =
</tr>=0A                    </table></td></tr><tr><td align=3D'center' vali=
gn=3D'middle' height=3D'45'><br><a href=3D"http://www.setrow.com/tr/index.p=
hp?utm_source=3DSetrow&utm_medium=3DSign&utm_campaign=3D2673"><img alt=3D"L=
utfen Resimleri Goruntuleyiniz" src=3D"http://www.setrow.com/images/signs/p=
oweredbyfooterv2.png" border=3D"0" /></a></td></tr></table></td></table></b=
ody></html>


--b1_c477f14dff439291cf737ae77c7ea8a1--




--===============7236726979777078348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7236726979777078348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7236726979777078348==--



