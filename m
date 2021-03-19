Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A76D934269A
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Mar 2021 21:02:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lNLKV-0001H6-TN; Fri, 19 Mar 2021 20:02:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+17430347-d4eb-linux1394-devel=lists.sourceforge.net@em4842.fdc-k.africa>)
 id 1lNLKM-0001FB-MU
 for linux1394-devel@lists.sourceforge.net; Fri, 19 Mar 2021 20:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Subject:Message-ID:To:Mime-Version
 :From:Date:Content-Type:Content-Transfer-Encoding:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YsJX5gGQMO4zLK+ZIzs5JjXLtIHi+mZIS7lHzY//u6U=; b=M6tPyE1nmrrZ+ujCj3laeb2sxR
 zDv54a2JG2OgG5aWfbkGSxibjuggHuePmNRZwvqY29vuxfwVp3vTbBFHiA+7fPuh6FyngcFGgt8hU
 VEkojRRCBPQVW/eXJXRwTuPdlk6r+zkMn7qBjaKJCZlISMwhwLRCYWb10F5Jl/Yx0ero=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Subject:Message-ID:To:Mime-Version:From:Date:
 Content-Type:Content-Transfer-Encoding:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YsJX5gGQMO4zLK+ZIzs5JjXLtIHi+mZIS7lHzY//u6U=; b=YwplPK/wH0aTkafAAH5O5KCzA5
 sPSdlhk4W5ppoMv2CzXD76qj7cCAIEWxb6XUgf7coh3WJOza5VcyypGjqVo15vhhH+5fww9dk9knG
 k2K6UmUPDg726KQsQQDgMx6p6yDKc9JkCfs1GG4EB/NmSwtOQ3ggUyF5nBJ3IBjri8JI=;
Received: from wrqvbrbn.outbound-mail.sendgrid.net ([149.72.181.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lNLK4-002vGV-So
 for linux1394-devel@lists.sourceforge.net; Fri, 19 Mar 2021 20:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fdc-k.africa; 
 h=content-transfer-encoding:content-type:from:mime-version:to:subject:list-unsubscribe;
 s=s1; bh=YsJX5gGQMO4zLK+ZIzs5JjXLtIHi+mZIS7lHzY//u6U=; b=RII+3J9
 bNS2s+bDrWr3ikcDFib51PVDN2WcIeHwYs9bWDitwoqTuQkv5v7qTBoPYPQPoGZO
 zI9FiV6oRFXjCrYjjgp0evRxdmCT+LbsNKRFRxS/hXaO5wZ6QGmXuL/mh3IlPDyf
 mB1BHOJwdETbFcZjTp6xkynXtEXquEnJJA48=
Received: by filter1945p1las1.sendgrid.net with SMTP id
 filter1945p1las1-10024-6054270F-4
 2021-03-19 04:22:39.194268339 +0000 UTC m=+15955.997886513
Received: from MTc0MzAzNDc (unknown)
 by ismtpd0074p1las1.sendgrid.net (SG) with HTTP id ZPRPbagzTJKDeC9C5g0w3g
 Fri, 19 Mar 2021 04:22:38.548 +0000 (UTC)
Date: Fri, 19 Mar 2021 04:22:57 +0000 (UTC)
From: "FDC Training" <training@fdc-k.africa>
Mime-Version: 1.0
To: linux1394-devel@lists.sourceforge.net
Message-ID: <ZPRPbagzTJKDeC9C5g0w3g@ismtpd0074p1las1.sendgrid.net>
Subject: Invitation to FDC  training Programme June  2021
X-SG-EID: Pi9w8YTZchD2AGqRTKxcX/hvrtAIswiOm2Mb1qxwhorJ2gK7BB4dIUgR+dfk5XY8iltH6cofeOaeAw
 uZusnxaJ5jdWsnmuOHJxgnyzuxi47GcZGXkO9MhmJXsmQCEKDKwnY29cMQbAnPt73fxoSRvbKsFyQk
 canZnsubqK8dKJqUdzhFUwpCAzsuiguaFa8D2e4scloN39FvIyXvErA81aq5aeR7i17QJ6Ba4gCAf9
 dXwVeJMB5DJq7KNYqUTnAs
X-Entity-ID: lgZohGoWIjvYsKzlUpYsxA==
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fdc-k.co.ke]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.181.178>]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [149.72.181.178 listed in wl.mailspike.net]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 1.2 SENDGRID_REDIR         Redirect URI via Sendgrid
X-Headers-End: 1lNLK4-002vGV-So
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
Content-Type: multipart/mixed; boundary="===============4924575379205292741=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============4924575379205292741==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html><html xmlns=3D"http://www.w3.org/1999/xhtml" style=3D"" clas=
s=3D" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation=
 postmessage websqldatabase indexeddb hashchange history draganddrop websoc=
kets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshado=
w textshadow opacity cssanimations csscolumns cssgradients cssreflections c=
sstransforms csstransforms3d csstransitions fontface generatedcontent video=
 audio localstorage sessionstorage webworkers no-applicationcache svg inlin=
esvg smil svgclippaths js csstransforms csstransforms3d csstransitions resp=
onsejs "><head>
        <title>Invitation to FDC  training Programme June  2021</title>
        <meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-sc=
ale=3D1.0" />
        <style type=3D"text/css" media=3D"only screen and (max-width: 480px=
)">
            /* Mobile styles */
            @media only screen and (max-width: 480px) {
                [class=3D"w320"] {
                    width: 320px !important;
                }
                [class=3D"mobile-block"] {
                    width: 100% !important;
                    display: block !important;
                }
            }
        </style>
                                      </head>
    <body style=3D"margin:0" class=3D"ui-sortable">
        <div data-section-wrapper=3D"1">
            <center>
                <table data-section=3D"1" style=3D"width: 600;" width=3D"60=
0" cellspacing=3D"0" cellpadding=3D"0">
                    <tbody>
                        <tr>
                            <td>
                                <div data-slot-container=3D"1" style=3D"min=
-height: 30px" class=3D"ui-sortable">
                                    <div data-slot=3D"text" data-param-padd=
ing-top=3D""><div data-empty=3D"true"><img class=3D"fr-dib" src=3D"http://i=
nfo.fdc-k.co.ke/media/images/cfa2339650bd7b95b8999b3698cf402e.png" width=3D=
"792" height=3D"122" /></div><div data-empty=3D"true"><br /></div><table bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"0"><tbody><tr><td v=
align=3D"bottom" width=3D"1049"><strong>INVITATION TO FDC JUNE 2021 ONLINE =
AND NORMAL ATTENDANCE PROGRAMMES</strong><br /></td></tr></tbody></table><t=
able border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"1049"><tbody=
><tr><td valign=3D"bottom" width=3D"1049"><div data-empty=3D"true"><br /></=
div></td></tr></tbody></table>=C2=A0<a href=3D"https://u17430347.ct.sendgri=
d.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIB7x9zC5=
O3ov8jJ3Nb17Imro6k4rSN260WOHLYx-2BtUwpIEBVsNi5YKoQGWvmG7kRnCqAat1N2c8Z6nNLy=
ZsjXaXsU-2FBSQRfSsY29OMdJIZiu7cFIb-2B4OPqpQ4s7bcWa5O72PJQGkoYnH-2BR32AooLZA=
C4U5cc3VqJaEYI-2FDpEtQOvY6Nv-2B5uQvTGKGrC3VYS2J2CVG3bWRLu1WlRedEGfRitxBeA29=
DkghB5qAblxEMQSGpuOwdz2MUo7zkIdWd-2FypN-2FUj-2B6XdtIp5cPfjAZ4dW5ztznd5Teb2T=
dzM761uvPM8TntmxXMa8YD4OPcOpvukoO-2FLBdU98HtjFe96YfijkV8L9b-2Fow0tr4f9V0oTc=
ccwB4xlqNn9GXoMInPQCOR4Aewp9CNKLfZva7-2FzeLwPUzg4s5k1k3tktGEFk3yqEvUGgl4ran=
nNZ6pDRH1EyiP-2Fs-3D_j0__9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgew=
WzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIUPmNTrhVyhjaNC5KE-2BozGlidjGXUtalZH-=
2BH2N58LTymvVf5bWPIu4rNmBsKnYp5YHsCbVyxBQzsiuP0Rmu64yLaZInM0Qe9Np9PXk-2FwW6=
0EHCPnjwWBSNhyj3FUCLMTDtZVuDgWhbQIugKMtzMwopstAtREDTHrplaFwwTUNWaN" rel=3D"=
noopener noreferrer" target=3D"_blank"><strong>Download PDF Calendar=C2=A02=
021</strong><br /></a><strong>=C2=A0<a href=3D"https://u17430347.ct.sendgri=
d.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIldVypgO=
-2BmUp3DL6BOCgbMFKbHixpZgRHd3DU89igckwBxOUOxxn4cA5x2mXWTRYE7uXF-2BCuP0U300h=
aJpq7Jve0AXfH3KPkdvba7nw2vvsBtS-2FOM18ZW-2B9tKyfghkoDFFD0OFoifDL77BycgAKAtS=
kq55F3qWV3F0a-2FG-2FfgU1jYCZ09i-2Fe5a-2FOpQ8FMwPIQvDj02AV3QKj7Bg3LPGFJscwV6=
7XVZyCYK3pnv63Lsp99r4UuQmv2rxtIhakk5Xj3BsXoPcxBS-2Biwf7CPbJqnKdssxGxGqvOwJc=
d26OwS6fI6JjLLY9bBHTF8Fm-2FGyxwIoj8mUm3v8NuLqNceAtK1UdqSSZVVon5665i4jYQdYTp=
l83p9gBpZnfylR-2BFYyB1BQvWY8Zp-2BEjkKUdImdZfqx2zpI2Abit-2FNDD0YjGdJppB0CzIv=
nsLJyU3-2FHFi-2BJpTFY-3Dufae_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVD=
AgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIR6JOX7NeTD-2B9KJo66Sxnx2YITHqfDg=
RTCM4a1TZS14OmGNFKIq9a9193RVKthRORHfc-2F7TFMI31CEq8ZY85HFbb4Y3VZGYfiOFbuXMA=
5and5qaLPs3FkDnmTKsmXgHLqk8y2f0s4a9kPOxWp5wWYEsf5u5Zo8xsQER2mQ-2BcWvFs" rel=
=3D"noopener noreferrer" target=3D"_blank">Foscore Development Center</a></=
strong><strong>=C2=A0</strong><br /><strong>=C2=A0<a href=3D"https://u17430=
347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7k=
AumHSwLb3faKNu1MSmf6C5pOWG6JdN-2BLlzAmKjQN-2B2xlr32JnS7lQxP2QU4z1ZA0x5leFA3=
1rznlNjQmZ129oz5bqfnhWF6inzfEMlLKb212r1ASt0zcVe-2Fud0oxTVWMZ51HvyaUTG8yxYpc=
icVOwZNYV0PIpZg7T5tZEynSrSxfch8ePyN05-2FQSVLjIaOFn5bz0xUOHAFLt0qnPO-2BviPcV=
bdQG1fUfU-2FlyxjaFHBKM2I3Ktcaj-2Bw-2FXUnQe0sKYHQscMl-2F2qILR4lHEVfDa618qxPc=
Ymey3MmusO739XW00ptLlvz0uP1TmlMwzBqWMJu97BZNsvqjumd5xtTJ89oj1pypm7cQMZNaJsH=
ih3RAXj09CmPI-2Ff-2FhBfIIY6ORSS-2BSB0mBQB1QnvxAqUSOKCOKhFsbdqyvJgxW3snoyG6K=
JU9KOyLZlFrpO4ycPonJbv7WQX3ec-3Df7WL_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lc=
B-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIXN07Z2PGQiswdBTOGRoJQTl2=
hzYbmG975a0jxdfUJYx-2Fjk9tZWmrmKb5VZ7Estc0TJbjYLmmp8R8P5qJ3SgDZWVqlUh2SbOQ5=
tJRrwro04-2BQPvHIN0MkfIl5ww2HEhlpXZZwLvbWOf0g1OuC0Ha1D0eJBPi0T7KBq1NzULcQdT=
s" rel=3D"noopener noreferrer" target=3D"_blank">CONTACT US</a></strong><br=
 /><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7d=
EKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLTcla0nhs-2BdU1uxUOtJOtFx-2FP-2FyHD7674fI=
Tx8K78iKl-2BpNFUymwjG-2BNUfdIkN108eTn7uyMcOWcfSqwumR6GhtU6ppaKCtnVX4dUWgMzc=
GrbJRr-2FzTj1ijwsv1hnx6gO-2BD8XdtfqP6z398HfdA1UD65cPQXWKcB3J2EnJa85ca-2BdRu=
cDl-2F394GFAmefq5jdc8D6-2F6lq-2F6aL0LM-2BAVixRdi-2BVwBvKbzW35ST6StQkVGCdZ-2=
FJfVl8xCfBpq8-2BUsxWCX7xGZj0HYc9wyrKgNqq2vAJVEFHGLofRhcSjL58OtFCSSGcvuLBB4W=
PQ6SbP3nbDZs5lgXzQ-2BDDW7-2B-2FN8taJZbOT23wQZwhsrSdcAT0oxZcymxn0UwDtMCMpGuR=
8DOpOwCn3FpLVzm9rBPej0gyYc37DroNXziAvd0ZJXdMO2UrkPoRYs-2BbysYAjekpjJTKI-3Dr=
2Y7_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7=
YVOzcMI4QQ6x6BFxbIQGHjz81Q5Z6LAHjwnCVADC5OOb15xM7k7Z7uovgHiFX0-2BR8f-2Fd5qt=
xPfJ69vv5hZsevzHhHCcM86842ZGnYjHoj9IfqN8P8MxIlGkiXDfz2QvKuejDXyjOSLq090iG2z=
jCWUhDuR3fpAyriyWUwsl-2BDtCPUfbi8LY1vtp8mB-2FpR" rel=3D"noopener noreferrer=
" target=3D"_blank">=C2=A0WHATAPP =C2=A0MESSAGE</a><br /><a href=3D"https:/=
/u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAU=
YA-2F7kAumHSwI5BL7okS9cOAyl6fuS0Z-2FLVRBfmX3TcOCq0Q-2FaKXagB8cpvsPGn2FBAz-2=
BEcr9NFcrSQ9SCHTHL-2FghI2NOPtmhsHdQ9mdUssI6Up1jjPR-2FN5sOudQQCJZZd9q2JBlaE3=
8KkevmtYeHkxyuOleGxn6yPeOI5Zn9DvRprszxTkBSbQYaAUXfLdCXaxpukRHBTXkZHPUabnn87=
Far8FJKv6qZ3jLFBwcKP4zfgLkVz4PkO1yHyFg7q53o9-2BT8-2B4Qa-2Bn5NAWh4lH9A5H0ozt=
SqJCFlE9rovFoYhPklyO2pURkmsPg5woN0J-2F0SENIVTJSHbpUfaoW8mBRUY1hCSdeeIoPbTE1=
3JBNaFJDT-2FTcC3ZUnyVMqoURRWu-2FE-2FHXjsUIN-2BLVQU8ZXtGCk-2BicW9rRA7EFcfkjM=
eraXr4Sr1wLDmyTT0OXFqC8wlojl7xDlBHeuGOsc-3DEy5S_9c2ZCZzrWFlb2tjmei9-2FZAE1D=
dJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIdMrgrYxNNW1dl=
AzzwCWvvXJ-2F0rSrni9BCE9C-2BPpvrS1zR6xP7kPF9GHZgcF4D8v-2FPz-2FKr9bFbTdRjiaf=
68akO3bPKWMFtNOpX8AR6dJjSf8yowijJ06FywN0Teycd1-2FOW64N8kg28WihJ4E5WQ7kt-2FG=
dCVSiwQwB4XJH-2B3CPvYU" rel=3D"noopener noreferrer" target=3D"_blank">FDC O=
NLINE TRAININGS 2021</a><br /><a href=3D"https://u17430347.ct.sendgrid.net/=
ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLImf81tCsNMN7N=
oQNc2bwpG-2F-2FDzsDpJse6rrIi5efJNCPsM9p48nvpKFMWvXuNeaS2UC02Geu0rw2gwWIlMPE=
nmo58CUPCIEMjFM8xdzRYh9EMWMdRR2oxUVlifgohV1uBymatiTQBAadv03zQHOVfzn6SKUY-2B=
dQxTj3EzaE1-2Flvy5G-2FwK-2FbOCsl4phg057lQW5QlYNpCmRjI25Z-2FIrn3IRb-2F1EvrpP=
O4eYDW6uIM5nNzLFRtPQeYfS2T3i3nBTEUX7mwVTejIowaRxK-2FwF2M8vwl7f5QQYUxL91zaQm=
D-2F2bDLeRedF8Tfxl-2BF5bzv-2BrQCaYnjTD5sD-2F8rvtl4g03wABDjvAF9YR-2FJO811BAn=
iOLMKpQKZ5k9CMG19zStUZBa6YT59UBEjLc91T3jjIvv6uEsU4-2BYw5LoN5IZWYJdDNhJGi23A=
dX-2Fs7ikIrIkybQo-3D09Ve_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgew=
WzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIfX3b-2FB4jnlpf9ymgtAH-2BK56FPaV0rwCt=
eHYNeggU1IzX46N-2BlokI7cUZLbnXYWiNV8N4AdUCiWyCqCd2n3DfRup6b5g4z8uszfhcVuTZm=
GO3eah349Nh7l1wWCEgBBB40NbgU-2F4mg4wqkvNP35ZSXSC2IwTSe7D5foQVZfTfYSL" rel=
=3D"noopener noreferrer" target=3D"_blank">FDC WORKSHOPS TRAININGS 2021</a>=
<br /><strong>OFFICIAL EMAIL ADDRESS</strong>: <strong>training@fdc-k.org</=
strong><br /><strong>Office Telephone: +254712260031</strong><br /><br /><b=
 style=3D"color: rgb(97, 189, 109); font-family: Tahoma, Geneva, sans-serif=
;">Register as a group of =C2=A0 5 =C2=A0or more participants and get 40% d=
iscount on course </b><font color=3D"#61bd6d" face=3D"Tahoma, Geneva, sans-=
serif"><b>fee. Send</b></font><b style=3D"color: rgb(97, 189, 109); font-fa=
mily: Tahoma, Geneva, sans-serif;">=C2=A0us email to training@fdc-k.org or =
call +254712260031</b><div data-empty=3D"true"><br /></div><strong><u>KINDL=
Y CLICK ON THE COURSE TO SEE COURSE SHEDULE, OUTLINE AND REGISTER AS INDIVI=
DUAL,GROUP OR ONLINE TRAININGS</u></strong><br /><br /><span style=3D"color=
: rgb(97, 189, 109);">STARTING 07 JUNE,2021</span><br /><ul><li><a href=3D"=
https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz2=
99sgWAUYA-2F7kAumHSwJ-2F1rHfPZHCnWTh70qaThU89G3VL2b-2F-2BUBCWBlbnOsi2nLm6Z0=
GBP5Vuh50yGYqNR6UD3z8Zpgl7D07-2BtKjNofvqTsOjIoJdsFW8BzZlFCoMsJc1P4Hiidp3Dvz=
jDJzkFKdNw-2Fvot5K-2B-2BLTp8WuAkpkcodybJyMBeHwwGc25LTo4th8o9KguQTlMb9GzlwK-=
2F5Gfk9Oq4XDX6RAUpHn4te0PJgq-2Bt-2F9y-2BDl4Oq1e34vFZSKz23lQsRpusQuE0A6Em-2F=
NU7P7m8GVr1MW0DikjgBcvdxbXOXsLhBnepwSlLNy0lM4ktZSPX5VJgpr9zANgqUvWoQuazzDiC=
ihh9MRHxBnjaEUO9b1MWftnwkoLPoywl8qU1S0G5-2BAdst5bi5wYtTHBmaYS7-2Fa4YZ73QYzw=
nxMKFY-2BjBo7i6NG4yuzGfA97zs6-2B-2Fb-2FrvbzYlCM3wPndoR4-3DVBb0_9c2ZCZzrWFlb=
2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFx=
bIYmjEtWJTTnPHvFL8ohwvFA7CbdxMGrZEzqYT9ZRhIoNzCsaixzp4fBP-2FptebgAccIpuQ2Fr=
G-2FrFPBnhcGl0mhRGTdkQhgQ1gJCTB1sfC9jvzGCHMdYkXCV-2FSBTB8cJmWFn805SjYEHIJ80=
gikd-2BLqdZszFEz-2FyubBDCur8xBE92" rel=3D"noopener noreferrer" target=3D"_b=
lank">Quantitative Data management, analysis and Visualization with Python-=
June 07 to June 11,2021 for 5 Days</a></li><li><a href=3D"https://u17430347=
.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAum=
HSwJKXbolHRBjDgE2-2FpEiJjmZhHj8EBMWEHM291Gg9P1r1ylyvnQ1n5C4Xfj027EF-2FJXwo-=
2F6CPsboHe65nOMDyfaNOoEtFknItIhFbzQLaN-2FPUe6cJ5Mg-2BqyMQl-2BrR3d8MmRn4WiqO=
Xf1T16YZhnG47HwayqplYhp68TOL3-2BkGMB7g6fyjKj3De40R7HpczEGXf8Aa6SD2h9-2B2Me7=
Tbb5WrqJtO8QWyVcsNapMhBBLiViRqUXcr7H-2B21eAMDkRhuGF1glNl-2Biv3O9sbd1S-2FqhQ=
M-2FK-2B1zrEn4GJqzpABjBdTddOPtwNs3SXeicGVzGSvZM6FcqvDAupPJ0pDYldUaXyP1XWl7z=
KjmVDURtpu7RTE0MVpjZuXnKUuwOcuSAfmUVchXJLj2gC4EI7ZhojC0cfuSv6lmPnBkO62VwBAy=
bucA6-2BvrXldMjfuetBIrEmf3wFLU-3DrtNP_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0l=
cB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbISC-2FlbGOhGQJ-2B13MmtiW=
6Fy5DOUjDdUmX83oP02AyqQQ-2BYPP6vkFyCdpG4sG1NfP1r4YnfXGyMRrsDYbiFXzzKMQdvgOz=
IkeAbkxWE5Az0LXXYpmP30X8KsYKCrPZo8-2BjchYhwltY6pdzos79ax9AcCzoKH6vTu5StpWE-=
2Baq8IiW" rel=3D"noopener noreferrer" target=3D"_blank">Research Design, OD=
K mobile data collection,GIS mapping, Data analysis using NVIVO and STATA c=
ourse-June 07 to June 18,2021 for 10 Days</a></li><li><a href=3D"https://u1=
7430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-=
2F7kAumHSwKy1ux-2Fu7wTynmgcLriimy2FYR1X2dO3-2BuY6ofoWAKxnrzBxzGqO7STzQ-2F2v=
qBJTIq-2BwqlpuHyw2we-2F2s-2FmqJJ4oCI-2BKFCzuBiA17eh0ECZwY0LrqNzNKis85OrIUxo=
kXj523vkDq641a28E9ZR7LzgjzUMzs78h4AFHK6SoO86gSF59D8BhSPuPKmFN0IdqILqlWs0zjp=
1q2-2FdeLG-2BXjoLqlZNs16TPKp6U9RmQh7qwXf08sIkv8yK0YoYSnoKK7F8PjTEofkqzysNdI=
WPY-2FJXCMaDOJtLPaF0A0jHmAzWjWOk5mr7amNdr3V5S-2FQaFOOCtko939NW-2BOd4I-2BlEM=
vfQ4cZdOvcBJLvjcYUh1R59bbtaYkYtpoDVzXXefskxogK1xtnurcKTaqE7-2BOBlHNko-2BpBS=
BvyGVH3u5x6qwcTsGs9I7-2Fn5J2W0pN0V3FgbGyw-3Dg3hn_9c2ZCZzrWFlb2tjmei9-2FZAE1=
DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIRf1ZoY-2BVDe=
treCmGR4VNfkQXIzZM7mcqV-2FJwb-2F5JsMYdyPnjL5HbGu0j-2B-2FH0ohRd1ENioDsYDXA67=
NjphnwkU4Z9IG-2BxFW49iwlucaOwhz1CE3CnkW-2FrKIBCv-2BHIpu61eH4wAT-2FL04cfeTkL=
hsaa2-2FeEuXsXJlMgFMP6cCipDyC" rel=3D"noopener noreferrer" target=3D"_blank=
">Research Design, ODK mobile data collection,GIS mapping and Data analysis=
 using NVIVO and R course-June 07 to June 18,2021 for 10 Days</a></li><li><=
