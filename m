Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF481411221
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 Sep 2021 11:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	MIME-Version:To:Subject:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1ElkJVabryJrjXglrF5mN7hKgfQsy4f3uOaNewJMZ0M=; b=WRE/4HVJizCxlsMQwAnKmZnmL0
	I/p0jloImnGm5T1rLuAonQvc9oSyIMP63TdHVMu5Su2oF0qjyucsAKzY8uV/ILtUQeNkmH1whNmvW
	cPMAKK5bR8JOQWUvglp2f5/MN0ynq3UaCFYi20DQq09JTRVX5n2I5Bn2UwlZ1vk1tt8k=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mSFxC-0003cI-Fr; Mon, 20 Sep 2021 09:51:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <webinar@jirawat.net>) id 1mSFxB-0003bc-8c
 for linux1394-devel@lists.sourceforge.net; Mon, 20 Sep 2021 09:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IeTLBzC594YbfOSCRP0WnSVej/dSkl8GKuu4mKelcBc=; b=A8QiBRCUNhjtJzbyPOADow7PfT
 GxZTv0//F3H7xgR9yhxuwojnCbMlZoLCPtwiqkE0e5B4WA+sgxrwPUXIYLsCnbYoYNG5+PyDfevn2
 6qCsO0k1unDHRBnByKLqq8S/HLfiRFp8GBno8t4LZyUQjWm1srPWfxHKZUlhaKo51kxE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IeTLBzC594YbfOSCRP0WnSVej/dSkl8GKuu4mKelcBc=; b=O
 22rp1T1SUKRdMVw+YzmqX5RwD12c9AblDFr+eRyXU/SWGJZMdtzNNREmSOywL29bA2qJq4GNiR9nW
 x1SkVvf5FqRBVgYvoiJwRMLgHdK3d16awuFa9l2SggCCA4DQszlgFpaJc2d06gpWQ/gjD3ifUOPXC
 WufZUo/qo8fYftEc=;