a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj=
0uSKpqemz299sgWAUYA-2F7kAumHSwLGukK7nPAldJYMA6voJ3iWxZqnS-2BKd-2BENgb7lIMnS=
xZE3Oljw2r2Wvh-2Fm2j-2BHcv3-2FsImHiB8xxSQnI2m4bv-2FBGE3ZXp061h23zgBXDxS76dE=
lbEjeB7hM4ngfnN7Ff1doBrIeB4u0a2wZRyR3N6dgdQie7rUOSQwerXwNKxdSJavYqjmhAJ1GFm=
W4L1GUsModEZfCfr4m2lidCZ0t2jcKViecr9jflvbfZPjpmYPJgLDaiL9rrAWHlBM-2FKwsa4eJ=
ab22mABVGstfOT8qLSiabFVt5KrfC7nimbTAHpuVHD6LEnLobeog-2F6WXgmHH-2Fxrl57gZv4t=
f-2BsC8ljfeJ6ryo9b0nvJj10YIkGC9f4N2lE-2BpkO-2F5YCELF8WAJq4wrGbHMHCcZ30-2FAc=
-2BcbfpuSC3tzxLwDr92CXo-2FSV2neJZvQJuc318B4cG-2BzxL-2FtifphRTBc-3DDk42_9c2Z=
CZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4=
QQ6x6BFxbIcNKaEhT025Xe-2B0FFlGa5yPFu4OTnqzNLN-2F1XsKO1gcuehnE0RJLDpAw5dQedA=
XWYUJiI9vU7d6UCutrJD6D8Vb1Q0EQfdpCEaD-2BD33zamLhu1IPbo6-2FI-2BUQLHo94ZULd6T=
uGlPnDrgo8hZYqrtDvD1oOicUHsGtJZyXdRGIEuCL" rel=3D"noopener noreferrer" targ=
et=3D"_blank">Impact Evaluation for Evidence-Based Policy in Development co=
urse-June 07 to June 18,2021 for 10 Days</a></li><li><a href=3D"https://u17=
430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2=
F7kAumHSwLOH1BKdHq0Ih9f66rl7gLse-2FY9SNWePCGgzdbxKpVyk8biAYMCOlVxF-2F1l3yJk=
j9HUQ5mQSwVAcgit-2B5lu3K5H2KSUqP7rCBb4yN4ItZh3tF2rZeU1XQ0QiCs5NlEtnAMM-2Bvi=
Odopg-2Bb1azHgz96JeK38b2kzylrqG-2FOXHUNzOS0zBSquyoNgQLv2NPdOy2pJv8x4f4mUsMu=
xXmYsJVHIN-2BWOUfvLsD9txg1Oh-2BXHSO1gl2TKFzTIGJlbm2JyfPFT7KcG3Zi37kVHm7RnDe=
UJVK7UVS3F5s3W5aMD6tAc0px-2Bta2Pqemh3howGbx40w-2FPvPhm7yKNC-2FUOVDzY1VqUpbH=
M3WgRZgyaDUOHnDUBcBwtogAhwGZOu3YDvsWRzEnb1LIdlprosHnXIVsFv0Y8CYLJ3ouXwoFmVM=
RlcqIfOfbxDr73tl6r0gMDqf5-2BZP7k-3DznVp_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET=
0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIUh4wfH41aLNl05DGle9Df=
H3x-2BaYMWO1cLsjcHVqJlMlyFRFPUspUsufcJpivzwhT5qqLh10TNky-2Fi05wpfBxAl4swlHI=
QZFj9AmOWGSQRx0l9DuCN0GmMy1aRWSZqWMcT2wqb34jjoziQ1CuOrarRwngNHee9CzTL5Wk2om=
R-2Bi8" rel=3D"noopener noreferrer" target=3D"_blank">Multi-Hazard Early Wa=
rning Systems Course-June 07 to June 11,2021 for 5 Days</a></li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwIFY48AIBiuc2SCSfT0iGJhYlwD-2FpqXOvGoBWPVhtFkUBsAyKX=
zh6IutQ4VjiIFtvNp8ZuoItUjAKACvuecegUkuEUms4CqiINp1ucCS0gSPDss8KlikUH3Wh5SnK=
w9-2FufnKJa3c8ZHKCSEIgyaxPIqeRVPl-2FfBJgaPISofUr9yNYI2DOg65DwHKRjEIpHDrHg0k=
V1rlKjdRpeF-2FolPD2ZaqEUodm0R2L2tIoh1aaO6gDr4IYot81cyLkbpnRtDL1RopnkkyvYKxf=
B3Zfl3HB5n8e-2F2qKaz-2BfRbhe6U-2F7JBeFt0XeBFPkPCynwPu-2BpMac7ugRlFj60djGETB=
9yuo8OLoz5v8l3iyp0eJNPLxOoDRzKidAqpbIHpFl2k2432xZ56eimWqbMaGmOs8bhZaC5s-2Ff=
ZmRekNNrA-2BY-2BW0alikewdps3I-2F5c1XwcJ05cdVHaA-3D3slB_9c2ZCZzrWFlb2tjmei9-=
2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIeO6PL3=
aJSJ2TiwPci9gk05cRJEmgVnNrp9AMEQQId5RdQ0FUpGUqSiM3K-2B3nSD4iYv4d9B0LcjnrOqV=
0deJV-2BTx2hPGlsxFN6FnB4sMWHdrelsRDRzusKPOK9qIBR2WJj3WfMmwmzUjO92QZbWWgVU3N=
aYE0c4AP7Q8wOrvy-2Bxx" rel=3D"noopener noreferrer" target=3D"_blank">Irriga=
tion and Operational Maintenance Course-June 07 to June 11,2021 for 5 Days<=
/a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS=
-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJwUgiejJbyASwiHidvxOEW1gJaDaHYgt=
13hqTcyr4hGE11wHjynNcQ-2Fig2K1wle2n9-2B1aNLu1vgSLUB0LjEJpxdVeoDk69kRDyu1ZCF=
QNpZKniEw8PoYYolWNApCMDSEo0kIFUMxurRYmS7taR8A9Cc3R6WzjAPg8mCR8Gq3nITHKku-2B=
n6I7v-2FLRjLMelnsu6Y7Enx3EmW9IpyFjftxVv5LZw009m-2BZOBScFBSoMfkbazmllGmVFtv0=
m6bsWoTda-2Bh-2F3o8gQBcPRIxPRhiGUVBM7AJOYDk-2FqsMpGEHrffUMpdX4GlQfCE45OdEbX=
yzlefl0BlOut2VmPSxFlaPXXdXsvRRNrj-2FAfB0k2r423WPn7soU9KbZyVBVw4Ciwv-2F-2Bzj=
X5Fmsak7abyhBYpWuh0BOJOVLIpiNCZN49Ci3PO-2FpWXzht5j8FiWL-2FrOEOKbusU4-3DDae1=
_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVO=
zcMI4QQ6x6BFxbIZjJcBgkJ9X7l-2BK97US-2B3kKkY24xOb4eaDf6r75p2DA2b9z8cJXMEnYNb=
WzMSxBRMEyMZyRJEhRABPzpKPpXH2ytNP4dfm3PqLTb-2BoIWmBaD0NrU0tJDZ0nc2XXP8Mq7Fg=
73MxWNiEVv-2Bwt8NK-2F5lrNyxE8erSsDpICA6cjtk9N9" rel=3D"noopener noreferrer"=
 target=3D"_blank">Advanced Web-based Mapping Applications using Open Sourc=
e GIS Tools Course-June 07 to June 18,2021 for 10 Days</a></li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwKr2M1UmhF9K6RtYzeqAI3oaumMQlu0FsUCtt7JeqBR78i10RE0f=
2jzNST9sHRdZ59a4JDtlmeAunEIC8FLk0TNnq3ptO-2FGo5cykPN1GlXoZhFdtjADZJoeJPvcnK=
2qkSSJqyjNJvFpU0NrMh2CEZXpxwZAdySeWwj4tFF0aTaBd-2F9H6t4YwIZ4XaaiC7jFEZkWy3n=
yO6F4SEl08rxNN-2Bpa7hQtTg-2BKUvHPYAVx-2FqEeH-2BcQb2Duj7qX4m9RPLlVtfWb7tmB1y=
ERaeoXsX3iB6RSsYWkZmhG5Y0fJw9wIZDqVkVVIfU-2BTyiTTpLzUwyckZNULmFxtg7IlwYcsRx=
RVe-2FZY314gFOdY9KnjQFT0H7dTbIXWIF73fXiZ-2FNx7efYPTyfOg65hLSjNlx5RAssr3HlCd=
H1yp7PUajWDSOm523ugI-2F4s0-2F-2BaXtDqJaAl9QUEkE-3DEeLd_9c2ZCZzrWFlb2tjmei9-=
2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbITdYzoz=
3tG5lJNJRZ5vfbUwi4brFwu0h-2Ba5joK4p3CyNah1QU1jw2vjCOtbJ2gxzSZ-2B6e3n4gAprTA=
Ij2CulEKWiM5jf6G0a-2F7EC-2F9L3k6wxk-2FRTpwNLqvE4dcGIot3kg-2FWVQG0N6LEKwTlKR=
VQ93v3AuT57otp8iRER7gKWAOV3" rel=3D"noopener noreferrer" target=3D"_blank">=
AutoCAD 2D &amp; 3D Drawings and Practical Projects course-June 07 to June =
18,2021 for 10 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.ne=
t/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJ9XKwb3Naf9n=
-2FT-2FfixLpvMSm8Ua7maLAoh1TRZh2TfGlW14XWk-2FHIQAbJt1Rq8u4ODABMNnnP6uTPsEJu=
x42AVjTdptROEeDugib7qy8vhgBLYGzHpYxx1NLgG-2FyECAPzDIKMkGrHOeMitstsa-2FjzdzU=
Un8QwSKKF01fL6s2aUHKFNO3cvCV-2FAVmb3TAG1qaVB4VYEwPJqYOJTOKvQFX8BeXi4G0dWs6e=
hJBVDj8k3pt9aNxNnD5k2lNPYVmbk-2FX-2FBrPyL4VSwmBuulpo89lv5K7zS-2FVeNfjTCoVkL=
wt5LavdFMPVWaznzsEgezw2oMlRSTGDECdwbryaCJ2j6rxCP4r1b94dSKGwXWDjE6hCP1MrtPsX=
POGV-2FHJptZcT5PpZm0-2BQUtfNuXs5xEBlVCTvNDQo2Lq-2FknlspwDbbl9wfSusW4aLVeK94=
4BV68PyGoOE-3Dyr7A_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8g=
DHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIfhkldao6XvawNKccnX0-2Bqlt-2BfnM0pQ89ojTqdY=
qNJrXI6ibcRpdZVQs52HT03x1nSwAGGU6yITPniKSeSysjB-2F4MlhlgbD88gX5zUc1Lx6s-2BL=
bPohNAkjdrqNIUiJnOtQe0pyh-2FYHtzvl8GXpQFaC70jyGLo3Mx6Yyu4JCqUIpu" rel=3D"no=
opener noreferrer" target=3D"_blank">Content Management System using PHP an=
d MYSQL course-June 07 to June 18,2021 for 10 Days</a></li><li><a href=3D"h=
ttps://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz29=
9sgWAUYA-2F7kAumHSwLORg1FqlmWCvTOx8nEXxWznYjgva-2Fh1ai1HBNyT7zWpK3UFN5egrCT=
CIrZrrLRGyHRqWhi9MaHn10-2Fd1OO224a-2BX0jA3qO-2Fnj-2BEEcZupNLJV6pgsw0yH6SXaL=
noGA4sT2eTajRPUygETu1uBUv-2FvE6VOBfUwxasoBZWKs1593Gd5g7k5SyxzfLQtKen3KjU55q=
vliC8tTTqpw9E8l-2FgzJ8G5OivIfiW-2BPjHz5dFjDbFoLoZuJz7nTCe9Pd-2BkoprArbzhLTe=
tQTwy0gobrich1FLB2DDTcsg0yt-2BoUM-2Fmf-2BejlgErhvgXo4Wl6RBhNwimTGOYbR9dyclD=
6-2BBj91OyGgvHyrf1n3-2BsmihDaqkjFgJ5RzgXw9GLbStJeegNtfFnM6CucuVQdFq6idgdZWE=
SmGs5HLYoSBIeeE9adLSGF-2Fe-2Fygp87-2BkJ1jZbZXWGsgwZw-3DLtlE_9c2ZCZzrWFlb2tj=
mei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIf=
4SP4jctPjxBSUE6XE-2FSugd7YhhF5J-2BdUDOt5nqwMJDZiGDnDkmeM42U5LeWHYz2L-2FZ9uB=
fuiKMotiUd7r-2Bh6hdX3LfTuhTwSvy0ynvK0eFut8To-2BkGdrJgilbgwn3oSc-2Fw9Eth8Til=
YWFa-2FpVrZkaf7ZkYaoQUvOcpGRb6Khqe" rel=3D"noopener noreferrer" target=3D"_=
blank">Electronic Document &amp; Records Management course-June 07 to June =
11,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net=
/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwK7kTipiGWKCJq=
3tf-2BvA0D6c2Mvd0JZpSds6BPfCh9DAXGrQrHQ0MTGrWk-2F5a2s70L93QCxbkeSu1PTmEBiz8=
X6dsaY4LbLi30JynvKiXv1XVBSV-2Fq-2Fiz78CR2Um9WZKnooE-2BMGhaU5X18G0mXtdbSvfWK=
9lNRkYxLuyDaM4WKJaWwaMQmt80tg6jLFZ-2B1DsSqU4wBOOrkzFc1neo8vY16mUAcf4JbRCqEN=
stQyXuZC3si8YSilK3E5HYsUZAIcG7tQB5ePG-2BsNLyGPby86X0ZVK3fl-2B9jMCRypvZNqucC=
0tp69Abg5np7Yjw-2BDZnEE8Yn8H50HKVEzjvhORnQyzSEbYBeZSkgX-2BklbMT6IybDG76Yr-2=
B2kef5e3C37ElVdyyI-2FhUndFEZDQm7mHEImxT6y8re7pH3DI7oK5JbbTC54lnBpIGsa-2Feyr=
2sp3ciSUBsQ4-3DomnH_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8=
gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIVvTV6eVdKEePT-2FkqMqe98TP5Id0I-2F9EYv6Apb=
0MN-2FA0z2RxM6xYSieuVH6fXfp-2BjtAnz4oXZiWifc68kEUVI7I1flfCsJ16gvYsicBvObBMx=
exM8rzeCrkHoCrqauvUXUBQaVlOSt5b2v9i1-2BZZ81Igo-2FgTStQBrHs3-2FwUCPzw4" rel=
=3D"noopener noreferrer" target=3D"_blank">Grant management using Quickbook=
s course-June 07 to June 18,2021 for 10 Days</a></li><li><a href=3D"https:/=
/u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAU=
YA-2F7kAumHSwKXe16cujEWQMXIKEZ2M8fChnMExinqloGv4AqgZ8Ip23pGDUBCe-2FkgmLF6TA=
HYPJbAgNXFSKsXJDzF5scYYdr534p-2FC6B6LRTO2ZSAtFo1SqL4pjfGi-2Fx-2B5LiZRt2CbL8=
0gOkEj654OCL2elXuvb5fz0ffau3amZzZyWZlR6xt8acucRc2MiXGBJi8boNx-2BLRXMt-2B-2F=
8vJeCX-2BMZiQXAuyfVHptMDyJBC9zEjfpk4p6MLUOtcwLfKXFzaEtT1EWMLUIsgV5RcrG8QA0a=
yzBKWng21GYDciUJOd-2BgrgugFTpCVVhBKdw7AFL2-2F-2BF6RNEDOZWoUsx-2BLsU39ncLU4I=
uJ-2BcYRW9Eb40z3CEls1FFgH9-2FSEvrO6dvvGqeTvcIjSWZIKYnD7C9p5FNpxmdbEY9vmDOPS=
RHL9NZcxlW8t1UK9VZuj4MYD9ICw4p3C7RUFtmR0-3DAUZS_9c2ZCZzrWFlb2tjmei9-2FZAE1D=
dJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIaFxUUMbqfKLCc=
-2B-2BPMm5eEfpceItwzVm-2FCWmhRgKuh-2Bz-2BhjFfniJuQvns6Dp-2BYI2sGLvftoDF1eXN=
-2FJ09ggRGPT9QF1AfbkllQzYIV4X3AvOJFHRrUojojVorwTbosQ5AXx48I32vEtaxJKUJPFgSH=
G3dQjMt2UV9UDK1-2Fai3mrI" rel=3D"noopener noreferrer" target=3D"_blank">Adv=
anced Excel Formulas and Functions course-June 07 to June 11,2021 for 5 Day=
s</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DG=
LS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIXbYv3zKREs-2BiLLhsyc-2BtikH1A=
GVIJjniFPA7gT2PRVKHBCpcj6Z0979rsfWiHwlAzUP2cZE5BjL4oV0QczHe9nrshzEMo-2FsPgB=
y2OP0kjoyLzX7IGAK9wYSgHnh4ELKpkOb2u-2FOD3PFLapZUHDVijQgc4xisglGJeGIfwG7FdWE=
mahvvMIlRC5JqCa-2FxQxnTA64CcMq4SN0ex7xKfQBiGSRJ9SS-2BMGdPI9T7Ou8A5weQxXy14R=
IKWArpq0Gu5-2FxKGoKeJ6AUdSj58WtKrVupSoO70M4tLmT08YrvwdQKYbtRGg4Q38nEI4Ye7fB=
AlsnY0GQHjSlKpevl70AlM7lhvfiwE-2BKQBCEvCa6LdjmL3ZpfHNljE5PdM0xHNYiUI1ALQQwc=
J8kUcTVU-2FD5gm1-2B7PqvUm2tKC3szj-2FWpxSDA-2F6QH1y3ag4LLFkIhbBUKFJlU-3Dp0wc=
_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVO=
zcMI4QQ6x6BFxbISC1TiaXZl8AiJycV2ZDyEb9tPjqUVT-2FUww8rrBEH8PeGkx9pF0H5x8Nkro=
eIaLPuO5FnaHMTopTo7UBOppnrYW7uu4gTZWbphV7YHJUcY67KLx3zKnyWfQZyAO67MNmu-2FcC=
hhIHc-2BlNsbe5-2BB4upxK1YB2vElWB5kVdJcYqKjdN" rel=3D"noopener noreferrer" t=
arget=3D"_blank">Project Development And Proposal Writing-June 07 to June 1=
1,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/=
ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJGfX7U3fbQLIWY=
EA7Yd1wfL51bPRxyZxh-2BTuOhLXSxl4zACo7DS6RcQsRjOw9ppiQO-2BJdilrs-2BptxPcpUx9=
WzozmAO5Gr-2B-2BRJXgVROc4I39NwMcwvdsNLI1pR7nIM2BHKrHNyZ2uhEVePeVclae1-2BvyP=
B2h-2BBZGn65A-2FLDu9EnFyPH2iWkGrgAyV6lz5ZMkSg-2FpYgfYkc8Sj-2BEitowkQUh7Hvjs=
wtAEBFoMnxYZ2y54zbboqH2BlsA029xkAPn1-2Ft8o6xLbu-2FJCqpyyFk1GdwcYAtae4-2FJey=
MSWmtXNpynLafSpHStxlBZVFaX1JJ8QlEPwKBwgkpJ-2FCz-2Bl4CJcC-2FadXzRUV6Zu9ucCb9=
FClvm6HIRt6fC1Px7xRub4-2BQyhlYrlzWbVQfcJTSQN1-2BCatqOftsrtS8NjoAveriLIqYKIY=
anfaoQvX74X-2BPcY3TSRiA-3DFrmJ_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJ=
VDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIU5LOy5fqsBQBoTZT01Xm0uTg1kLjqY=
s4JIaQ3uklmpl0fiA7kLKEc4rwvar8mT8WYT6Ogv9e0u-2BFlFC5wTNf3whbjdiVdSjaA6z31VZ=
RSOapQbIr0bcm9f8bi1GwehOl5UcZlyU5TVnQDzOF1-2FlRDt3QU6iLtrsP0B8vk-2BbceTU" r=
el=3D"noopener noreferrer" target=3D"_blank">Time Management and Personal E=
ffectiveness course-June 07 to June 11,2021 for 5 Days</a></li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwJjCIjWdSAoEnIqipMIxB64ry3PmRm-2B0KBviVBSHj3pZ4oicHX=
WpuUWsbikDyDNQGBPWKzx3jLDnqsfBgeShX2FrXgNU18XOVPHS2LHi3yeSIoFQxAqYgbSgLDUxp=
41Wofgy0EZ-2BvBB-2FJlkqo9IGX-2FiECaLPTxBTrns8fhB5RZy-2BhvHttURKXfEojLSDB9Uq=
ZD30-2B2ESIayOKxDtVUlrXNmjTf7zZYaTnQYr92bu0c3PQ7Pd4lN6ogQKAxRTCpWavEVlwmwy1=
AGhDjXrG4WmqKOyJUu6E-2BvcyVATPVg33bRLoFDLtP9rv-2FCW2RSxD6hqFyQ5mUbMGoKIBiKo=
CgkvH1BMBlv-2FQnpFhHGFIpCjGeVKQa7OFmfG5xWJ-2FZF-2BAHG0dIS33azEqhVvuYJCwwwwr=
uhJ3iBYG6-2BVhqCL5VPQ7wNmS892BsGG76sETqpgIY343A-3DprnU_9c2ZCZzrWFlb2tjmei9-=
2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIXs5QZx=
Keyk99KiiQe7Sq0KxGAXZemQj31YC3kxr4O6LZp104N8dADYgqR4Pr-2F77ysCV2ltZm5-2BJ5J=
UU2J14tozfhgIvUeNCgmXoP8Gvqu73ceCDQ32qOSX6K9x9zriWBjgqSsaxD3-2BwAmDentCLnyZ=
NuiZ-2FzEGNLHF13HNiASdD" rel=3D"noopener noreferrer" target=3D"_blank">GIS =
and Remote Sensing for Agricultural Resource Management Course-June 07 to J=
une 11,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid=
.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIx1qO2y9O=
XZdQ3EdyApgqinHgucAJZpdMsbLGKdKiyF8lHcGyyFzEh1Ugi2Wek-2FHQH4xB3LnEdoI2znWOM=
SkUAAH817gxGzickNdU-2FbPjQwGGcLKsOe5dIKfk9GWkcegaVm-2FJ0MWCtny-2Faqis42mFdg=
79cfHwTYBiV3aDerWRBfP-2BsDVY5Qkw6hX-2BOXwdEY4GWYXzqOsjGgdj5pMk4QvJeKGO2tbre=
Wn-2BgA3pX4SdHaTYz5tdZlKKGt2YKGqNt-2BYziImEImRKSsMRbI69EEhYkc-2FUqoxK4VEojv=
8GaSvQxxcuKXEhqIetdWz4K0TwJu998BKHOZfEYb59fhzFRRYjwfMtmgwKEAu9lhBbw3t9GDtE1=
nJiiXFc09f-2BxUDkxmC0j8HTKfxZe3do4ME-2ByRYZ-2FqB48Je-2Fs2adrQR3hT6dgkY73tab=
alwF-2BHB5xbnpfUMw-3D3Bsq_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAge=
wWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIcBt74oCzJK2l0bjQAQtdpYBpR0BNW3XzLXX=
vEPUDALdjco-2F4zXWuMlWdF6EowapGBNlvdXnSuSZZxuAKONaZK-2BZoApHpZO3WFU5X0Nfyll=
O7npjjVA3CYfQhQrfJ7gPRwtlD-2BTQzRrSeRAIGtKFqMoFTSPqzJ4crG90U05O8gs6" rel=3D=
"noopener noreferrer" target=3D"_blank">Research Design, SurveyCTO mobile d=
ata collection and GIS mapping, Data analysis using NVIVO and STATA course-=
June 07 to June 18,2021 for 10 Days</a></li><li><a href=3D"https://u1743034=
7.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAu=
mHSwJtqAIPtr8BFp3jXGAABH2H-2FMxlbncmjnapJ-2B9NwCh1yGKgbR6f2NagQEuVj25-2BhzL=
FZQGmpR4fOE0ES4b2xNgOJocURw3jJmWShdItmEdW21CKLLyYLYGYyrtK6paVJlHRBct291Q-2F=
7lwaxJiKa398ZfR7BIzfHbNYx61DcTqLoL3Nq01RPnJrx10ytPdmxm2NDZMB9kTjO1YxhaDP9OR=
4jhUMGFOJFNwTNmneVMsvK-2BZIdR31jbDpZo-2B-2BdDWZN6CuNQmwsLCTAZ1qc5OqHdrnp8Xe=
eS5fQfHf7bIqKe0e41M7unDlAhc3WLRbhTFJmdRwRtOyBP-2F2JSRqfxV27pb56vXOxsLibbYdx=
ltnRx4FxfRWVWCZ5PBWRFlBYxY6pytQfTn0pRaZhMdMU7D0nOdB4OblAIDRW2uRblUxguGn350t=
2XalT3a9nVWaPHMwwvA-3DrWv4_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAg=
ewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIXIEFVEXXTpa59MZ-2FjaBMN0-2FtTYuPya=
6RhZHEbzUnbKvdPfgLo-2FgC3YuK8acLewoz8yfFnuo5CgWc7xR2ZB2MHtwuzpVF66oSKRya6hu=
vi9ib8z3nsCq-2BksIXZtw766-2FP-2Fyi7SAQgDBsZ4aVKPsloCfg18-2FayXUYZ39YF72f7CF=
X" rel=3D"noopener noreferrer" target=3D"_blank">Public Sector Management c=
ourse-June 07 to June 11,2021 for 5 Days</a></li></ul><span style=3D"color:=
 rgb(97, 189, 109);">STARTING 14 JUNE,2021</span><br /><ul><li><a href=3D"h=
ttps://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz29=
9sgWAUYA-2F7kAumHSwKcXMi8LUuW-2BM-2BS12sCATBOdHDwE-2BgD99QLMjJZN-2BFSmg-2Fl=
AdiS7bOJNxyvAhJdNdbxloNfeMGmZTFt1h-2FHOwRzGLKdiUUsNQDvL-2BIIA-2BGhUOOEdWECY=
7pben1sq5uoRRh0EQWHYkWnkacXX5n9W7ZO0uFnV-2B4FU49LYMg9moDWyt9j8nt5mY7k9lai0D=
-2BEvq3sDweXRCHJ8p2tWF200L5VW0VGW3klX4ERKMxZ0BNAiwc0GLpUh5qJ0twV66mPdrZWK5u=
linrnXzjTyuOnNsUo-2FIQ5XIFwUdBZA1YrUxaf2G0wr80Zb5pt6Cyui9HNwoogf67vQ6oDn3rN=
-2FawBMEzOBUbbWAxO7q42QCX4qxMziFEsVTMBo7v1u-2Bz3DWSh8g8TYP-2BYSpxlXyfBsTBOX=
MCkLlB6pjSMQj1J92iXtDvHTd8stxVEL3iNU5pT-2BLBe-2B3k-3DOzA4_9c2ZCZzrWFlb2tjme=
i9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIX3a=
9JP9DP7b0Miv8XS4oMd7bRvrLfqqKttX1wMyZKDVEcge5ggta0YOB6oykS4SdzJJMc58L4Nfe8Y=
11en-2BDEXIZailLrYnBwFBXNdV2iwM5k0nbiLGPaq52n-2F3yFJN5HWePH-2F-2FZp16IsmcPG=
FQwzHJxcNamDu7kBpRCFm9KfBG" rel=3D"noopener noreferrer" target=3D"_blank">Q=
uantitative Data Management and Analysis with SPSS Course-June 14 to June 1=
8,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/=
ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLb9UCGwkSLRdGw=
JCaRvX0zuyGq4GF6gCNlHY-2BsrP45OHgrQ2xiF0Kar3Z3cCW36dQ5tqa8bYVtw9Qe-2FYC2toi=
LMQnJxlN-2FDcTi5IgyYGIcCO5A378G-2Bis-2F1-2BG8Q35nfqo4bF5gg0hntWuGHdwhjQXieM=
I7gdlNHr-2FnIx4kF6E9uO-2BI-2FsOtwr4eDLxP7CSuDr-2BAOYFf3SvzC7UzOeUdbUsnIWrKA=
l50DyQBna1Ou904s05dEATik8MGA3gWcx4r1h4BccRCBrSZlW-2F07AuFNbtSdy6KbIQ6UZ2BZU=
iJOvSapHFoQQLTioM4OTAT0rtfd8-2BOH2NlDZuY5kO26XX8bCeOnRxlw8hlSSCqP-2FcIuBSSI=
zpJXhyvM64Kwgy5KEG10DKsYwGfM6-2BaKikwWsbTNNlMUPjXa2SEzQOXdq3Yy-2Brsn7lP-2Fw=
oJZtafvc5EduZ-2BQng-3Dll2A_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAg=
ewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIS9DtEd1vG2aNLL4nHhoEew3ZjRoawXVrss=
8vZhJ6MUOLuOJmMhWJMMrhUKic2TNeJRLRb0Z2HoHQADDgr54V7xMFxAxL6mvs1ajZ5-2FoiRC2=
8lYjuyiLCdugm9uC5-2FErZrathCoFnc3s4FvO4mhHvaMECfTCtHtC7jYVSKDvlHLa" rel=3D"=
noopener noreferrer" target=3D"_blank">Quantitative Data Management and Ana=
lysis with R course-June 14 to June 18,2021 for 5 Days</a></li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwJh2AWYhzsKkp0GB5x7Um0r-2BxlnkAMAav0Rwy3lEHD5E4XN2tt=
s4Bnk0x1aQxTs7C269JQVLB2dV1qtsgSoS7y0-2BB-2FmbhaiiRx1Cof1Q6TvyXahgSuxvUxcrR=
ISsZLh9V8rJoIy7oTUzKjYD1p-2Fyu39D6NVUb-2FBxOL1ZYWMUkt2erADuWmUUBLZKIpGKRJ4I=
x9cPfhL4owNdF6rfnmoxQY8QuoHmjhKKe-2FdPOth2gi1u5WMVdKJyCxOrfIbbMJ9tLCS7Hz-2B=
GGWfgQJg4yImr6xrNwY-2FIOqgAUa-2B6dYGiSlaZmbc1cRXdgId7oFkfKEJqHMd25BozZ1FlVg=
Y9C43gAYZ2NaOULidGpascoB8und7dBs2Bhc-2BqVHvKUaTM-2BhsoY-2BfTCVzpvJsFeMtRTjm=
D2wyC7rCyjrFbg-2FgnEzNUkiRrS8ySWi8nByq91RjKiH-2BlMo-3DPIfN_9c2ZCZzrWFlb2tjm=
ei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIat=
10I-2FJBFP7cqhJDbyDdY0bYLFz5pQfaCxae80BrhV17G1CTotXWaOCfmtvKnmD-2B5-2BrKDHs=
U7aVB1-2BW2FPAvPObja1P4LeaoNodNiY5CJD5PrGywW2W6EV3Nzy8wyiNuIquLfOAFApthSZKR=
NJUxQsqs9VpBxA0surYhrQiOeCt" rel=3D"noopener noreferrer" target=3D"_blank">=
GIS for Monitoring and Evaluation Course-June 14 to June 18,2021 for 5 Days=
</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGL=
S-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKmWYkwnggFZ3ASxQ1gDnGBBjxgXLKG6=
J14C4eCLNxQ-2BUsdvq0RuvO4qZyKRQqfesio2a6DUpRx-2FvASzx-2BZBOHygk7nuGukucQ67N=
YD0hSn73Xu-2FsSvZJ2mnK8s4rKSGJuCbKUU-2B4ipujilPji-2B5ux-2FehzoBKHGYlKG-2FD1=
AoAT6oDcLDC2IPKNtc1kVfutnip0P7-2BZqoec-2B9fF8M8ym-2Fzl5Wq4uoq5VWaLjZeVTmtBN=
TMcPtcjBy-2F1G4G2sK1y9rfCBH-2BzZcOqDX8RKkZZGka4JXJM17C6emK5wCdslm1-2FM-2Fvy=
WAv8IEMHNbuI-2BFE-2FOQxCg7s5zbXtDx9o-2Bz6m5-2BL-2FzlapUbBciwb3hqok3-2BLDHvA=
ohtfTvBhxqhch-2BK8HCc9e4IOMxt3d0F-2FvTi3CgrdH8xMExJB2zmMIdCS6EWHKTFEV6KUevu=
hr9B5JXqX53pBg-3DCcte_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzH=
M8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbITuIKxET6cOpMq3lhwwSIUKSlLtHK34SpLldyOfx=
4ElNVAAO167lZShtbc8oi7-2FDK00inntcw2uNzWkdjdEfvvAITEEAs2Yo5sNp2cfSGhuQGfDjM=
MVst8f-2FMHQ4L8yKomDxhpL7FYZDZqd4f48U759T-2Fz-2BwtiIctYVM7sV3uUC9" rel=3D"n=
oopener noreferrer" target=3D"_blank">Project Monitoring and Evaluation wit=
h Data Management and Analysis course-June 14 to June 25,2021 for 10 Days</=
a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-=
2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKD2TvDPDxIZiRbeTTJ7gcv0RQ6irqI0zP=
t4cAdQ-2Fd7fvHPWOqwZL7pBNfwm-2BEuIPcWpj0qXb2fdm3LLOwvRpBP0qX-2FlaKWI9NXmoN-=
2F8alh9rpdW19j5TDZVGcNl-2BSyA7yIQijeOOGNXJnbF92qRlY1EI7sq1UAX-2FULHBabLQJ-2=
FaVW-2B8xlt8gOzNgNFsG5AM6E7xl0v8jXTX-2B67oY3Gd3IWNsoOLeThTYYpz0JDVRMVBQ-2FE=
Av8Zd7BW-2FTtZpnDgeR16bJ9dMZgr61J0MBYvHrVs7Kuo-2BXyZlXLwnIgwmw7SnpnT301j1xG=
6StEc6HSrjjGNo5RG0SKZZwJifWM-2FSioq-2BwlvluPDCSwGBrIm-2FyVtJb4DfM8HqQUaHEFP=
kedNlJ7QAerxLOR5b6ogc0cxKBkicRrB-2FQ-2Bbnr8iwgr9JMbcaj-2FVuhtcOKTxePuUxY4yZ=
PU-3DBRMf_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5=
tjeFZ7YVOzcMI4QQ6x6BFxbIcn15oi4Y3b17aABxBhmS-2FrbHLdpr5DCyZz8jU0pkcpf1RJY4Z=
d20QkIj9XhXOzZQh7B00XbCpgVUCgqT4VFHfBhusEWbnZQNY4Q4vBljEIwQpmJkvxlQ8XyclIQe=
98u6LHscX6w0h5dW9x7VFcNoAoHR2mPOY7Z7HwSV6e-2Fu6OX" rel=3D"noopener noreferr=
er" target=3D"_blank">Trauma Support and Counselling Course-June 14 to June=
 18,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.ne=
t/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJuDzoTqQuXbZ=
yHa-2BYi-2FmoK2TP8dv34UvzCr1BSlGfkTTBzrPmG7W30pHvHG44SLlaRt-2F-2BFbbnac8jRc=
NoWFRH1UF1ZeLcrJWJQg9LO8642D1PeTiPMnHO5TUzZhqRSmB48Lk8Y0n1gLy7DMq0W2vbxcGOo=
-2F9uU8Eb-2FdKI0U4Ujz-2BqWFIXeWKhDS23vTJugqUV-2Bx4Won-2Bmq7TonOX-2Fy2w-2Bd8=
I8WnDriP-2BLODk2zjqirbM2oQrTaggoIIh9o74bRMBLlsGDBwuIxwX4B4IO58Knk8WdJJu-2FX=
aYOITuU7GwM3msBpVKfVGPn6TJz3qeYw4rsuOuVpQqHOmAje33zcj0vIqgfdphiMYsQ0xJLGX0B=
49R8XwKy0nwLnrBa5NSIVDrZnEKUOc-2BK3r0l23EEd7JFeI2-2FVZafwXk9v4cVjcJIx6gjA6H=
7TrxnnSVGMNJhL2WI-3Dt4uD_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgew=
WzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIZ1lPuUNJutRgxLBz09TkK1ozXBQ62EcIhrAw=
wb5qsutTFIL5u8aifbPWBlUEnjvijILBJko9tzqbgiUECFoxEkShRFfXrspR2FynLCdJ7upkZO3=
7-2Bl-2BGm8ihGRswwIVsBAcm52eLOjbVlEGa8371dYsTRYlL-2BpSb5Wt1HY-2BcIOL" rel=
=3D"noopener noreferrer" target=3D"_blank">Remote Sensing and GIS in Climat=
e Change, Food Security and Agriculture Course-June 14 to June 25,2021 for =
10 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?u=
pn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIgrv1RdHueedDYlTxOO5d7j4=
DQ-2FTmFDtLxeiV4JJWqDQRR9gy1R048-2B-2BddS9xT562rXmQ1x5VeZbenh7gT5PbeD4rqAb6=
IDrXqeXerqj69qfyAiaQK7aiRbtnFYLdPuKy-2FccY-2Fe-2FDK7M24WvPr-2F3iBwVi3VF9VqM=
hER-2BD3hgaKjp-2FXAifB39B-2BK7wsu8TzslP8zhNBa3js6Ku7SOLB1Tbx0aqiSXNSTVATSOL=
E-2BVomxIMER2uAYx3WOHM-2BWj9G2pwdVGLIHg9rH4A3QSH5XVXPYoCyewmUF10whIp0y8MnVd=
ezzhi5QkwUdxff7qp5ss-2BHuc2V3BbaBCgLMGsXBccLbKE6H1xHY8Cj0O4oSCWir2zyCxa1QkB=
8OqkbodPdXPz3jTBuyE7K0JSgn-2FRh8UcjP6ddyKuivL7tItmByUOXblhKZWK6S9ln87YRYS72=
-2BaA-3D6Bqx_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxh=
os5tjeFZ7YVOzcMI4QQ6x6BFxbIbSzjj9ePVilUedSrYN85F95SgYDjSOlmEXrZg-2FGuWXzKsw=
yQLTGptz0xaHUrawA8qttqEF2x5ea7dqZ7S5eJ6F-2FibqqSRTB-2FfKYKHa4U4c8ewxt-2FmeA=
-2FX6t2LAf-2Bby6sdvrNKT5sptkSnuwXW-2BhOa-2FhRxSEblby9DbPm-2B6pIrrS" rel=3D"=
noopener noreferrer" target=3D"_blank">Remote Sensing and GIS for Public He=
alth and Epidemiology Course-June 14 to June 25,2021 for 10 Days</a></li><l=
i><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dE=
Kmj0uSKpqemz299sgWAUYA-2F7kAumHSwIT4n63yfAqMsEnTdI8Hj-2BjQw1OlmLE-2B1ofT967=
ehU6zaxxTL0HRT7jYvhc2-2F61oxXas9ljX2z3z1YHjlCCoY8dF2DAd7dM-2FyJ2tNqngx6ZVm8=
-2FngmmzqDlZPEK589qtqiAZ1PiQ-2F5H-2BoojbS-2F1npNB26en1uHSYPaxh9X0nUyV14nKpp=
BdZc-2F2C4zQM-2FWcnjQIiuM9pY2LT5Ew1ylO1oHsSWKX9XOuXYZm8LV2QFj7wuQuqPgPW8JWL=
Y0cCYMxPrD7weIZ-2BQoVOsqcaSEYjxRCeihPasfwVo6TRMrpLi0uqbRGnnm4WQm-2BrWweLly-=
2F5vRLg7alWYN95IRM19G2Gwng1kiY-2FfeL6nD2yZWlQ1FFfrIcInxd78S3rrqgVynR90Y5HXf=
-2BHq-2BX1V3wscNY9-2F4iqaxTFcXtzoXTkxI6foXCIAbr4PAaohWaYqiUhLglgN4-3Dstgo_9=
c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzc=
MI4QQ6x6BFxbIf-2BL-2FVPg1KlXCr-2Bv8hoEfCeczN9OYOXcb4z-2Fsn7-2FaWc8GQFMfaYPy=
3IdvpbqPcKlXmRuSjz-2FHrgWdteE-2B4ZV87Zwk7RI2unpLPebtcmH1dfYe0Y3TtpF-2B0hCET=
flN-2BxePuunVVPFRNFvMNlJkjpF9t-2BhAh7vrWlfo5vnO2u2aCnH" rel=3D"noopener nor=
eferrer" target=3D"_blank">Training Course on Linux Unix OS-June 14 to June=
 18,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.ne=