Received: from [45.148.30.174] (helo=server.jirawat.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSFx8-00Goc7-Uj
 for linux1394-devel@lists.sourceforge.net; Mon, 20 Sep 2021 09:51:13 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by server.jirawat.net (Postfix) with ESMTP id DE7881FA2A
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 20 Sep 2021 09:34:00 +0000 (UTC)
Received: from server.jirawat.net ([127.0.0.1])
 by localhost (server.jirawat.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 3Mxa4zOv1JIF
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 20 Sep 2021 09:33:57 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by server.jirawat.net (Postfix) with ESMTP id 2ABF5286CB
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 20 Sep 2021 09:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 server.jirawat.net 2ABF5286CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jirawat.net;
 s=CC4276AA-19DC-11EC-835D-5982FD10F4D7; t=1632129672;
 bh=IeTLBzC594YbfOSCRP0WnSVej/dSkl8GKuu4mKelcBc=;
 h=From:To:MIME-Version:Date:Message-Id;
 b=KTXR7+VDdKetl8ZYAeqbVRwGp+w0OV56W7rfVP1eEnpzjrOpq2lCqwD/a+x0b66SC
 P4dkyCKZPNPPQoRwQvzDBGuzdGQGj48ka9AKBRO6+VPvYa1vd8fAkqtWuTd2wqMz9z
 CgAnRLGp6dun/x/MKGeZcaYxXwGeL6VeYBhT0BMKeB6HL1AYuNGxYJy3hmvmZakfyr
 uQJFGzBezhqh4na0Outj+4holn4ejWZEGN68EfFwaUcsAVzpteIgXBw35LP5C0aE6S
 schpAgV6I5L1gBA0gKW52ZA0ihMwTfMLPHMTT0eFKmQPPjmNWxV8xiWZOnUvXFFEaM
 01DdB37S7vr4A==
X-Virus-Scanned: amavisd-new at jirawat.net
Received: from server.jirawat.net ([127.0.0.1])
 by localhost (server.jirawat.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OuKbYgcduCyS
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 20 Sep 2021 09:21:12 +0000 (UTC)
Received: from vmi632897 (vmi632897.contaboserver.net [144.126.139.51])
 by server.jirawat.net (Postfix) with ESMTPSA id EBF1928DB4
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 20 Sep 2021 09:10:07 +0000 (UTC)
Subject: Document Signed - LISTS_CONTRCT.pdf
To: <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
Date: Mon, 20 Sep 2021 03:10:08 -0600
Message-Id: <20072021091003EA6CBA6988-3E61454B29@jirawat.net>
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Lists Webinar This is to notify you that the signing of this
 document has been completed. LISTS_CONTRACT.pdf 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.3 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1mSFx8-00Goc7-Uj
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
From: Lists Webinar via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: Lists Webinar <webinar@jirawat.net>
Content-Type: multipart/mixed; boundary="===============1270604238022356777=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format

--===============1270604238022356777==
Content-Type: multipart/alternative; boundary="J2F3XCgWeFXsfiDTVMQV14JAI9uN=_nHNM"

This is a multi-part message in MIME format

--J2F3XCgWeFXsfiDTVMQV14JAI9uN=_nHNM
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Lists Webinar

This is to notify you that the signing of this document has been compl=
eted.

LISTS_CONTRACT.pdf

View Document https://clt1378555.bmetrack.com/c/l?u=3DCD54038&e=3D1314=
FAD&c=3D1508FB&t=3D1&l=3D69E83504&mFd0s0e%2BgVtWAzsQmMcaL3zBjzlZ2TJR&s=
eq=3D1=3DbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA=3D=3D=3D1#=
linux1394-devel@lists.sourceforge.net

--J2F3XCgWeFXsfiDTVMQV14JAI9uN=_nHNM
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-=
8859-1">
  <META name=3D"viewport" content=3D"width=3Ddevice-width, initial-sca=
le=3D1"> <META name=3D"format-detection" content=3D"telephone=3Dno"><t=
itle>Document Signed - LISTS_CONTRCT.pdf</title>
 </head>
 <body style=3D"BACKGROUND-COLOR: #ffffff" bgColor=3D#ffffff> <P align=
=3Dleft><table style=3D"FONT-SIZE: 16px; FONT-FAMILY: Roboto, RobotoDr=
aft, Helvetica, Arial, sans-serif; WHITE-SPACE: normal; WORD-SPACING: =
0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(34,34,34); FON=
T-STYLE: normal; ORPHANS: 2; WIDOWS: 2; font-variant-ligatures: normal=
; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-deco=
ration-style: initial; text-decoration-color: initial; text-decoration=
-thickness: initial" cellSpacing=3D0 cellPadding=3D0 width=3D604 bgCol=
or=3D#f5f6fa border=3D0> <tr><td style=3D"BORDER-TOP: rgb(2,133,160) 5=
px solid; FONT-FAMILY: Roboto, RobotoDraft, Helvetica, Arial, sans-ser=
if; PADDING-BOTTOM: 0px; PADDING-TOP: 20px; PADDING-LEFT: 0px; MARGIN:=
 0px; PADDING-RIGHT: 0px" width=3D602 align=3Dcenter><FONT size=3D3 fa=
ce=3DArial><SPAN style=3D"FONT-FAMILY: 'Segoe UI', Tahoma, Geneva, Ver=
dana, sans-serif; COLOR: rgb(28,28,28)"><SPAN style=3D"FONT-SIZE: 33px=
">Lists Webinar</SPAN></SPAN></FONT></TD></tr><tr><td style=3D"FONT-FA=
MILY: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; PADDING-BOTTO=
M: 20px; PADDING-TOP: 20px; PADDING-LEFT: 0px; MARGIN: 0px; PADDING-RI=
GHT: 0px" width=3D602 align=3Dcenter></TD></tr><tr><td style=3D"FONT-F=
AMILY: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; PADDING-BOTT=
OM: 10px; PADDING-TOP: 0px; PADDING-LEFT: 132px; MARGIN: 0px; PADDING-=
RIGHT: 132px" height=3D10 width=3D602 align=3Dcenter><FONT size=3D3 fa=
ce=3DArial><SPAN style=3D"FONT-FAMILY: 'Segoe UI', Tahoma, Geneva, Ver=
dana, sans-serif">This is to notify you that the signing of this docum=
ent has been completed.</SPAN></FONT></TD></tr><tr><td style=3D"FONT-F=
AMILY: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; PADDING-BOTT=
OM: 20px; MARGIN: 0px" width=3D602 align=3Dcenter> <P style=3D"FONT-SI=
ZE: 0.9em; FONT-FAMILY: 'Segoe UI', Tahoma, Geneva, Verdana, sans-seri=
f; COLOR: rgb(22,35,58); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDIN=
G-LEFT: 60px; MARGIN: 0px; PADDING-RIGHT: 60px"><BR>LISTS_CONTRACT.pdf=
</P><BR><table cellSpacing=3D0 cellPadding=3D0 width=3D200 border=3D0>=
 <tr><td style=3D"BORDER-TOP: rgb(2,133,160) 2px solid; FONT-FAMILY: R=
oboto, RobotoDraft, Helvetica, Arial, sans-serif; BORDER-RIGHT: rgb(2,=
133,160) 2px solid; BORDER-BOTTOM: rgb(2,133,160) 2px solid; PADDING-B=
OTTOM: 10px; PADDING-TOP: 10px; PADDING-LEFT: 0px; BORDER-LEFT: rgb(2,=
133,160) 2px solid; MARGIN: 0px; PADDING-RIGHT: 0px" bgColor=3D#0285a0=
 width=3D200 align=3Dcenter><FONT size=3D3 face=3DArial><A style=3D"FO=
NT-SIZE: 14px; FONT-FAMILY: 'Segoe UI', Tahoma, Geneva, Verdana, sans-=
serif; COLOR: rgb(255,255,255)" href=3D"https://clt1378555.bmetrack.co=
m/c/l?u=3DCD54038&amp;e=3D1314FAD&amp;c=3D1508FB&amp;t=3D1&amp;l=3D69E=
83504&amp;mFd0s0e%2BgVtWAzsQmMcaL3zBjzlZ2TJR&amp;seq=3D1=3DbGludXgxMzk=
0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA=3D=3D=3D1#linux1394-devel@list=
s.sourceforge.net">View Document</STRONG></A></FONT></TD></TR></TABLE>=
<BR><BR></TD></TR></TABLE><FONT size=3D3 face=3DArial>&nbsp;&nbsp;</FO=
NT></P></body>
 </html>

--J2F3XCgWeFXsfiDTVMQV14JAI9uN=_nHNM--



--===============1270604238022356777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1270604238022356777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1270604238022356777==--