t/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwInW0ZNo5AuFt=
Nf780SIyzifaKDCpc8RmoSjRUZlvlCAFAxjvZH7uGyRrJTmn4gyPlk5WXyBzOvoFNjAcREW2GVL=
hbKKEmgQ7BLIW5BpAX1kcyYl5PUBmnuwBlorhrC8P3yFoNhitMnjzuwZ2DbDPju3GyptGmM1EVe=
HWBgztcddWHN0pCGE-2Bm76t99HAJPankZpG3UDL19R2kJFQFdlsLndDDnlBbh4Ia-2FFac9J5Y=
1HlSwTiKUJHRMzv-2BEsRqTxIsl7LPjqTuH4lLwtFDU-2BlNRH9vdqMD-2FBrdheb6vNySgQr5l=
-2FozdIn87oVfinx9klrZpKqe1Nmvbibh3wDBqux1DJ5lc5q8C7Y3Q98338bX75yKbPZ4B1apYu=
0ubB0BSV3z2WdfKFJns7-2BRIhOquDrgUGL160vOwvo00K9FSleqYN0iUgF-2FCVyGvSbZ9xjBP=
l2Q-3DvGIf_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos=
5tjeFZ7YVOzcMI4QQ6x6BFxbIVGYKCHhUGQgz7ZLRE187mvbtiazhBZr7T6LFG34JX2mE5oFzqr=
MpVjD1umz9x5wkXts-2FlTsCPjSElFXnBQVfP8x88dbTFjPU9qYuRrU-2FFhiFI1Ikr6zXh1KX6=
YlHdVSXyzYn-2FTO-2BKl6-2Fjr0bGHmKjP64zGNMEXB8oXxJjqrj9D5" rel=3D"noopener n=
oreferrer" target=3D"_blank">Non-Governmental Organizations (NGO) Managemen=
t course-June 14 to June 25,2021 for 10 Days</a></li><li><a href=3D"https:/=
/u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAU=
YA-2F7kAumHSwK5-2F7NRr-2BxkGO0lQReFQWVYwMQiKvl4L4ZpYPx1-2FtUEinGMIH-2BMYsOU=
212rK20U-2F0kONt47y5ODV2RaPCg4sk-2B94QG6Y5lAoYiHN4bc7GrqtIA1Ae9mUtKv72LkU8a=
bsojacuM-2B-2BWOswF2v47lrLkzBcNwC-2Fvnp393vo-2BW-2BjMpO4wNix-2F3Cq8tOc6WlNt=
04XrnurDzAxCRpjHEW0FM6K4d3-2FEx3AcaNK6BBV6PsaRV2iEFS93P3F5rbeKuj4VualsWZckg=
o2LfbJoZANsDOfgyFUy7KkK54d4w1dYXxYh8qGWGxlZmWuTnjVAHuY9-2F0sxG6e49EPl92sRGG=
QM3xiAOWHkVsoOdf7aluuHZfM8PQfiWeMRwPhukMFbPmnnro7L1aNDzOdz6Vr8baJMobv-2BizZ=
hvZtgEyjqr7cHNyJDl7-2BG8t4W5vFsISgJ1IKqUxiz8-3DJD8x_9c2ZCZzrWFlb2tjmei9-2FZ=
AE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIZxd8dttRO=
Wr67tAZ9Co3fBRRa6c1nKkYQAU2R7O3D-2Bv7sKtqxr-2FjLtKUFKGjGzdAhevWmOZku7iDwsi6=
LaWfCYGMkBZNIGfziRq9DxsCp-2ByrqZeZLZ5VkrxchgM7OZ4PzIMrK-2Fpor44R63VLNaewMVI=
0M1esOLVqICuKo3B2Hz0" rel=3D"noopener noreferrer" target=3D"_blank">Develop=
ment of Quality Management Systems Course-June 14 to June 18,2021 for 5 Day=
s</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DG=
LS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJzcYUwioAREMGFCd18PjEqlq-2F2CP=
OOIHwuVsnb1vp-2F988IN51v85MHEHjafQ2SFlOi-2BSQpLwExwYYVSC9j6MOPbBqY0piimV6xR=
kSjZikdQA3bx31r8ZhUXczbbTZNDSXZdq4YKfGtjAgRqPl3iy5NcCHaHMsvrKEGjFvj6UkuxPbr=
m5nfCauD3boEh-2FQXpDaPILHFWSVIFZXHcjEwU0MwAcr7tSGdgdLiVZTSf4DKUPIAuv8Hff981=
BmepFnnrlAQZUWMwvLURKFaiMPbARlXJMHJMza5qfh4-2FsZG4tsU8vc3ZMgjkqQJNpM7NR2FMY=
JBatKTIbJ6uvvX8PX-2FlXhoYeTngHHOFlH6sfV7bBz0A4S5P0FMWdP-2BJUfqWGXHkbYLbkJZh=
9tX7ubc1-2BeoRMbyFDvv6dBeTjTlEnLWL-2FecNDS5oTwe2CMBCpzWqd3iqx0-3DjKC__9c2ZC=
ZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4Q=
Q6x6BFxbITXhwBQ6cwogpn0-2FO8Wvth5tknhA9OIcNXSMmu09RW0CNbveDS3MlT5UCwSYGLDzL=
Np8yl0zO4llNOjQ2Ihn-2B-2FZ7ur8ENkhXDVQ360mKhb9WwftCq-2F1wHXShJ3XqogItsrIxVi=
drcCmHWBsXZ7T0rzSJ27xEkBxCsGHzFsjyp8cQ" rel=3D"noopener noreferrer" target=
=3D"_blank">Finance for Non Finance Executives course-June 14 to June 18,20=
21 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/c=
lick?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwK-2BzeJfSG6KtbOggq=
Hw2hc6Uw3Qr-2FS6oE-2FsOSYnGc4w3R5XTcU0qEwjWhLKqrtPbneSonusHjO3zU3V1krgxSP0p=
Fb3jxUz-2FSV5AHafmCk1tvzw1fag2rNKVyywcYeSx1qQOJCM41yf4wdoGXJDoutkFNZ-2BZJIS=
gIpnfIW0laqM-2B7HQO3OAM9YFvPh9zkRvffjZB-2B1WUykaTlxhkPSe4SieBaymFrKT6HKTZWE=
pNGAnm7sQoCqvL4HQGAPr10a-2BvYFNA85-2FU2zE680bvg1HBI8VFpP-2B5lX1OU32nJePcgCR=
KctmjZqtSYfb6utllmLtVJ2h-2BAyJpc-2FGLxs7jMkULDFM6FtygNu5NGQlNTRkWZVeby31TtW=
wKgSoQicIQHz8JhOrresO0NYejDPd7yq3nzJcSbqqyoEsvz8PdOUBqj2ecFE46-2By-2FIDyb5P=
I1QAAaDJI-3DS19w_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDH=
HOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIQSBUa1hEydH99LUJYanZTPF6WDDQ9owTwAfC766fG5b7=
8iYz8uT96Ggu4f-2F9EfegTHL087KOPG6JH-2BAgjzxW5QPCChbRbVRwQLF07zKQZO5aQ84GN7X=
SiN1opRWclggzxk243SjXTo0M8dslmmoG6fTeJSFb9aNA5qhVnoN6wqG" rel=3D"noopener n=
oreferrer" target=3D"_blank">Strategic Communication Training For =C2=A0Man=
agers And Executives Program Course-June 14 to June 18,2021 for 5 Days</a><=
/li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FY=
Q6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKrUsyGJuX9-2BxGWFYFa8lrVsI0lRd0uBRfw=
yMR7mNKsahC-2BxDl8maLy4UoFVGB8uSJKtrhYVvlZ4WI-2FPTXOhUTgZAQt8Lh0UYZ83cfI-2F=
JTNTtyBYZGWBob1-2BEURneGZvfIU80WnlRcQzDypzjAQd-2FuDO-2F-2FoqSdDVMLEM4p8-2B2=
fVCcDaR3NEsYEGzfGWfEz0qaUwe8rvfvI0zS2by-2BE4NZ8YnKUDU-2BQFjUxU4aO0mknisbg92=
KZHQamTNO5Q0wDj3iyNWcyfLzqCPM4qemfUC9fim6yQmU4sorrQ1FCBfilx6yE7vl57yYmCmTC9=
2PVQMixfNZ5JM3F-2FhXFqO8sJtRPhRYkgN4cw-2B3gPCaJYPBbUFYQNe-2BZjQnRFndpqPaFhk=
hJMudETR-2FSbC9Ct4mABxtKLWM5fJ5TV5UElAHfZ9ROMoM1kw9GUYW24zHF07cFp2JU-3DMbYK=
_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVO=
zcMI4QQ6x6BFxbIVw-2B9cEUx-2BkUe-2FUe41o0F9n9aEWgihjdsUTXqf7SEFpXfFpDx5uHHCA=
UrEcV77Xvq2BW-2FH4Ec5Y4DEPx-2BSsaq0kCkC1vVqDMVMT85-2F2QvrGUvvodppyJ20Kk-2FT=
qIZFBImqpgNTUW8sDEsrbCkdWR3oP7NVlqHSYRy1vl0HGrm-2F5z" rel=3D"noopener noref=
errer" target=3D"_blank">Treasury Cash Management Course-June 14 to June 25=
,2021 for 10 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/=
ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwItBd3tTRd7-2BW=
zl3679g-2Bazw9gWopGGAH2teT6ltgC1YnyZSTyj6HT7kopbpsfZYypjPnEGBr4pzCBOKy4x8Cg=
ecygT5H93gPo6RbPFxnpHk-2FqXVgujjSesmrcTnRop5CFRAYyAPFjnWenTbwHU6VT9Il3IQToH=
HsQ0FQ1e3YKZcPNUlRr-2Faat-2BH0C-2BFuwtGxyl0-2FXgORd2Ghkt0ZXHOdvjU3FbCLp1dM3=
ztnmTDZzBPywox62SFeLBr28DbROTSuhiqbx5VNvXy1tn7dUQsaVC4WajrReaucNVdUAeTLda-2=
BekRRTMRTwgpvY1IOLOkH0iCWxEcv5vvUgT1-2FFhdDGVoS3ULmX5X59GtJvTabcHbS3exsy5OV=
LuHT-2FSwXZISYmvTvaJCNZqoYDPLcVY0t4niJiV43-2FeKjsKBM4tHDZsD90xbj8RxFtGtmVzV=
1Y0AVk0-3DF9b3_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHO=
xhos5tjeFZ7YVOzcMI4QQ6x6BFxbIQMuoBeu-2BIWF4aTJkWl1A1MFsA7WE4kpEieWsaYbBboSL=
KgV9vapqXcesUWG-2Fzwuuq3ucEwgI9EidiJ9Xsvm2Xfqht4oBQJzeUNSsQJ3w9KJhCONNOBsCM=
3kd1ws1izNSFA7Kel8X4hmZe6o32xapZmaJvsxL8gnb4ClP9v7yVBQ" rel=3D"noopener nor=
eferrer" target=3D"_blank">GIS Data Collection, Analysis, Visualization and=
 Mapping Course-June 14 to June 25,2021 for 10 Days</a></li><li><a href=3D"=
https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz2=
99sgWAUYA-2F7kAumHSwKPorj-2BosgsBsRWYGnM07aVEfgff8scbTOusUuQ9Oa5nwS0olN7mxB=
si-2Bg9XiX7d2FvvTjTALd21xg9biFHa8xsP62-2FJr5-2FRtiQzfPDgZXGWD24TzLswsXE-2FG=
GgJCq93qx6k9uL7gBdEXXzJzx58OYkHZRhJvdvRQvG4L2gR3W5xAcV0RdBV93ras3gkigom0nJy=
xjRYH9LMnWkkZGM136TOlmuN-2FFsSYb4hXT7DZeQRinxczZ4JEuVcDYMvdCI0kdPLrAYXuEUqb=
YKF-2FRxtFgXllMCpyWr3bkSqhG8DApD-2FYhzkbAidpbOyrG47-2B9z5sw9YCdeQ25SN-2B7UG=
73Vyq3zowIjFwgfpRjrAwBSN16hKzAfV2TfaCftZFETdOlriuIDD4Vutx1zfSTKBaepZOyPp1MV=
PHp1fb9tbwwnIqB6mC-2BJJYLcx0J9RNb-2FWartk74-3DO9vh_9c2ZCZzrWFlb2tjmei9-2FZA=
E1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbISVno0SDBo-=
2BJR-2B5mc9ZcCiSzcDMMp7oa137VY0sBLbBq6JviHR2B-2FU06vOU-2FtKcKeK-2FsoGaXwTmL=
UYun4ngzTfrDuN77ld0xWsscmNRCBSZeQICdP2lXpRuUo3UDjc3-2FtZ151lKHQnZqUfLWMbKoJ=
VViPPjIVT4eZm0-2FByD2jBE3" rel=3D"noopener noreferrer" target=3D"_blank">Re=
search Design, SurveyCTO Mobile Data Collection, GIS Mapping Data Analysis =
using NVIVO and PYTHON Course-June 14 to June 25,2021 for 10 Days</a></li><=
li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7d=
EKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIKxoL9BW0bASE4rcK4q2joQ49jyM4J3JvXlqfTgot=
-2FYxtxRcxjZjFz-2Bvn9inuH9Yp8SvmMB-2FP0Xo04B6O4VcmR5K2maUfVVZ5KtVLaraJy3zb9=
8sli0N8t5P-2Ffx4AwZMdC9wzQ6KsMTFmu-2Brhf095YnPEWAQLYYCkgXzH2Ramc1Qzuilnrckj=
SCTHualC-2BMh0Pf9IB6MCyIh-2B7OVQmpAkcAYfsWjtLTOTjU3bVxtPOj-2BOOr4hv6vbE7NaP=
JankBH5C-2F9A9cnM81R9CBKJXwwzPjSz8eaE6a9DeaM8VY4fg9LND4xwfGaM3cdF0pWIvrW6cV=
008bx3trVO8sVHE1UlNdTBty4RZVM3vKzNshLCAJI0hZwidxY5PLOFfo-2FhUUPjgvbsLloFAtU=
7eWrRf94xAB6a4pOEmZZWoa8mtEjTWLQYzVZ-2FroXvOYstgWVWyygg-3D7lJ2_9c2ZCZzrWFlb=
2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFx=
bIe-2FlgZowOu5LIhxgyhhZHJ1KRprOvWaJdi5xRUTgjs6e47J2IzmZ0VnFmpEUj1nOqs05IvmH=
v5AdChLcP3JecurD5k0Jdm47e1g4hRj6cp0X2mWH8Rjn-2BhUvIIgObJ51ReMFVZ8TC-2BGZ-2F=
ixZF9uOrVhVA44cwUr7QiiKpNOIA3JY" rel=3D"noopener noreferrer" target=3D"_bla=
nk">Economic Data Management and Analytics Course-June 14 to June 18,2021 f=
or 5 Days</a></li></ul><span style=3D"color: rgb(97, 189, 109);">STARTING 2=
1 JUNE,2021</span><br /><ul><li><a href=3D"https://u17430347.ct.sendgrid.ne=
t/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKi4ue44KiRy5=
CZOUWWq-2FSHlCCZdPWVHy34hEQZ10ztpBnMaIiB-2By87eCEjaRMFIcf32ZpsEZ2m0nxGRbUmF=
zgwflb26x2NOMZoE20ihSu3m86KREdeAQpgmofMM-2FQFmFVBjID-2F82uH6HByZm4uTiSivJZQ=
3hErbnL-2BJDHEF05ibytZUX7zpLJj4NBt6i1-2FRx0i04bVxEOA4MwDNVLysonN8D6WBASXtr4=
ovk82KmT13DjoODDoDhzL21Vp25LZhb-2Bkl91w-2FFjKLVup0dUHk8o1yizILgBU9RwfQA8StL=
dEoiskuTQDXMoDzR8072s4lbDc2iJ5gOSg9-2B9ecLjFwUj-2Fz32Cg0uzHPebpCWk-2BsGzm8E=
znsdX7IuiEovq7V-2BhrjLmU2B4mLGYJTTNHzMUkg0LwjUSDGt-2F6zYm2rzSqijrfRcR7LCrVQ=
kVOHWCDcgrN4k-3DEq5N_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM=
8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIb3b86fkP-2BF4pYUY6FxhUrQ7ExPoVIhOV0xk2Ah=
RwTLDo5OGjTPT7o-2BuV8SrWqocVbnJPNuWBzwz2wxxmAW8D2-2F1sJewBE2FiTfW4rNgyoISbF=
vpV25S1j-2BLfOCXNEpldf1lyitxTCJq1fYDTvWhKLIMVX-2F0m53-2B1gpwnEDArltC" rel=
=3D"noopener noreferrer" target=3D"_blank">Research Design, ODK mobile data=
 collection,GIS =C2=A0mapping,data analysis using NVIVO and SPSS course-Jun=
e 21 to June 02,2021 for 10 Days</a></li><li><a href=3D"https://u17430347.c=
t.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHS=
wJL3OvIQGzHzLVNUymFmGF1MShJtSUMEbjEKKSktEHq5e-2F2txRfa57ru7GyZIffrOFV9CArLq=
86PUKtqnAHJraeIDYcDgvcuq3GQPEjvni4M-2BZ4DbCdRt-2FTjfFWHT5di3DMorMXgsyhlneqA=
c0fSsRk9aD57PuLibl6x-2F9Q-2FBzNO6ylTSHj-2Bx-2FDv69sCz0p4I-2BGBQOGuYsuxJuZU4=
GX85yKCjXh1-2Bo94Ha-2F3b0HzTMw5MdgxXaq68uUotvLajIEivB5nXJVuRcYVsWnt5XvmsBmH=
vIWavL6lD6-2FadRuUkZBrGW-2Bu6e9cec8vIoJSHA83iEGdMT5FcZWo5ynO2wd9hcI8a28rhli=
rT2EWGHMWMVg1QSUPdq0fzkMPFLNBuDfHT7uFgnjCxWgG1T8eMJ5MS6sCjuIbYXCmiATn2SeQWE=
VykKxbAjprb39pj5Ai-2BDqrpk-3DW7Y-_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2=
BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIbNiYlpvO18CjpAWktVZFj20-2BS=
tggg2dJWbrQqIPISqqdfokfq8MLUH6otMf8fsYCbB6cjn2J1vvK5WMsxCAn1kg45cAsFcIopBED=
mi3iznk6pv01MXS5zIvmE57Kl2NLarRfJNODaRkDG5IsYGUtkCWIlK7UoVIDalam1WmGbH-2F" =
rel=3D"noopener noreferrer" target=3D"_blank">Monitoring and Evaluation for=
 Governance course-June 21 to June 02,2021 for 10 Days</a></li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwJZkueatjLexJoZdAxZQDkayX0dnnQcyTRzWoF5YDGRVCL5KvsxD=
2vJuAg54JBN5VW-2B753mn5N-2FQQPIEr4IXf95XjoXjuML9B7E0gNYLCAkYbqxGR1ku49YWyHB=
LukKLqwMQ6DoQYry7txHwYY8R14kot1GfDbrBi4ZqQ1oVakeq89vVgnah-2B3vGZtZdLKHh-2BP=
HAs0BxYxDsZ6GGbuTG0W5XT-2FqUvs4k8wZqRo4HJuL3EDwlY180aO6jPZh0wBRnn0DiW-2B-2B=
zECTcSXlo-2FeUSPiPFPaPRojfYbv9BZi5lhjMijj6JJmW9ur6slQT-2FbZv02xocGWKh4Gwi4B=
U-2FPUIE6kQ3qXD-2F-2FEn4rQ8WrCGK7eBrFOXPdb2PyJHmhMo8w4D60jH8t1mRtwRiUP-2BI3=
WlMnAkw-2FuqpJ7FkKfXmCWaBl9BbsQloUHBR8myRuVeqKRkP5c-3DUiLe_9c2ZCZzrWFlb2tjm=
ei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIQF=
rqC1WitfIysDIEgtWefXHsuSa445xAVNMBPXb3YcGqgsNUam8IIcPD31e8BR468XNHDdC0KbGg8=
6V0FVh-2BWWrH8teIuwN-2FOqU1HsjG4GorwA-2FuuujdAAqk2DvQhaXvdps-2BpmGkD8dJTQL9=
4VEMUKdBK9g3GCYH35dAyDPCD1j" rel=3D"noopener noreferrer" target=3D"_blank">=
Monitoring Evaluation and data analysis for Community based Projects-June 2=
1 to June 02,2021 for 10 Days</a></li><li><a href=3D"https://u17430347.ct.s=
endgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLl=
tqCW-2BodHum6M6TWjt7pzpQEUooQfSQr-2Bz-2Ba1932t4tmKORfRNAQBH3YM3953NW4X2Xu6P=
cjtZ-2FLZ0nMmKioizs5Z1TaVK6X1bR-2BF4s44PdVJvRrX-2Bk7JKG8mAvP9dWQf9giTi9pVIz=
nuAWdC75ESkrXCSvjPD7c88Ng-2BcVG3RSVLnIMurjDQ-2FDdeFJryx-2FbFfa5r64HNvud7cH6=
Gl2X5YIp5XJeLJf83Dvl77gCxadYxBy3MRmKnk6cvFi9MOBb685KqPP603FNM5rZ8A326TOZGDJ=
jIhL8hZUVFDqfsY2VSxou7OXr2WsUMLm8iRNAG5MW8ayRWIegYTaH8ziCR8F2cR8tWGTfkdXYjK=
SnlUKyhTyzIKIIG66-2BzFASUBykbVVuQj3hmnFglgQ2SXhcTlJBEWpFDNLt-2BAWn8FRRn7ur3=
0xewpCliTZB1RVG0E4c-3DtA_f_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAg=
ewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIYDfn7-2BuAHOrKl2v4KniDpiQ35JPyOo6v=
NrphTd9v3s0J8E41iULCU1Hn8GOehd-2FzoZrkdk3jmCVfurbC-2F-2FAD6Eo8CkI06Bp-2B-2F=
UckHJT6rz8QGWxpcw0vX1aJ4AbvnKJyTKVcehRCjP7rTtgBj9NJ1qN38wjvK42kDmWD5cLt0fc"=
 rel=3D"noopener noreferrer" target=3D"_blank">GIS for Natural Resource Man=
agement Course-June 21 to June 25,2021 for 5 Days</a></li><li><a href=3D"ht=
tps://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299=
sgWAUYA-2F7kAumHSwJBAXr4N-2B4xWjaardApM5hPeWN0kVI3OL4FENx50xEKVNrQb1nik2DlK=
jQZo-2BUO0oR1wld7dYCKiU67j-2Bj0hJ8ueW7XwWYT4Y2FsGciGa6YsAlQYD7DASHi2fjtYYk1=
Anq-2BbZAUDRzdFm7-2Bqeula-2FkXRG541AXDhxX1U1chXIM-2FwrT0pOgy6HLX3r4GdGMUSfv=
cNi5CrcbZzakkiy9axuj187rSVPMscBfRjkTRmfvMO19tHYfshaWkT7Xz6e1Sd-2BhP6Diqyk98=
a26hawlyUINdE-2B-2FFoeE4D3xqX4CbbyHq95X0NPvcRx-2BEsPY1LWu7cPPYlJdE1qjzFxjEu=
OayA5yWauXBe4MGXEA704KwBvTG1G5-2BZeBtfUhrb1qMQUPtY-2FEIwFrxqhNLVE9m5pPCuSzn=
JFnvbCjYXw4akOyRlawV-2BieFdHslIDrAUd9qVeWVg6A-3DU_mW_9c2ZCZzrWFlb2tjmei9-2F=
ZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIT1VObZGv=
8V7sbEMp-2BmD7BjfRwtz6Mb-2FFc0euE3ndh85fIyUISUKg0jExcMGYOMdU-2B4h2Pwun49R0T=
6b0-2BdFVYrYx-2B-2BPGBAj3EUpP1lrdd98STAHU7SkfgvFFbbeP5XcLnMrS7V4d9xVDJRRD5L=
jV0QBE4EHcKYpjiLRKivAt30L" rel=3D"noopener noreferrer" target=3D"_blank">Of=
fice ICT Basic Skills Training Course-June 21 to June 25,2021 for 5 Days</a=
></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2=
FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwI5sMuuK59uP5rSGZEOOoZhlUiuWBuWm47i=
3jucIVGGdjaSrDz-2Bt0xrs9IgpsSgDTO6B45epA7-2BMgkmlkdlpLLjcO5kUzpxkK3Ky5nPvCX=
e0-2BmjLEfMeVQqR-2B5EFVyFbZ-2FhwxqgWqFFn1VtvMu8c0S77SgetdI9Lhu26fZkDtKzh-2B=
7o6HAyFBBEMsW9qwlrs7Ns7IQzcIxDQTvNPpd2m10QiL1afbRzNHMk5UrC-2F17ZnposKjiEHQd=
W1TOGsvsjAGrSKwbuhHT-2FKioHNoEy2ztXQKqSoJvCvBuTHDwp5u9lpfDzRNOO-2BpYViv86aa=
Uel5QUBn9MlOC8953BT-2BMN-2BfV9Yq8CmMDGg-2FgXfanWI3JKpb-2BrHi-2BKhBYJa-2BB4Y=
X-2F-2Ft256hEz1RiiZzEMmn2mEZNsmCsIq5i3sAs3zp2BHUzii36RYZRqQoAEIRiXA8AZe-2Fy=
Q-3DfZ0D_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5t=
jeFZ7YVOzcMI4QQ6x6BFxbIYK3wjQO72JxTMTMJZkjtC6o9U0Y14WTyFWB1Q9v0XF1kvgmJ-2Fn=
D9g6PxZ7bqhJYGKW5pVp7Pkn3I8F19d7OQs0KP6kSrg-2BkAZmHOe3U3APQ9MlWN9ZofB5IpR0N=
4I8AALvlhxIDkvNeMRCIAyyOQ2rlnXl-2FVJ9Bm2quVPPGi-2FtU" rel=3D"noopener noref=
errer" target=3D"_blank">Grant management using Sun accounting system cours=
e-June 21 to June 02,2021 for 10 Days</a></li><li><a href=3D"https://u17430=
347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7k=
AumHSwIqMMxWpp-2Bqw7K2BLSDoPKQ3gqK7JI-2BJH7TK26mNt6lcjiYZrTLS1WFHaCpFKY3unC=
w1fcnwTYegxe7hWAh1u-2FpHxDyZ6g8q45FXjx-2FcOoEM94SRW9UnIAW94T1rHxMIqB2a8hhbX=
mjR8VZtiQ2m6h-2BygV1sxCwMm1KiieJttcLITg1IrUAnBPzw6NcbwDuEhyfjGI050wSMrsgXBh=
wUZ92hyGS0T281rKrTLfPkDPAhv0aXktva-2BxaHQ4GaHWSCnU3sBQ-2FCGU1jBzzoPUz2vG-2F=
miHinX5H721SDQ7ZsyjhPdW-2BzFd9Dozj7P4eYtFWMWZPkBUS9KWOFcb17QLk72juOWamu-2F1=
e4TIlAbcKUmCZ78QzeXF8bhhLPtDqjBai75aojrAN-2FkFKjanxQQs1PCsQier2YmYBbwPktUqj=
beW53d0HLuwB7mRgVG5-2F1guxTWc-3DqQQ__9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lc=
B-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIT5BRzmw-2BMd8Xk6NfdogFQh=
X2HUlb12sTdDn4NQI9qupyBhR8LtDxqiEGHq-2FNG1LHZXpO4qSRf7ebQ-2Fb45uzkpyUgQT3Uk=
oCjCkLAvNUYhwm52n3iVPFPgt74TKnXAGC7zau0nTrYH5iiC0mvKJ9NdNAETvbilZOkeb4-2BIc=
7a9HC" rel=3D"noopener noreferrer" target=3D"_blank">Financial Analysis usi=
ng excel Course-June 21 to June 02,2021 for 10 Days</a></li><li><a href=3D"=
https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz2=
99sgWAUYA-2F7kAumHSwI4xDZGyCu4UTmVkmAKQVwTFSMUpp-2FTOgQykzOBJU02swbtXPBw6MZ=
tG5detSkn8Icg6eWziVMLfcIfAd4WnLKkXVZrXx8-2FuE4dUINyiKpxL5aZxYLIRS7y0yyNFczJ=
XtD3ZNrJ3nhAXW4lIFrvQ0ALfABe3xF0SqcCX924XzUoUYxx8V4BxK-2BjevdJkV7Fc3ATlcioE=
2dk930x-2FDxuh8bBHutuPdcY6Mx9F0VrCpjvkQPs-2BxsCMB8RKXlmXppwR3cQsfI456FqQGc-=
2B5LMzfeHJjqNsk31povZxBaUuZPxLl0oK1ZD6Lf71OEmUFEDTL4M99cF-2FshnpLLiWdWJcXIe=
o5kQfTBTCk2l3ijHbCfBNnIvQKuI1lXOB0BeJWs8ieJANtnxDs-2BC7BmaLVzV-2BY2OU7-2BfW=
Uvho-2BCi-2FzPzkmira81uIRwcNJoBXwYXFp7RvHf4-3DB-0Q_9c2ZCZzrWFlb2tjmei9-2FZA=
E1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIQjT5djMXmS=
Vbhrv4NuzitwanfCm6esIEikJsMWIFBbUr4ad-2FYjUDBOeR-2B-2BcFJ3O-2FcSDsQ0p-2Fwjr=
7ME7UrzmxbtkzkYIk0AUOZwrPRVsz2UpOZHwERYd2CF55R3dHlLoMvlXuHW6H1JxvtkWjaMyl9f=
K1tO9Ch07JWAOUhEHh0E3" rel=3D"noopener noreferrer" target=3D"_blank">Transf=
ormational Leadership and Governance Course-June 21 to June 25,2021 for 5 D=
ays</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=
=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwK65o1hc2gxTzZD-2BHLH97g1KB=
G9SplASYwmUobNu7ixMfKOaMxnrsYF6kGCTGYHs8wXkxzuyYeCKpLFuq6siCVecI7xdDcyJkr9X=
2sToqgL1vor9p-2BvRX-2F6mM4DzSB13XdbmmVZL-2BlidGkgKjtSuq0rZup7qy4-2F-2B1Nnz6=
tl5skm1wRapeG1-2FlLdJP2o9h00hJ-2F-2Bu9SIeSkZDdqk6A0uzxqg5PGY0Bf77Vz4-2BbPvq=
-2FZ6RokWnnL5U9HP57WPf9bzIkpPeXCB-2FCS3PUZ7ESYJ-2B6ZecbQ-2F1gZJuawpNx3BLq2C=
hjpQIH40h9rFxst4O31xoiqTsn7A6Igyilk03I9pMjIBEf9jm28ZSPLI3u5WetgJUwFe33R6ltY=
onSUg0jqt0dpoC5p9N69oHdK6UkE5pQixNhZZdsVQ46FGuTQ11YrKpEq06TK-2BDjzybh74u6xt=
2V4-3DumE4_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos=
5tjeFZ7YVOzcMI4QQ6x6BFxbIf1lYPbNxWTJJZ7eNxSaark68-2FYVnLmIiS6fIE1IZ9192o03D=
5ODUfE0pl0k4tni1PUMto-2FSCGe0Tc1VzbPNy-2FT-2BiV-2FYAfjOi07FuK7evXqcONsblEuf=
erzEF6tzFgelMyFENIU3wMW5GN0dKq0c1fkcd8cdryF3WrZILBr9xZXj" rel=3D"noopener n=
oreferrer" target=3D"_blank">Inventory Control And Warehouse Management Cou=
rse-June 21 to June 25,2021 for 5 Days</a></li><li><a href=3D"https://u1743=
0347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7=
kAumHSwLyBM6DifkvHjUgU-2F8V7PckapdeF-2BWeG2EJ-2BB-2BbcBvPR-2BtFhbinQrE-2BY5=
lDdaxAUBkmhPx63HJqIvI-2BZcSjaZTBewemII1WmQQYTQCR-2Bq6VpPltL-2BwoSp6RbLYXfiy=
SEA4Do-2FdavLUCp64i0faCv5DKJIgFWeXgrQRyU6yZ9mwa4-2Bj4zpU3QLMKs6-2BiXWEB7ewE=
-2BoiGgFahdfs3iDwc5dQw20FqiUxHthz4dx5Oh-2FTqYnaGaDSDu1Fpcoqt-2FxElchBkpCB96=
u17CkN-2FauSqxX7FK4THts8Nzhis3GPJAJt385CkDorCVw-2FgWUU0VUj2aPSNxNO-2BrLQC-2=
FajoWm77dnUnWz-2BUDbvqDbVmuEYkYDoc-2BZ-2F4NKHcFeMXRzCFH2keA35cMjHpLXpOpFm46=
Cx7hPRIRdBFyMhMcizC4D-2BIWzSBr4f2GJZj59OjehTOgHfq0Z0-3DPRg4_9c2ZCZzrWFlb2tj=
mei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIe=
aNAqJmJie7Udj-2BLy30dAgooAd92pRKT1O4lLniveer3LiB6net-2FqwP2k4-2BKlKPozXO0LG=
MfqHGmsiiBakJBBuv3aIcmJ8Y-2BMC1AveIwVeyC2Qv4bBU-2BDZ9Lqhm4rplVtzaplehZRRI4z=
bjIVgDAch228TsnbC5qhOrmLtnA5xa" rel=3D"noopener noreferrer" target=3D"_blan=
k">Public Health in WASH during Emergencies Course-June 21 to June 25,2021 =
for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/clic=
k?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwL0P-2BTPI3mNi5ogdg2DZ=
00EbrPIWK-2FszRfSnrclfNpzfhiFtBT8mUfhRCPcICy4WUj1AQMcE5jzGdYn7-2Fus-2Fe76vD=
vgv21F-2FW66FSZyKIn3ebHtdWmoJb70p3e3jcz5VhsVInbRqLntNqMMGmWg-2BTD-2BVydSViN=
5wzHiB-2FsMnqBPOpvoSSN8-2F1pjaOhWeTO7QrZDie1swhOd7HHScxMApAqNmtYAZa-2Bt87CI=
oKQIo5Gx5L0nlNRwKTLrHh6gvKteP4PcX1RlVdDBlj2N5MMgkrItg6RBMVpegDg6NtR3dfNjlzA=
jw5G-2B9F01A1eJfsQioktJZos3Uv6ztG0-2Bl1L54WKlLUgwFIgawH6M2xV55txVa-2BDH3gxr=
ZQRjeGtz5Rjcsciupu7oaP0eJRCgowgiLM1IcO58LQQngGdU9c-2Feto-2Ba6Lb8-2FH6DcXnTx=
kX1M-2FMtyaE-3DTlcb_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8=
gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIY3BeKWblnCdATPHbL7gnViCAe0ya1bKBkPMoD5J6k=
a-2BZS0KqS8O0YZURrK5q9Ma8EVd0MPuBo6x0fKHiuvh6cLd4Eg2Yx0E2qH2yL4XHFecT7sWi2U=
khnGCnsmeI05bnPbvSRea0I6vFA5iWcYWTa6wuNILAivAWgQc93VyWd6L" rel=3D"noopener =
noreferrer" target=3D"_blank">Entrepreneurship and Innovation Course-June 2=
1 to June 02,2021 for 10 Days</a></li><li><a href=3D"https://u17430347.ct.s=
endgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKT=
tQyMTzyYde1Ll8dvlajbz6Uaje0-2FlTFpidxI25FEaIlMHiqK3BfCj4rU3CU02BHlmXQVNmlQy=
pjurNmkWkgnfWJS4QFk9Uj0nwfI1ET2vNixt1J9GiWyCeFR-2BAkLzhf30Mthby3ywZjNtpRwOK=
knf-2Bz3bRAKCA5YMyCdU5awGebECkHdi5R6BjMk4ezlRaFsKoOOOUm4Q9dF6wQNWwzSO49L9kz=
cxMBwv7OVMGwuJ2CBNh8xFhitDCrGcagq0srG4kMmjBqDS-2BlnrqvGq4WxR1GuFbVVwcE9mOyI=
W3BxT4UxoE613r3njpCwW4rfoYgnsg2VYOxL22ScaNk37LZYlth5suAvA0Ch50NiXgql-2B4fiH=
pWo-2BPfRZ9b8cmZzVThQ-2BG0yskQ6e7gy-2F3Zuk5PpBB9emI1pCgm5RxM5mwv8Re-2F6c4Uj=
R5uoUwXFrTmKnys-3DygdC_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWz=
HM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIR3HtOfLtgfvfstfHg3kqq5jFuOMWEivGwqxxqk=
yopSYrhKfHk1tyrdJI-2BYVpzDa9CNz1jU6tdgbENL4LnjKCUGa73Ku7eATgzT8tv0bs-2BTTw2=
IfB9BQbgJhTqnV3AtQ7WHytzAHewRLiIJ86TNM9ldCoom2KX8WToOTa7Fcj5HA" rel=3D"noop=
ener noreferrer" target=3D"_blank">Performance Management for public office=
rs-June 21 to June 25,2021 for 5 days</a></li></ul><span style=3D"color: rg=
b(97, 189, 109);">STARTING 21 JUNE,2021</span><br /><ul><li>Marketing Resea=
rch and Analysis course-June 28 to July 02,2021 for 5 Days</li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwKN2c6TpPgdzGCCcvo-2FbWW-2BURdEiEyAOL1f6-2FC4LSMvWDD=
Te-2FdTePVLuwzuXtfntHabHICbNkIjmST6ktoHKZVk9QLFotLa-2BsTW07l72gHJ6B6OFgJW05=
Cev1MrXUs6aehwcweym8G9Gp4eebLOe-2FpcFO9r8TuUxwfThG-2BGHiPh-2BojeSeKR-2BqPDJ=
lQfIchv-2FRHqFD3vZI8LqhgfhT7ob9Ol4CYVq152AtIX4oXJR49DvuITQdZqkgDxlnXOLA5X7o=
-2FgcVHQyWsA2r4AHHtaVxI5AsLqBmYMbYqLbaRwMZvIsaec4oeCrxd6AOYh2wAy3TsDpWgI5NF=
yN7-2Fz-2F8qifwux3AYRITfhJYbsPUDnbHoVbr-2FG256JHAiPzwSrllA-2BNfwyVob8Rc1dLq=
YKZr5rSGPtZB9zK15I7cHkT7FKDjt1oHlm4bB48RaEvEcqTDotEBg-3DVDka_9c2ZCZzrWFlb2t=
jmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbI=
RiSdrvKQbYWQWI7rnWunHyT1dEuaeDXib-2BQXxURKcWmmRBfJQ1seTUMkBKEO6jECj-2Fpe0x2=
WidUlohw9CHIjHEcbR9yFQ7Qi2Z5BBLxwU50EHC4pyord3-2F-2BXB1CS2jv2Yb3tSPveUxUIPj=
Ag1uJs-2BuvpvxcSsypWcMEiGYsGCM6" rel=3D"noopener noreferrer" target=3D"_bla=
nk">Panel Data Models in Stata course-June 28 to July 03,2021 for 5 Days</a=
></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2=
FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLMtEEjmLxnIWbTDL-2FFu2H8SUrjfbucKw=
3c-2FvyoogypVLaFayAcybXu7UgUA5Phqya2F97dv8SiQLXjXdgQo5Y0CLlSc-2FTcr4x0BNSXd=
XDou7P1816Psbpan3f2lxDTWhO8UySiu4Oh9mrS5ciLNnyutzzHmjjljfJ5p3whEwUcX-2BZBxh=
sRo1mTQWZjuJ3t2HeJ5BbOwUXEuwvw77opnu6xYmNPZSQmfnlAYT-2BDKckcpLBOHttIEnv3Zak=
pUHqNVbUSK1SWXTVhcmdTlZ3Hszn1NE5aJ8HtWA8OmcgqZz9FvaelZmqys-2F2-2BOmFJJgTjdW=
BIfDfW5JRYt9YVN5pVf5EkVnbsFZpcQdR0qS0KPPLZh3YSawVfyXvR0nTIV7d1vBNFIwoDq5Lhs=
35Lk5ZmSiteg5SdlwDx1fIcGTmOxBUmfYRhzJhMB2mnLOM2ZJnHZmY-3D_0Gx_9c2ZCZzrWFlb2=
tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxb=
ITSh3e-2FfxL0d-2BvaN8Viu7pm9-2F7dDLgbOS0vXCa83qxAf-2F7MtMV6uQ5mWv8BXJv95a60=
qqMN4eAmbOWlKy3V6FooplaSh-2FAzp4Q6hZXptVY7RaccSrCqP3ZsnrqXsDAizGmv1kJ-2BP94=
nxH3HQvrMuxikqV7Qa4EpEDouYKzkLpZh2" rel=3D"noopener noreferrer" target=3D"_=
blank">Advanced Project Management course-June 28 to July 16,2021 for 20 Da=
ys</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3D=
GLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJDN19qgE6mGmv9XXT79G-2BrvHLWn=
rZpUgyggEaYYgH-2B7hclX5sNL8E83rduyD0xdcngsS8tq714Lwipv3K8BgLE92FPcb1uzpR-2B=
H81rGmNJ-2F5B5bKpC6dvH4nI-2FTHqOzEbQUnHtRu-2B6grY76v3OEWKTNCH1dOYKCzwW6S0Kw=
P6qXeGKNvR69fwKblX0CJh3o-2BNKpun2g-2FR272mEyMzv6tF758MTDCSq9DoE87DeN4kbfbI-=
2F48koHvLeWofg-2FdcWcRcNanWOcOM6ngIwHTeq8lg5SB2WaNVfGQQzeFAK8qLb3SUrw4pxEZH=
E69F-2FjaUtBaf9BrpLZoLxiOgRWnJZ9jmzBnOR2igewpzwBUiyOhAY2OTBZld5uuUBcEjYDbmO=
iw9tLhAkof-2BG41WO5roO6DcfvE7GiDQUYHMd8QfKxE2FJ9-2B4KvsikYo1mJ6X4Nue3Yg-3Do=
owj_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7=
YVOzcMI4QQ6x6BFxbIY4kOd3dP9G-2BV-2Fxf6Uv1y91srjKQo0lQXfDAhfm8deewpt9bQ4MmYB=
Gb1-2FfPAqarUEAFhhf39ozweRwnJZzLl0VQMCAdtuq-2BqSEsSFA8oOCoSF-2FvkWLW7PtNzqC=
k5L4woBc93mDkEk2QZg16c3aEyAKbsS7A1BrCU4ZlYDcQecwG" rel=3D"noopener noreferr=
er" target=3D"_blank">Project Appraisals and Impact Evaluations course-June=
 28 to July 09,2021 for 10 Days</a></li><li><a href=3D"https://u17430347.ct=
.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSw=
KtV5O7WXGoE7C-2BQfDeEsNScGHN5oF0muBQ9S3wSmFOJZ-2FKYrdt8t-2BmPTNGzGGhJ9e5Zln=
Mtz5Iu-2Bd0c0IFQEmV1tRf-2BX-2FnWwEIN8cDdlC-2BntR0CChDfAVnxsKcVFu-2BGLBiYjFW=
3P5gBcATtYJFAG5NPo3PrkuVrUGpZd95WPVS8syMsyjIpJMHyWDQ87GLrUtEnYNZRxLu3CgOcb5=
xkp1KEwKxF9-2BL466LACiG1bguszmx1aOtu2uLPP3TEKmTs0OMCq7bnLZVMzo9HSasqLxLiM4-=
2FnAX9gkiqG1vj-2FlJ3V0slaPtukW0u2XPn02m0Dn5ysI-2Fo6I2ADZV7Mx-2F20LsSKMx8e62=
vHkuvYa1idOw-2FC-2B-2FkCph4-2BO3m2jY91BM86l4qJ7Fyx4nkK2NVaJrjLddRwIckGr6glq=
jHJloFcfJID83Im3SWq7l9FzmWZZ-2BtLd8-3DWGaa_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1Nj=
bET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbISWsA1m9IE8IYTtDdHx=
j7w6Tqw4hq8XmWE35tm9KV-2B16JyzFaa6Srv-2FPZ-2F6e-2F4oDkV-2FSPljCwI9g0ZEK5LBf=
Wo5PdXrbR1z1bp3co9s8QqWVoCJ-2FLprVFZbTCAEcpCh6SvQ7aNXVJFgYglHT6xQGfhpwUy5Hh=
Y2eG8XQqgxD6vZr" rel=3D"noopener noreferrer" target=3D"_blank">Gis For Disa=
ster Risk Management Course-June 28 to July 02,2021 for 5 Days</a></li><li>=
<a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKm=
j0uSKpqemz299sgWAUYA-2F7kAumHSwKMAHkuya1STRcKcXl50a6diBCxQK9uNCqbKigDdY6btZ=
1Vkhzwxk89HzKbMBPmrbJk7eI5-2FWQOgi9Xv6uG22xsKFsW7dG3mRDlLY6IP9g2DYwYLKRSPU4=
wSmQMqeeEIJHURbbRvT89WY4r441E9wkcMNitrsIljpcEjebeBtX15gUUOIAHJYbLGqD4WKppy5=
it5klp7vnw3Zm9jc3RRBy2-2F-2FiCbLH5-2FAokXa5Q1hi2dLM3ltbenbNX7Q3BCvrbp-2FJkQ=
pxkvFANmK6L8x3Q14rCS-2BU35958NE9K1-2BgZkDB4buhXBAoPpZ3fnIFXg5G93Mw9P9KW-2FR=
H4O7AJnbshkbWpsWwKcx89tl0zkhSqELxPZUy-2B7d96iUm-2FMy-2F6dQ1qx0FNkKEPf5inBWy=
yolpjPoQfNNp45wm-2BCZr4VdmLqZMubzRnfyC2RhgXeGfka2z9ylA-3DZ_RW_9c2ZCZzrWFlb2=
tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxb=
IRsePwHPdI-2FPB9D-2F9fVA0mUJ5sQcjn9vi0-2FCY3MsCeye36jyoDgHlbYIauBqIUHZxDlw6=
lRAhheUvokcq0aOLX5CcQH6ACyINqbee2-2F-2BpuIeOdtzOfTSdx-2FjS4mPCL1JdZGFS6Qcmd=
9F5YF7JsRwfFMU31Tj8IBjN3-2FHb6JZVvNs" rel=3D"noopener noreferrer" target=3D=
"_blank">Establishing and Strengthening Farmer Organizations Course-June 28=
 to July 02,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sen=
dgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwISuz=
zdYl-2FuHBFTKLVgzPEdUK4FvGlo7DXawN5708GXk7yOceNec-2FE6DqJjStQZV4AK11b-2Fkr7=
2-2FqfSFDiO-2F16X2uIJviIlZ8sJp6zpTrSJA3KrZ3c-2F-2BpqyKc75ZoO3KyqJ8-2BtCqx-2=
BsiJoYE4BTTW3DwIqKhKSH6-2BgEQZ0E2iazrYdls4w7j9waWqk8lXP-2FkP2cPZP-2FLrES27P=
2NcOxsUvA-2FVyEqTUR2BbOU6-2F57SkiHl93OA5z8ygLriYQsdu4ZXH501SlM7x6DBCwys-2BH=
AAyBZmFsf6AvWHCiI7IZJZzrRou7TBLRmjkF-2BYXFzTrYQpixk-2F7QJ-2F3tdLmr9sU2ghZKY=
jAOafkCAOAwkkkDPcJSr-2Bn0L2jgDNpULgdXeHhlfNcQZUwjNPVv-2FJHdr2qD79k0L3nGxU-2=
FmFn7PC4w7e7JtSdNs04iWEfSv0N-2B31FhkIwQ-3DKcJc_9c2ZCZzrWFlb2tjmei9-2FZAE1Dd=
J1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIYw4yJTQ1AYWwtt=
bQE9hZAGF9NwCMs0f2ut8tcZta5dBk2-2FQx7Pk5xNBJjUsYbOdlumtNnsPcBk1zOu4yBGAzsrj=
-2FcAoj85TV2NNNaad3E6woYzglWvc1siwVqEQC9fT8l1A5tvK6YOXEriqWahge26LonCT8iAPX=
-2FdVayNXYVeN" rel=3D"noopener noreferrer" target=3D"_blank">Online Marketi=
ng Social Media, Google and Email Marketing Course-June 28 to July 02,2021 =
for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/clic=
k?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKhGju8PaRxUwM0UgqysJx=
nVqz7h0XeLs93Hm9zuElzKY76mMbneF4bBEqgD8eeTqDfZiHQa0RIr1z3sLLv2dDcY62n0fBrsg=
0UbaREJp9h-2FRAMMrouBZxLcqOoRlL7LyiVcsPwy53fo9xhRV7urXKozajjWbFoB0XIf8Gtx-2=
Fy4T6dhAlt20K6cjShEspkRdka6GXNyTynlhdTVd6oqVcAvrwgBQETjKiRs59a-2BZstt6Uhy3Z=
Pr73NoK6XsYXadhOmyyuiTGrUEg3pPp90sHPIQkZBQq6UaBg8aZQitbYZaPoMerjtOGeDBmIyQB=
FzzXrOH-2B8TtMQHvj5jOvUT-2BgW61eulS-2F23J7K5A9Og0Hl0AnOWo774hklRVIuNKqZi-2B=
yJBP6q2fFtf746R7shLTPD52WlVgCYosiVVzvQbY9ZTOokLF55L1qdFuSY0t90LVgM8-3D093c_=
9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOz=
cMI4QQ6x6BFxbIQgiRQYR2sApd12V590hob0T76xB4Upenx1OoxVO1ygxtwd1cVoLhQmF7A8HW5=
bEAi5OkABrncIhT3raJhi5MHACzOLBlz0xJ43UioXhjkAlq1skL78lQaWtpV4HcG-2FvNPHx3wt=
XFEVMlt5uKZVP5wmITTxd-2BDQOsbp7T1S2-2FTCg" rel=3D"noopener noreferrer" targ=
et=3D"_blank">Information Security and Data Management Course-June 28 to Ju=
ly 02,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.=
net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJHZ0lrC2R2=
DvmuieqEjhtShevbzRE5a-2BZt06S4eLnXVDqIok8ND5CDsGAMoYdFdn7iMQyayE4LRMAvecigI=
A8orcBJPIsysxtSh5Y-2BQp3gtmsxkNxEP5GrCFGJSCRI4kc0OnAVEtELdSMBAVu-2BTIambNFd=
Pmb1Kxgqp8hwNGDPFGWorXYEVtIFRuu0qyyUtuL2KcitwkRubf6kd22TFTHkZD3WQQYCKFewnNy=
4uWyCoui8pm883lYbEDGuLZaCmcHdQ2bLrCYrS861NyzSIQr9PCFbmOHZPcbW6Qwcv-2F57dS4B=
evjekbD5pHeBZXoYE327rJ9tMXuFCUV31-2FEhf2KkhjQPniJjvemuPnjJa3-2BNHRaI2zssES2=
YQMFlWF6SGQIAw-2FPILMiN8pcLSJKMBFM0uUFVHOHY5Hs2nmEHCcS4ctHX7Rv8hyKhvD0vWEmd=
5-2FU-3DjvZB_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxh=
os5tjeFZ7YVOzcMI4QQ6x6BFxbIXI0en3tjRAq8xYvSxwJaxFwzU-2B-2B7blF7CqITO-2FAAak=
fDuW6arpSquwdNO7-2Flmuvm49z8eOoRLckiqhpi-2F1nPsLf1TIn4YW22UGURC5KkGDan-2Bjc=
gv6cyPVb7vbcU0wc-2Bk7JEnxA55YJm0nNoLPLSAWwpc2G-2FOyUAMSKz5HWe52R" rel=3D"no=
opener noreferrer" target=3D"_blank">Real Estate Development, Investment an=
d Management course-June 28 to July 02,2021 for 5 Days</a></li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwLNqL9rCn9L9kyrT7tkjaUKpeLO1lH1DbU-2FkLI3YA5YkPtbheA=
P87m8W8Ud2ZeP1hgaPYopzLeyCPeh-2BdJ-2FUrboGU80PzLrkX-2BMxsMOm0GFsWR-2BZfZXlg=
fA-2BqqqY65EiLOoA-2FVHNdEnr8yIfOtVokDd2p7Kp-2FVnxtJY9mo-2BK9EcHfg7EypjbFLfX=
tzs0evdn9MhpwvA6GKHyTrdnWYkoGwPvQ51JDSGJIfTDN8-2FMEwhx6WIMFtwJp4Qgaa3L-2B3X=
AYmGHT32Q-2FIOGNUOxoNGdvr8jJ-2BSpKTctBzFQzAnyXhhKCLxbK0UHwYZDX-2FaejSAK9QYF=
MXJ4QUshpuJ8JtO1kaoRLZHU9cnB-2BG0m-2Bc0h5274wMMB4pa7E1VMSd-2F7GDRBge5YedCfM=
bHwLCml7vd1D56syrEBQicsRApqb92GpnC3NCmAYBa9PYSC9Z00SW9Pd0-3D0_UF_9c2ZCZzrWF=
lb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6B=
FxbIULfTkUdr6nVWD4-2B05hkh64GMsT0n1mEeHQ1ugXAaHQ6lHmO36Uzuu2Og-2FouNEx8exCT=
k6qoJKs2WvEGiB5b2wWCRRSyG-2Bcy1pao-2F-2Bcwhmmw-2FgyTr-2BjIBnmR-2BSDk6cNSujy=
QUmXvoF-2FJ0XGWTsO83HJoC-2BWl4KYftvoEt8KCTMuV" rel=3D"noopener noreferrer" =
target=3D"_blank">International Financial Reporting Standards (IFRS) course=
-June 28 to July 02,2021 for 5 Days</a></li><li><a href=3D"https://u1743034=
7.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAu=
mHSwKvFgolsq9PqOD0a6NfyEgK4aJayfG4D0u3yvuYTyeQWhTGn3YFPE5MkFKaqWsQUuEhb6ehL=
Y3geakyV3xzYrVKfK1ZU7PkQ6SPJoVOi-2FEIPsNdgzSB-2FYDRwn9ie4G0DhOkOa62-2BpHS-2=
FkwsTKxItlW5Ps5eCAotg2LzMlqRlXFMvRu2L6FUwcxXRio8Av8Z4wBcOlssTQAV7radOhrFyQN=
SuVoIoSaYYNGc-2BLVULEOjal5YeNqyOdZnacmozL5MnH0chnVR7ZA7AsyocvUH7euFUR-2Bros=
2wrZKaeFiMA2rF4mC2NWISfuuwuOj-2FV3h5kwLRNmCUUfg6IkzhLvrKu1sUtn00xuuU0c6AfNV=
sgIew6vW3pxyPrcMN0hVsPW9BPa70ZIVBFVp9oj8nBhU7KwjQBbMC9S3LXEGqWF9JKgqucXmpT3=
6uuyylZKrMHRvSDyQ-3Dho8Z_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgew=
WzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIVPyD0SSb0gN8tYVrLCcKGGcC1HNFavw7o-2B=
Emk7n-2F4e1zWG98IIGnHuxxxd487UgQDzzMUS9DDh3zPvX8cleow5vkCg74Hd4OZa9SEFXskZL=
m3KkqDwjX3iE2Dbio3fEKcneOc5tmYy3t-2BBxDPJ8dqU-2FHnoRYwvh-2Bnt5pzPA9CZs" rel=
=3D"noopener noreferrer" target=3D"_blank">Report writing and presentation =
skill Course-June 28 to July 02,2021 for 5 Days</a></li><li><a href=3D"http=
s://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sg=
WAUYA-2F7kAumHSwKu3bHkPC7vlCOTrMxZrv4UTlMj-2BcIiOVZNp1C81evQH-2B-2Bv9Iaoocm=
HABZeVUQ44DEK8N-2FGZVqK-2FIsm34vuyCcvyewgtRTVy7PrZ84duuAlejMjBcKpKaXEbmq-2F=
jYGWvnePNn2irTFuIpmS1-2FbwxIetZKVq41fb-2FTZQetjqU7MsYYVdFdftjyt32BxDWb6ZiJJ=
XtK1qOs1h8gIdickr2FN-2FnKazajiIeFNi9GyGQvGhxsf4uOd0TFHqAz-2F4GBfE1pycR1dY-2=
BgpIh3YSsTjOelCKOTrR7k-2FOT0UD5eIcW376WvtTk5xtd-2F25Ev9TgbMzXkqqyAuWntw6BTI=
uUSB-2BpYxzlYkviM8o3ad0oVNXr95qtzbzYbq7aMAd2KI-2FVVrvlrPtQG-2FBPKNXYVVWmcuj=
KGLy3-2FwZhfnwbopdO-2FGByNTJK5umcdQoU8qOmN2uOBpt-2BsY-3DMP6D_9c2ZCZzrWFlb2t=
jmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbI=
bm1F4gsTJn7ddTktrqpcs-2BiCUTE8MoxkUzi0a2-2FrqzYlTsm5as2GwuTMo8kUJz5IgdaCMI2=
dTYpg1ka7kya-2FxzKm0X61ccM9dCr3XKHkgO3eTaNVXWhy5dD3SV4raScPE0B9sTlKzqHl5Xni=
3A2WgQ2HJ78RgqGklfxa21I-2Fjhx" rel=3D"noopener noreferrer" target=3D"_blank=
">Office Management And Effective Administration Course-June 28 to July 02,=
2021 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls=
/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIGIAKLYerJbTBuO0=
z7H0qAC-2BhsBC1klkqX9M0RA1HeKhnQUWI6r10ZJZtLPmK98ykuHtGi5PkU8UVMcxeogV6mi94=
8nMm2NeXeJcfYUC4vQFLV-2F8dN9mTJZvWoEhhU-2FmSVWmY1k1tFTefGrvfui01Pwy3LCly0HL=
VxHbLVTik14eE-2B3iH1pbL-2BEgSLjb5AOtaJvVXwC5ndMCuF3cDV8T2kuqPN88g5Yr7lSNv65=
VadW-2FYwqvRsylimOlWFnhql-2BFsLKB2p33nJ-2F0WM-2FNJglz07j7D2UBamVkfrhIPBlAHZ=
0yuf7uF0UGwz43BdK9WraRPOlrCJaw6uc6bTEgDYwJWBV2nNeTbHDJh7NrDYWH2PguyoASaQmYb=
Xwy0bxP5-2F0p6-2FPBxWTrgRIzT1HtQAAhkrQInvajWOl1M6MAH-2BjsJuF0mho5Eg6Gq5VLNS=
cZKlbr0-3DQ4GQ_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHO=
xhos5tjeFZ7YVOzcMI4QQ6x6BFxbIfOSH6TDRbPNHocmGB07xUdbGLjvJssMjKCFZQO522KC351=
ZP8hN2rellihhMXsL5ihnXFPUMVe7ls-2Bmx5qo2Th8ZBWrdDtWxM5-2F4Sk5-2FskUEHPAswDu=
TKl8Uv94Zhx3lgacM92ujH38pbOntgCa72I-2BlTc-2BRyb6Z1yBs8QXij4h" rel=3D"noopen=
er noreferrer" target=3D"_blank">GIS for Water Resource Management Course-J=
une 28 to July 02,2021 for 5 Days</a></li><li><a href=3D"https://u17430347.=
ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumH=
SwLZQHXCE6yuBM0VgnFgc4Z2QZttRY7AIQUPTn89MHhqZvk62gC-2BMKi9n21hMvmPWnJfJIM-2=
BwbtOutHEs-2Fpu8zsVluoJFWgx057Q8Msm87zSnFureavbfZz4gBTOj-2B6LaYhTESrHt1Wbes=
HUTFRDJzKehdD5-2F-2BNG9MijQfzBBaM8O3VDhLazxFPhQraN34-2BO7Pq7WOeJu0mbkjzG8ae=
bwlJb23802toPC2pAimRk9ugpspJkXZVQqaugsCK7mQqSK86fC4MJh-2F96qLpTD2Oo3GhfZAAJ=
LosNpQhfr9IdmCRmHIbw0yWzzUpDcHIuwr1OamMM-2BTA0B8e-2Bv94m7PBd8-2BW8ZBRIE78hh=
VBGsC-2FRSlPffOFIjUKkRDWv1b-2FDp97IOkcp-2B0-2F6Q9W9Qx09A76NAmj2EEnoYEARQdG5=
qn4XdjCkeQfOozkWVlGHtVQY6bnBIeE-3D6w27_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0=
lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIZffnc43ZYgHUrV3wdK6NrN=
EEdk6R4MDvhfpIQmvxXsVavqo-2BtSDXbsJkKkmBN5sf3KfiUX3Q4KMhPch-2FSCub4yvh8YNAN=
Afh3ZfzZA2tdnyhFdBlMFsF0G8Q6H7tJA1-2BqDLVfUHlE7skJgDRkeazp2O5R-2BH9wJVdTr0H=
I2wjifG" rel=3D"noopener noreferrer" target=3D"_blank">Accounts Receivable =
Management and Development of Credit Policies Course-June 28 to July 02,202=
1 for 5 Days</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/cl=
ick?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwINVXQvPV-2Be3RBMZ-2=
B4tm-2Fg7-2BtpfpxECrjWD2dKz3kZNtgHu1bDW0lsk99J7ZznVtm-2B3h2gLiVrZCmCNooqrUI=
te-2F6z7mmnsLNOAgHyzisV5mS61mOdPSMDV-2FJjbS9OlhjQE2gEUmxwkC7op7AiRmQcKU6ZTN=
kjlcpUKRcsYLedUB0bApNXvHR3NuhV4IBMiWHYriqR78nm5ZNPIToyOhdVtWfNOZ25Tv5VaBaVN=
hDIDVvJuq-2FsHMKWAiroVJaIHyc9ksWm5LOeDWYSm4UFyrtD6BicYHGviclo6TSTwLjjJuwpMk=
bawoZerTc99-2Bk4pLZwFysbt-2B72vg6weE9Ojyjl5bbrrOItoL50xTUSrLUrt90SNQboP5-2F=
h7o4Zr-2FUKI0VXqZZjNm8wctDRxHGXhmgSUoNRw9b6iWr-2Fu1XNX23tAL9oKud4Do0-2Bk3NQ=
KNwhK-2Blc-3DL_4u_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gD=
HHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIe4zDRhS8v49XOu9e9RDZXdcQXZlonZdLBpFo1mVkHfB=
AnH9NOqV0aRzJCTt-2BOzNFgz-2FvjLTRA9UYFsIX-2B3wfneq-2Fo5zLLGeBD3UdJoL4G5TbcW=
v3mOWNBvHCzMg3iuBXhAkFVlk5EWCK21g4gWj8ac-2Fu7m-2BUz0P9CBPpr-2B1qzf4" rel=3D=
"noopener noreferrer" target=3D"_blank">Transforming, analyzing &amp; visua=
lizing data with Microsoft Power BI Course-June 28 to July 02,2021 for 5 Da=
ys</a></li></ul><div data-empty=3D"true"><br /></div><strong>General Notes<=
/strong><ul><li>All our courses can be Tailor-made to participants needs</l=
i><li>The participant must be conversant with English</li><li>Presentations=
 are well guided, practical exercise, web based tutorials and group work. O=
ur facilitators are expert with more than 10years of experience.</li><li>Up=
on completion of training the participant will be issued with Foscore devel=
opment center certificate (FDC-K)</li><li>Training will be done at Foscore =
development center (FDC-K) center in Nairobi Kenya. We also offer more than=
 five participants training at requested location within Kenya, more than t=
en participant within east Africa and more than twenty participant all over=
 the world.</li><li>Course duration is flexible and the contents can be mod=
ified to fit any number of days.</li></ul><strong>Foscore Development Centr=
e (FDC-K)</strong><br /><a href=3D"https://u17430347.ct.sendgrid.net/ls/cli=
ck?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIldVypgO-2BmUp3DL6BO=
CgbMFKbHixpZgRHd3DU89igckwBxOUOxxn4cA5x2mXWTRYE7uXF-2BCuP0U300haJpq7Jve0AXf=
H3KPkdvba7nw2vvsBtS-2FOM18ZW-2B9tKyfghkoDFFD0OFoifDL77BycgAKAtSkq55F3qWV3F0=
a-2FG-2FfgU1jYCZ09i-2Fe5a-2FOpQ8FMwPIQvDj02AV3QKj7Bg3LPGFJscwV67XVZyCYK3pnv=
63Lsp99r4UuQmv2rxtIhakk5Xj3BsXoPcxBS-2Biwf7CPbJqnKdssxGxGqvOwJcd26OwS6fI6Jj=
LLY9bBHTF8Fm-2FGyxwIoj8mUm3v8NuLqNceAtK1UdqSSZVVon5665i4jYQdYTpl83p9gBpZnfy=
lR-2BFYyB1BQvWY8Zp-2BEjkKUdImdZfqx2zpI2Abit-2FNDD0YjGdJppB0CzIvnsLJyU3-2FHF=
i-2BJpTFY-3DQI0O_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDH=
HOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIT-2BhZMh40aLMDfeSCvxvglt1THBxSDGlbctyBZbjopE=
6ffxAmFm0vhMHg2rV-2F6pNuuTX2NHgqH70mGkMYGpzo-2BVdrEE7Y6vri4-2BQGxT6ZfgPTRW4=
wVbLt9lPhFowTNlzvpXxWabcs12JIYFaFXhhgbwtLR5HDKdYu-2FHEJGOAOdKF" rel=3D"noop=
ener noreferrer" target=3D"_blank"><strong>Foscore Development Center Kenya=
 (FDC-K)</strong></a> is a global training and consulting firm that has bee=
n assisting organizations and individuals to achieve their objectives and g=
oals. We specialize in monitoring and evaluation, impact assessment of inst=
itutional, human capacity development needs assessment, strategy developmen=
t, investment planning, implementation and talent development solutions for=
 individuals and organizations, through our highly customized program deliv=
ery courses. We have experienced expert teams in a wide array of discipline=
s to meet the requirements of our clients and investors.<br />The FDC-K is =
dedicated to delivering holistic workplace professional, vocational, educat=
ional and capacity development solutions aimed at bettering the performance=
 of individuals and groups within the organizations. We also do capacity de=
velopment solutions through training, software development and sales, among=
 others. The services offered by the FDC-K Consultancy Unit are divided int=
o three (3) broad categories, namely: Service Consultancy, Contract Researc=
h, Training and Capacity Building described as follows:<br />1. <strong>Ser=
vice Consultancy</strong>: FDC-K provides expert professional advice in spe=
cific areas identified by the client based on client requirements and speci=
fications. Some services in this area include management and business advis=
ory services, information technology services, risk management and advisory=
 services, enterprise risk management services, standardization and complia=
nce services, strategic planning services, among others. We apply these ser=
vices towards the capacity development programs, as shown below.<br />2. <s=
trong>Contract Research</strong>: These are services which revolve around r=
esearch-based consultancy services which leads to the generation of new kno=
wledge, synthesis and analysis of existing knowledge to formulate new creat=
ive concepts, innovations, designs, methodologies, understandings, applicat=
ions and solutions for specified problems on mutually agreed terms and cond=
itions. Services in this category include monitoring and evaluation service=
s, tracer studies, baseline surveys, training needs assessments, customer a=
nd employee satisfaction, work environment assessments, development program=
s, impact =E2=80=99assessments=E2=80=99 studies and market survey. We bring=
 these research skills to bear on the capacity needs assessment, strategy d=
evelopment and investment planning as described in this proposal.<br />3. <=
strong>Training and Capacity Development</strong>: FDC-K provides tailor-ma=
de in-service courses, lasting from a few days to several weeks. The traini=
ng is aimed at improving knowledge, skills and competence that results in b=
etter performance and high professional productivity. Courses offered are d=
elivered by qualified professionals from relevant disciplines and specializ=
ations. This experience has given FDC-K a unique advantage as we see the ca=
pacity gaps among the professional and develop strategies to fill them regu=
larly. We bring this expertise to addressing issues facing the institutiona=
l capacity development plans as needed by this proposal.<div data-empty=3D"=
true"><br /></div><strong>=C2=A0FDC IMPORTANT LINKS</strong><ul><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwI5BL7okS9cOAyl6fuS0Z-2FLVRBfmX3TcOCq0Q-2FaKXagB8cpv=
sPGn2FBAz-2BEcr9NFcrSQ9SCHTHL-2FghI2NOPtmhsHdQ9mdUssI6Up1jjPR-2FN5sOudQQCJZ=
Zd9q2JBlaE38KkevmtYeHkxyuOleGxn6yPeOI5Zn9DvRprszxTkBSbQYaAUXfLdCXaxpukRHBTX=
kZHPUabnn87Far8FJKv6qZ3jLFBwcKP4zfgLkVz4PkO1yHyFg7q53o9-2BT8-2B4Qa-2Bn5NAWh=
4lH9A5H0oztSqJCFlE9rovFoYhPklyO2pURkmsPg5woN0J-2F0SENIVTJSHbpUfaoW8mBRUY1hC=
SdeeIoPbTE13JBNaFJDT-2FTcC3ZUnyVMqoURRWu-2FE-2FHXjsUIN-2BLVQU8ZXtGCk-2BicW9=
rRA7EFcfkjMeraXr4Sr1wLDmyTT0OXFqC8wlojl7xDlBHeuGOsc-3D2qBo_9c2ZCZzrWFlb2tjm=
ei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIUa=
L0aML7QPfTSeMXQxILAir6Lxe3sOwBDFY3CCNZ3zpAUOqc03y9dqM-2FhMa3FDF2plKm7-2BXGi=
7KKZgZ-2FUyJCtKYhUoHtLtxEA0-2F05iyIYFo-2Blj6ikH5KpF4rCXNfgQJVhq2VIP693JNq9L=
TIBmSy2OE1pLVGLIRtzaaIn2nEmxC" rel=3D"noopener noreferrer" target=3D"_blank=
">ONLINE TRAINING'S</a></li><li><a href=3D"https://u17430347.ct.sendgrid.ne=
t/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLImf81tCsNMN=
7NoQNc2bwpG-2F-2FDzsDpJse6rrIi5efJNCPsM9p48nvpKFMWvXuNeaS2UC02Geu0rw2gwWIlM=
PEnmo58CUPCIEMjFM8xdzRYh9EMWMdRR2oxUVlifgohV1uBymatiTQBAadv03zQHOVfzn6SKUY-=
2BdQxTj3EzaE1-2Flvy5G-2FwK-2FbOCsl4phg057lQW5QlYNpCmRjI25Z-2FIrn3IRb-2F1Evr=
pPO4eYDW6uIM5nNzLFRtPQeYfS2T3i3nBTEUX7mwVTejIowaRxK-2FwF2M8vwl7f5QQYUxL91za=
QmD-2F2bDLeRedF8Tfxl-2BF5bzv-2BrQCaYnjTD5sD-2F8rvtl4g03wABDjvAF9YR-2FJO811B=
AniOLMKpQKZ5k9CMG19zStUZBa6YT59UBEjLc91T3jjIvv6uEsU4-2BYw5LoN5IZWYJdDNhJGi2=
3AdX-2Fs7ikIrIkybQo-3DiKLn_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAg=
ewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIZY4LdKtOD1D5-2FoLUPIJD9sYoU8bMLtvL=
fOFABEsRr5u7RhR9Fp7I5s-2FOYghTLaMH7S0bU033hUt8m-2F2yEA9PqmnAaImbAKc9ZuNqmza=
bqvk2sIOOpZZj6mtsbnVIoLbFwutcdqzh0TmzhQwodbBnh8ioSb86u7Kw6QbxiuGvN4g" rel=
=3D"noopener noreferrer" target=3D"_blank">NORMAL ATTENDANCE TRAINING'S</a>=
</li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2F=
YQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwKYP-2BZDvHhWSpyQ6j3AbPhFaV4eHLPyAKS=
-2BkDzyX6MwYBXGaAIK6k5w4-2BpMOHT4qG4Noa-2BA6C3CDHAoZ8k4sjFLVwE2pi8NFTGJFuTy=
jrtr1Lqy9BqmDrgCpW7pe3DD4y-2F0x3Ix4YkMi9JW6BHNbnUcfRc-2F8Ke4hLu1ym5v7u7a87T=
kXMtDndImWgXyGLLJFuEXWrJcMrwO-2FurYYjRfY0vrYar4WLMZK6Y8ZS1XVC16wpnkdxSf-2Ft=
uD6W-2B47SBrH7hJMwfoSjm3N-2F7OZzO6mvWzXfD3s0KoFNVizWggmVDBh3mSIQmG7o4R4mm73=
aR-2BJ9NYPxSObUWSbTy3GZ-2BrCmIED4Sef2W8cv6m46BesqkpXPTW2T55xYC1AxwAOHTTJgLr=
qixiDXEoPciow69lwyvs1EqVn-2BSZ6Yu7kJ13bDanukfNkuDoy7TIyI1nLt3QLOk-3DAO_3_9c=
2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcM=
I4QQ6x6BFxbIa-2BoOUD9QMWC2COHBaSi2FIoR5o3em-2BDqa9qjhsHcHmAy5NBkELM9wCGCq-2=
BAmPg7BmuHuRaH7EXWwCXYss-2B9DEbr7vQDcP-2Bl6DZcQPQcDcrfJ4RebRls9FlOevBZk0XFh=
03M7FZkdUaRGUPrh-2BWf51G-2FMYdcvFYGvPDKFLOr-2Fk1C" rel=3D"noopener noreferr=
er" target=3D"_blank">TRAINING,S PHOTOS</a></li><li><a href=3D"https://u174=
30347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F=
7kAumHSwLb3faKNu1MSmf6C5pOWG6JdN-2BLlzAmKjQN-2B2xlr32JnS7lQxP2QU4z1ZA0x5leF=
A31rznlNjQmZ129oz5bqfnhWF6inzfEMlLKb212r1ASt0zcVe-2Fud0oxTVWMZ51HvyaUTG8yxY=
pcicVOwZNYV0PIpZg7T5tZEynSrSxfch8ePyN05-2FQSVLjIaOFn5bz0xUOHAFLt0qnPO-2BviP=
cVbdQG1fUfU-2FlyxjaFHBKM2I3Ktcaj-2Bw-2FXUnQe0sKYHQscMl-2F2qILR4lHEVfDa618qx=
PcYmey3MmusO739XW00ptLlvz0uP1TmlMwzBqWMJu97BZNsvqjumd5xtTJ89oj1pypm7cQMZNaJ=
sHih3RAXj09CmPI-2Ff-2FhBfIIY6ORSS-2BSB0mBQB1QnvxAqUSOKCOKhFsbdqyvJgxW3snoyG=
6KJU9KOyLZlFrpO4ycPonJbv7WQX3ec-3DnJkL_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0=
lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIdSsKtCr5VcDpHC0BtGAzhs=
06LE0HQWo-2BV8dWje3LxjxYKw-2BJ7EkRrXDmVM7LG9Riiqj05e-2BNpBMCoFV8ZgCWtiRXrH1=
iQw0ityGVcHUZoTwyj66JDC2lUoMIp41G8sY8uSLZZHyAq4uqWa52bQK-2BHtISvlGBDtveCZR5=
lVrDlTk" rel=3D"noopener noreferrer" target=3D"_blank">CONTACT US</a></li><=
li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7d=
EKmj0uSKpqemz299sgWAUYA-2F7kAumHSwLTcla0nhs-2BdU1uxUOtJOtFx-2FP-2FyHD7674fI=
Tx8K78iKl-2BpNFUymwjG-2BNUfdIkN108eTn7uyMcOWcfSqwumR6GhtU6ppaKCtnVX4dUWgMzc=
GrbJRr-2FzTj1ijwsv1hnx6gO-2BD8XdtfqP6z398HfdA1UD65cPQXWKcB3J2EnJa85ca-2BdRu=
cDl-2F394GFAmefq5jdc8D6-2F6lq-2F6aL0LM-2BAVixRdi-2BVwBvKbzW35ST6StQkVGCdZ-2=
FJfVl8xCfBpq8-2BUsxWCX7xGZj0HYc9wyrKgNqq2vAJVEFHGLofRhcSjL58OtFCSSGcvuLBB4W=
PQ6SbP3nbDZs5lgXzQ-2BDDW7-2B-2FN8taJZbOT23wQZwhsrSdcAT0oxZcymxn0UwDtMCMpGuR=
8DOpOwCn3FpLVzm9rBPej0gyYc37DroNXziAvd0ZJXdMO2UrkPoRYs-2BbysYAjekpjJTKI-3D4=
Xxv_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7=
YVOzcMI4QQ6x6BFxbIbkqqCuxbKVQLcX-2Fk9TpNzsxuly0EktPmoFGrcqXUH0cLhE01DgBGRw5=
sAAxZOVQFPrrTJOufacd8793858l3axeQ9IV3puj9CxauRKysBhn3hidkMlPb-2BRcArpH1DhWW=
0BzDJxuaq6PpR7hxapC5AVp1ePEJGNoDx2dGkOX3Yrv" rel=3D"noopener noreferrer" ta=
rget=3D"_blank">Contact our training team directly via Whats-app=C2=A0</a><=
/li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FY=
Q6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIB7x9zC5O3ov8jJ3Nb17Imro6k4rSN260WOH=
LYx-2BtUwpIEBVsNi5YKoQGWvmG7kRnCqAat1N2c8Z6nNLyZsjXaXsU-2FBSQRfSsY29OMdJIZi=
u7cFIb-2B4OPqpQ4s7bcWa5O72PJQGkoYnH-2BR32AooLZAC4U5cc3VqJaEYI-2FDpEtQOvY6Nv=
-2B5uQvTGKGrC3VYS2J2CVG3bWRLu1WlRedEGfRitxBeA29DkghB5qAblxEMQSGpuOwdz2MUo7z=
kIdWd-2FypN-2FUj-2B6XdtIp5cPfjAZ4dW5ztznd5Teb2TdzM761uvPM8TntmxXMa8YD4OPcOp=
vukoO-2FLBdU98HtjFe96YfijkV8L9b-2Fow0tr4f9V0oTcccwB4xlqNn9GXoMInPQCOR4Aewp9=
CNKLfZva7-2FzeLwPUzg4s5k1k3tktGEFk3yqEvUGgl4rannNZ6pDRH1EyiP-2Fs-3Dnqoz_9c2=
ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI=
4QQ6x6BFxbIT8OdIC8iD4y4NLnXt2MgzOhfOvtkjjSNTs0DuPxRDivOJvNDpbxCq3H10YL88-2F=
SspRY4t-2BBiLGFp6DvaIBgN5tUbx73GAWl9RCDoElMT8wHtrs58h-2F-2FcmP4vjy6OLeeJdo-=
2B5h4XvqqfCtNNC2t3eazSV72YN7QiAx525CyQW1Oj" rel=3D"noopener noreferrer" tar=
get=3D"_blank">DOWNLOAD OUR COURSE CALENDAR</a></li><li><a href=3D"https://=
u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUY=
A-2F7kAumHSwKny6G9TpwnVtMhkazN5JiL9EDKuG8MyhQmrhLBZdraRpnvRlhwgcjG-2BEg3uka=
j3h0zLuvXKfnJgvCRgvKzCPFYy0XU9O73sa2Ah76-2BcB6V8j5ypy07951rcU1Sj6-2Fs-2Frdu=
Pv7Htr25WkAA2rGX-2Btm5jumWgGmip-2FrWK-2Fkf2YaWRWIsH3zXcCG-2F47ksjc6YDMJu-2B=
whaZJHXwlxwuUHZCsxq-2BdSJH3nXbtjWcNDRTmwa1AmUR0qfTez-2Fyat5ACmSN3ZQJ8YEKurV=
vlT7-2BUmVJo4OcBKSAkTIjH0Yd9Wq9rcE9PxfnCfGnNgpJNzwlYdoJVpzjYSDlLj-2F3TyFklQ=
5w9W9VIiTlH4G7np-2BPo4Ewx89pINqYW-2FDVLJITMVqEsP6UDdRSpZ58oEJNAWJGXFUoC4Gn5=
CyweZXZmOKs2vGueftGe2JIUBM27YV4Z8Bj-2F2T344-3DR3Tt_9c2ZCZzrWFlb2tjmei9-2FZA=
E1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIeOEaIK5aw8=
1m9V7bsyERFkQRew9ugkG2PAg6gQdd7YzrsvETHwUTX7VllLvu-2BAZTUBWw-2BZUCpEtZuLMQe=
Phvb7FVuYql3-2Blqj3hZPe3zVXsGxNpa3gJOrwUl3vEuB3v4zWJgU3-2BNfztZe6jn-2F5hNz1=
g-2BUfYEHSq0YmQEAUSKHjU" rel=3D"noopener noreferrer" target=3D"_blank">DOWN=
LOAD OUR BROCHURE</a></li><li>Call +254712260031 OR EMAIL: <a href=3D"" rel=
=3D"noopener noreferrer" target=3D"_blank">training@fdc-k.org</a></li><li><=
a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj=
0uSKpqemz299sgWAUYA-2F7kAumHSwIldVypgO-2BmUp3DL6BOCgbMFKbHixpZgRHd3DU89igck=
wBxOUOxxn4cA5x2mXWTRYE7uXF-2BCuP0U300haJpq7Jve0AXfH3KPkdvba7nw2vvsBtS-2FOM1=
8ZW-2B9tKyfghkoDFFD0OFoifDL77BycgAKAtSkq55F3qWV3F0a-2FG-2FfgU1jYCZ09i-2Fe5a=
-2FOpQ8FMwPIQvDj02AV3QKj7Bg3LPGFJscwV67XVZyCYK3pnv63Lsp99r4UuQmv2rxtIhakk5X=
j3BsXoPcxBS-2Biwf7CPbJqnKdssxGxGqvOwJcd26OwS6fI6JjLLY9bBHTF8Fm-2FGyxwIoj8mU=
m3v8NuLqNceAtK1UdqSSZVVon5665i4jYQdYTpl83p9gBpZnfylR-2BFYyB1BQvWY8Zp-2BEjkK=
UdImdZfqx2zpI2Abit-2FNDD0YjGdJppB0CzIvnsLJyU3-2FHFi-2BJpTFY-3DyWcr_9c2ZCZzr=
WFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x=
6BFxbIbXdWpi5y4bzeMYrki5rMomJgAl6fm984tRhbax2b1ekaSQ-2FIu-2BgNFmgNtZVSZ0GAU=
EGf14Ehs-2BhP2VX-2BBBt76pzZly3qMiDCdpuWwVPUMYhPGrOxTG9eSTaIocikba4ma2avsIUD=
WD5Uzo4px8s7n-2Boznvh3YmTSLNRH97MougQ" rel=3D"noopener noreferrer" target=
=3D"_blank">Visit our Website For More Information</a></li><li><a href=3D"h=
ttps://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz29=
9sgWAUYA-2F7kAumHSwKK-2F1zjgSvdVmbMht1VstZ2uH4sAcYt4QQqT0zvmXX08nKbgRy7jOaB=
a35EY2u1mo9CxDQBC1ktK1CIrDP32udpWV5Vi-2FZxNZ7FxRV3Iz4qLw80bqFQxJCN-2F5yREn4=
V6VX8c0VfkyL5mCRrWrawHbcl13U9ECA0bYf42Cj5jZh-2BrVk8JHnVTKTJ9AxmM-2Be4mSkb0Z=
3LLkeY8Wbv-2F59ga2-2FR2h-2BNBBXPdicyrTg6a18VD470jMaucQjhuzZmEvh2Tl9Gmuo9OsM=
ZvrbT42I-2FXJJExZZ0GCWLbpl7l50Pj3npx82QRkDXfKuqUzhSjzxvhwN7OvDb14G7tLYEDXOw=
zypFXKIdO1Q2ShJUWn7ZF7qhyJvnjeknDtEKesivok4LogSnIwizT4r6N1Wts4ME-2Fidf5Pt7w=
eV1NgN0BneZJvUiud1Y9IDOGGRa-2FoUBktwbri4-3DTvGT_9c2ZCZzrWFlb2tjmei9-2FZAE1D=
dJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIaE3zYjKCuZ1Ip=
Vl3Rjv0ocnWY4gteTl8S9qH-2FDGPUN5HTD-2FHcgqfGlz3Yxl70InIhD6Bqhle8uoutLzHZhpD=
1lxJR4BZEDUpz9a9O2SFg2f518hpTOfLSNbO9f4cADqeH-2B6ZIcCLG88ffzCPugoW16W0ptvL9=
cXJCOaTyOgENtz" rel=3D"noopener noreferrer" target=3D"_blank">RESEARCH AND =
DATA ANALYSIS TRAINING'S</a></li><li><a href=3D"https://u17430347.ct.sendgr=
id.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIfDrFqJ=
YUbaXbQkU8sAYhhc-2F1AgioCmi-2BTflrNBRZCS8pc4NasKErfVwz0tt8NLA0xeNWm1sZ2KXBl=
kZlBmkjpnfr6-2FMEvnpCd3Y-2F0Tq-2F4jnWsWrdxd6xax-2B-2BjBALs61vzNlwM7TK0K02-2=
B2dDYmKMnjuNrLKu6Ip9Bv5G96ufWHWaj5yp69p61pC4kK-2BIRazTsHci8SNmCy4dtbowI2Z50=
JeuLIaRQdMf7mwx08M4jTA8w92THzBd-2FHszvKsV32JLsW3KGY1qDGzJ8FCy8y0ix37hGFnTy8=
rdApt4Xej-2FsyBI2NDuqfamgo54uso-2B33-2BL7vfpIBL6DCg-2Fyyq4jDRy049P0CxwfdvQc=
7rX5fvVIKCD33-2BAcr-2FY6LhjB3N94-2ByIPAly4FEaDemRPA98ZOnwZeYeHwQJkcP7IQNsjX=
ky2Q3VHz-2BkLEt-2FrS5GkcF6ntNs-3DeIvi_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0l=
cB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIbQ8FY8TGOFsoBmbOpQF29XT=
28XXxQx7IJB697uK7ICz6bWeACtgQZigBNJPzMI-2BjtU8zC0i3ubYP4jToCa63G-2By0E41CIf=
LxAQtR32tNkB5cuGzskAnInh75dVaRWTWUbzQe9QqfGZsvaVR-2FOpk-2F2BoipNtcIkhan0SX0=
63yls3" rel=3D"noopener noreferrer" target=3D"_blank">HUMANITARIAN TRAINING=
'S</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3D=
GLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJoRHf8KE9Z3vaNW23rfqf8VBvUgJM=
p8sdKzyeITcnKmUmiHCHx2elHr5yPfcn5fLa630qDZXvCbih23bOBzRFxPdZCbQzFOAgpG2gfp9=
Ro3jbyA-2BOdEdXBZrzQr7fiQLEL4AKYtVZWLGFaJJr4m65Xtuf9iAO3QvK4mfiD7fgimd-2B05=
3s8ddigQpq44Jr8KclKUv36QU-2BwgwmJqHlHmt2RNZGGooTh3oD6CijwI6iiADAFV6zFIdjpAt=
iyY0o151XlcJOFaSRwELCm-2F8K5QvZifYHWRTepUw1ttSLHTb6mFpWYoEbUabGUgNHJr-2B5JN=
1E7ccwIZ3h693qgQaLvV9fxO3fhvt7fL9FKfVeKku-2FNIb-2BLQnzSM-2B408F-2FLh5vOGKTS=
B80gHpW87oq9Bgn4kpw6K5F4DcqN2uvcNzjq-2FXFT7S3AYhu1JOKdnx0FqQ7T5kY-3DqG3Q_9c=
2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcM=
I4QQ6x6BFxbIS4MIknzFCa7zHLHRxpa94rNU1j3ucbHuUfAfWTMWb-2FsmfEdZUDsm3UR9wCIYg=
tV0AZQwDn9W-2BAOJ-2BetXSHXh2DZuJHJ8UvifbcTXiL0edvLuGlGR5lWNEbDeS2me2W1xsRGJ=
fmAY6y2gI1Gnga9hYCvgpXPvs04yy6dSOCUrkhp" rel=3D"noopener noreferrer" target=
=3D"_blank">MONITORING AND EVALUATION TRAINING'S</a></li><li><a href=3D"htt=
ps://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299s=
gWAUYA-2F7kAumHSwKK-2F1zjgSvdVmbMht1VstZ2uH4sAcYt4QQqT0zvmXX08nKbgRy7jOaBa3=
5EY2u1mo9CxDQBC1ktK1CIrDP32udpWV5Vi-2FZxNZ7FxRV3Iz4qLw80bqFQxJCN-2F5yREn4V6=
VX8c0VfkyL5mCRrWrawHbcl13U9ECA0bYf42Cj5jZh-2BrVk8JHnVTKTJ9AxmM-2Be4mSkb0Z3L=
LkeY8Wbv-2F59ga2-2FR2h-2BNBBXPdicyrTg6a18VD470jMaucQjhuzZmEvh2Tl9Gmuo9OsMZv=
rbT42I-2FXJJExZZ0GCWLbpl7l50Pj3npx82QRkDXfKuqUzhSjzxvhwN7OvDb14G7tLYEDXOwzy=
pFXKIdO1Q2ShJUWn7ZF7qhyJvnjeknDtEKesivok4LogSnIwizT4r6N1Wts4ME-2Fidf5Pt7weV=
1NgN0BneZJvUiud1Y9IDOGGRa-2FoUBktwbri4-3DN9Si_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ=
1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIZnGDv-2BFL-2FaX=
2tr50SWHVYVp2UNODr3U860sbqWHAjjTTU16J4NhXhY7hXMiQ8EK2yNgItk-2F-2B79WBZ-2FIZ=
RR2M50kqBc10RXA7-2BcUMQFIhrGT72-2FPg4Vh1IFQR5mR6SZeZ2QgOY9t2pkS54lMjZaBD4zS=
ebg91wFa1NS4A0fs-2FsdB" rel=3D"noopener noreferrer" target=3D"_blank">RESEA=
RCH AND DATA ANALYSIS TRAINING'S</a></li><li><a href=3D"https://u17430347.c=
t.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHS=
wLl0URvtWZLyiVJLjW0GuejP-2FoRM43MBz8Z6F34-2B29y3sBhimnxAOYAg3Nyzp0GzW-2BGiB=
CwDSffYamXXW2hLKFJrRH6k08W3YunxDiW8DghgEaRm-2FZ9ktwR-2FBSmFQv1XmeLA6skjDr2V=
YtcK-2B6wvspa0j1j1KgnhsibTDbQ-2BZd-2Bztw88Pb5yzBjuZQppOEIVWPa1BwdHcULBYLee5=
8cniz3WocC5CjA-2BRGYdHkanIMreDyZtjOGVhUgaOIyLqHvV4-2FPL2NAameG-2Bw0TZE-2F94=
BP-2F-2Bmdx3NaClMLMJ9Yjjyvpz0K9kC2LjjjnJ3fv9nbdPr5XVQzLFhueN4wVZlBuLYNadYf3=
L1hBRxcFN6ClYn0EZVUYVxJCY1V1PzTI-2BP9sFPQQUa2H-2FQjVLvhOqaMHHhMN-2FvTz1kgD0=
OXBoTeLHRBEejkkog7fpkZIMABHHwH-2Fna8-3DIZv9_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1N=
jbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIfwaOUlUHieXLXRlDu=
FHSUiTU3B-2F3pb4fkDhkKEpSUqdM5D7S56rmtHDOfhJ64V28dHDv2qr0bJted3gHBoKaHYuAcr=
Ym8KrhBDfOsXxaBPq-2BgGUVZNHpPyVEjSpRkJrqlLSVjRNzwn-2BmVHfMyPK25GdT9-2BinaXy=
NXXz6i1-2BLmfr" rel=3D"noopener noreferrer" target=3D"_blank">TECHNOLOGY TR=
AINING'S</a></li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?=
upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwIrSBXfLMiI4fmoHfkpECWSH=
1THax3QtfNCQMuwcgQSk1UfST6rLGtVVymqC8QehWW6vpS84K0PZDlmsSXBs-2FlMD3rcgRaHjk=
T7KJV2dewzFSc9EiQcbmW3-2FozYGx0DU-2FQ3SgFmbBFw8LWbNZ4WniiKi8Gb9FSynvxmIKm9O=
zsKhxkALBR-2BqpJwtR5v-2B-2FdfnJzoIa42hLUtLnJmTft-2FXmAAUYYnBBzAzqSMtz05YnXD=
-2Fp0aDdZ2QZZfmzfFswM-2BFVAiNvipyxQ8ssFtzF1EVr-2FxldMLh6qDeYlFc4uM9Djyo-2Fu=
jDOD9YZdkfYRgFlpvfbRWQaHLJGqMub-2FHdlWwiMOzHzQ2gHZdEQeesnoNaN6VEHiBrktTdzRo=
5cEbijF38DQ-2FKoCWJkxc2Onj04Osq0wRorH-2FqA6klnWqBsxXm5znfXLB0P1g-2B56jpRFuF=
8b9oac-3D2pl6_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOx=
hos5tjeFZ7YVOzcMI4QQ6x6BFxbIUFQ-2B3wFUb8OiSI0qUgy2cN5BncOCqJKjAm-2FZt4xF6-2=
FoNOVUfMZSOjs-2FszvEPPM-2BBP8WGr9W8meaHgn6BdlKEuvEyMMgDD9mGUV3vIQUikQTueA3s=
VUgIcoE7cHxeo6VKzYk95M3CffvZa7gsEX7EzmSBNRHG6oiZr9Ky0758LBm" rel=3D"noopene=
r noreferrer" target=3D"_blank">AGRICULTURE TRAINING'S</a></li><li><a href=
=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpq=
emz299sgWAUYA-2F7kAumHSwLJ4IimEQLmZecMG-2BkQN6PkMZ16Xf1pYeN3v6YfZk87QtOBLZB=
fqYQ1eQtw4jm5UhuZyX9nW-2BFtB3as4IZpj93Hy-2BxVxLwVu9p1OaxCCZltl0qFEU1aulTdCo=
qkYJGrmomsbM-2Fl-2BuDlSM9guyRy8ouPhtvJ-2BDN1J5mS0ELqjt8s-2Fod6yevnFpTGuyIxn=
k8nKvu0tlb7p27ODCEyNxWcC2-2FUlHu-2FoM-2BBW2vRnhJ9avLvZvMYYkDIytBrOQmcBrWTsf=
3qOPXGOdxfGIA2VW9TklNrZ5LA7tYK1B0SUUfA1k2GVA8qHlWeJTvQmPQW1XX7EqQVylTL3-2Bv=
u0NPwfAaYSXq1yj9nGB6Xaj5ifF67qsV5V4b0XyK8J42K4NrPhYUxKCLHIUwgOpCTnW4ISXXVnM=
FeX7bB4LJ8mEvQOxGDntlPoV1ieSsuNpSC7y5wy-2FTX0gA-3DzOxK_9c2ZCZzrWFlb2tjmei9-=
2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIQ2AJUG=
krDMx1o2nH9WF98v1hY2BWntgZUfH9MqXIY-2BqP6AkIOHCMas38hKFnsKtOI5c7t3MpK4Y7iG0=
zssC-2FxTffIrSXENR6VC-2Be16aRTxVGHguzQEC8GSPSNlZ8TTeVEkUo-2F68XWDyP3-2BXf-2=
FyAWvPc0PHpCvXtPhIve26n04J9" rel=3D"noopener noreferrer" target=3D"_blank">=
GIS MAPPING TRAINING'S</a></li><li><a href=3D"https://u17430347.ct.sendgrid=
.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwJ640DrbBa=
nn7ZYgYinvzZTlDtLrCo7CZUCVA-2B-2BW3jZ92hOyK6bhFS2poRGhiSTEZ38Nxoe4o-2BWu-2B=
Cg9Kvfj3G7R7o6TLeppZCAbHC8h2jpYW91Fi-2FF-2BZd3PwA0w9ADWUsUm-2FQvReP68AIxOlV=
-2BbSsMbAc4hWOevmPYH9vjAvaUu4bpfEHRYUmOF1YQ-2Fzuc0T2Yl12DaPyIF8ZpmxAjyx9-2B=
QnDpzZ4pZAaVFl6vjZONFCudXbWVW9QQ0OM049b21jPtXpdpBwJ5k-2Fr2i2uA32GMSDbt7QPhx=
8SH6Myfb4CP-2FnyowQnJeV-2BpGqd9kIFt2xo-2FyEFjFSkEGmO0G8rJXuNOeWg8Hdawj1Ddmj=
IJCoKSSP4-2Fv-2F3Yhnf6aE-2FEk-2BMOBU9A32hVsX-2FHQW0TEPlAG3RL4Y7WZ8MQ9mSnQKd=
0WAHk5nfkkrFA3KI7rFGkYsub8EU-3Djz4A_9c2ZCZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB=
-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIWyoEqEGJ1M8heXb87fGWEUKHN=
oUE0L8xo03orOX4CfCllFPVfUGvoU23KPMCVH0X8g16F2Dx2pVxfM-2FjaURognTmUwioyHCzNZ=
W9kT90PwhAezSIyviu44w4LQkKcT2mq4nCwzX50ec4Vje-2BhYMEe9OEycX4bgPwFNmUjX8cEl3=
" rel=3D"noopener noreferrer" target=3D"_blank">GOVERNANCE TRAINING'S</a></=
li><li><a href=3D"https://u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ=
6u7dEKmj0uSKpqemz299sgWAUYA-2F7kAumHSwK45BcxjHQIZMOUFpJJRPjIlaHR3T1XKM9JgAu=
tqtaaA0jzLa6HNbpuWq4xaZABqoRTwHkbDHVLFqITV1zuMFttxlH5eSZRfpd2AlrqqsEloelzgq=
Elat2tn2RAXklcgbndpCYzAgoPhW799IEd7zL4mVHewz4vD5Qozr72cwld2m-2Fx3ck88Yj-2FL=
2edFYw-2FXBfv7Zd4-2FKpyOxW-2B9jyBEtI7X-2FryJweurU6fnEBKNG1D-2FNfTGLhrFeQZD4=
U66qgqHZhJTi9aocB1kzCs9zgCS6XwdaafPxuqujqwQmtFHKVXjbtqY0SyQkThyDxGiyVVsGjo-=
2FSIKh1puU48-2FGcHBzBzcOpCk6AhZyL1I-2Fo2avUD4kBctoWtwCkYTp-2F3Nm0mkcLPTLogi=
sN-2BjDr2VxGXHcw924xoPMdUrE0B4HtZrhXwxWdg0ONoGeQ8Mk-2FquyRhwTPo-3Dv5oL_9c2Z=
CZzrWFlb2tjmei9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4=
QQ6x6BFxbIRRVQtkL0Rf1w9iuntjduq-2FTPql5w7Hfm1Ep4jIznhnH5TZymm-2BOkoApG-2Bmo=
2xbJZBMAq-2FoOzjACHaa0ZwBSnBAJCSn8q2Vreq4RSk8jssJlXU4GRFmRaU2Fv7yGdJtxnshG6=
Lc8rsYb9L5pSOcIu2UZIbx8Xc4QWccLfsk3iAsq" rel=3D"noopener noreferrer" target=
=3D"_blank">CONSULTANCY</a></li></ul><strong>OUR ONLINE TRAINING PROCEDURE<=
br /></strong>Select course of your preference Register online as individua=
l, online training or group and you will automatically receive invoice and =
invitation letter to enable your attendance.<br />Online Training classes a=
re instructor-led, live online training you attend from your home or work o=
r in one of our local computer labs. Our live online instructors teach you =
from a remote location while being able to interact with other participants=
 as in a traditional training setting.This will include:<ul type=3D"disc"><=
li>A real, live instructor teaching you from another location</li><li>Hands=
-on learning with the software/skills you are being taught</li><li>Interact=
ion with all students in the class at other locations</li><li>Any needed so=
ftware for class provided in online lab environment</li><li>Easy assistance=
 from the instructor</li></ul><table border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" width=3D"0"><tbody><tr><td valign=3D"bottom" width=3D"708"><div =
data-empty=3D"true"><br /></div></td></tr></tbody></table>Looking forward t=
o your registration and attendance.Result Based skills Development<div data=
-empty=3D"true"><br /></div>Regards,<br />FDC Training Team<br />Telephone =
office: +254712260031<br />Email training@fdc-k.org<br /><a href=3D"https:/=
/u17430347.ct.sendgrid.net/ls/click?upn=3DGLS-2FYQ6u7dEKmj0uSKpqemz299sgWAU=
YA-2F7kAumHSwLTcla0nhs-2BdU1uxUOtJOtFx-2FP-2FyHD7674fITx8K78iKl-2BpNFUymwjG=
-2BNUfdIkN108eTn7uyMcOWcfSqwumR6GhtU6ppaKCtnVX4dUWgMzcGrbJRr-2FzTj1ijwsv1hn=
x6gO-2BD8XdtfqP6z398HfdA1UD65cPQXWKcB3J2EnJa85ca-2BdRucDl-2F394GFAmefq5jdc8=
D6-2F6lq-2F6aL0LM-2BAVixRdi-2BVwBvKbzW35ST6StQkVGCdZ-2FJfVl8xCfBpq8-2BUsxWC=
X7xGZj0HYc9wyrKgNqq2vAJVEFHGLofRhcSjL58OtFCSSGcvuLBB4WPQ6SbP3nbDZs5lgXzQ-2B=
DDW7-2B-2FN8taJZbOT23wQZwhsrSdcAT0oxZcymxn0UwDtMCMpGuR8DOpOwCn3FpLVzm9rBPej=
0gyYc37DroNXziAvd0ZJXdMO2UrkPoRYs-2BbysYAjekpjJTKI-3DbkuP_9c2ZCZzrWFlb2tjme=
i9-2FZAE1DdJ1NjbET0lcB-2BJJVDAgewWzHM8gDHHOxhos5tjeFZ7YVOzcMI4QQ6x6BFxbIY9d=
h2sxpnNHtjcFqqJK5ZPjFgqmHYm3YiwzzCCkg6v4PBAvWy8aYiTasPQWV699N5VdBqiUjKSuLf-=
2FMkezimZqCA8We1igMkQFJ4knLigXTP-2BWqCs8p0EMZ303OiSgHKVyhgjhbQ7LDAUz-2BKhlq=
OFtNCM-2B8MTYas0nEAlXoQvru" rel=3D"noopener noreferrer" target=3D"_blank">C=
ontact our training team directly via WhatsApp</a><br /><img src=3D"http://=
info.fdc-k.co.ke/media/images/51a4337c8cef42c13752f96b79a3593e.png" class=
=3D"fr-fic fr-dib" style=3D"width: 944px; height: 92.4891px;" width=3D"944"=
 height=3D"92.4891" /><div data-empty=3D"true"><br /></div><strong>You can =
opt out of future communications about our services by clicking on the unsu=
bscribe link below.Thank you</strong></div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </div>
<img height=3D"1" width=3D"1" src=3D"http://info.fdc-k.co.ke/email/605426fd=
e164a698515581.gif" alt=3D"" />
If you'd like to unsubscribe and stop receiving these emails <a href=3D"htt=
ps://u17430347.ct.sendgrid.net/wf/unsubscribe?upn=3Dc1k-2BuaaF0K8LeZYcvAHob=
564iJ76fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvNBjVBGiaxpSch7HaIIGR6ZLRgSRRCsrpQD3K=
i34o8VDbzZbEzd-2Fmbz21ETAVomQqJJHmCiHaDOR9u8eVw-2BZj4JLqOjxNaNc3OQBHg9U6ZJK=
Luali1ZPv-2Fez7zSYNSFdJuUrBgnZtUbQOWGVj23BcybF4BftuozSGwWG7qTKTrAWumGIJ4JMt=
cjPkiv5BWl1SDdoHvW">click here</a>.
<img src=3D"https://u17430347.ct.sendgrid.net/wf/open?upn=3Dc1k-2BuaaF0K8Le=
ZYcvAHob564iJ76fFRUCHqRrh-2F2aEgMxXct1mETJR7aXvNBjVBGiaxpSch7HaIIGR6ZLRgSRf=
ew9TXyiIzRnT6sdpATzJC04myICWreMipCvPrzNTalcwFjcad86XmjKIksuuYQPzeJScnSTHMGl=
7ZhToUhvo5EwIhjEPI219Ag9lamlkIUzn1zI-2BDsVLfkdMF7q9wk8yB0BWHFtH1sh1-2FY3ICu=
I-2BtPYg76fxEjZKd-2BTaTUbRSh" alt=3D"" width=3D"1" height=3D"1" border=3D"0=
" style=3D"height:1px !important;width:1px !important;border-width:0 !impor=
tant;margin-top:0 !important;margin-bottom:0 !important;margin-right:0 !imp=
ortant;margin-left:0 !important;padding-top:0 !important;padding-bottom:0 !=
important;padding-right:0 !important;padding-left:0 !important;"/>
</body></html>


--===============4924575379205292741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4924575379205292741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4924575379205292741==--
