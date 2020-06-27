Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B83320C4CD
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Jun 2020 01:15:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jpK2S-0005yv-PT; Sat, 27 Jun 2020 23:15:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <karen@pei.com>) id 1jpK2R-0005yo-Jz
 for linux1394-devel@lists.sourceforge.net; Sat, 27 Jun 2020 23:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ISWeRPMCyM9l3CZ+uM/eewwOyZKK8aSIXIUpDgsdRfc=; b=PCWoRywKR7YfZmHfzw02a44dnh
 uj9ZNuRARR810c5FDwW5pK1Vb2jWW+16/9R6oyzv085dD+Y5ZooraDHVn9DlQR5XLREZ/JsKojih3
 zR7640J0V/vJ7eB7nDv/Q7Erq2X54pwqHIi9B6USCLKgxyNrCxxusPg7TStThqJ+ZlSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ISWeRPMCyM9l3CZ+uM/eewwOyZKK8aSIXIUpDgsdRfc=; b=j
 QtIsX+WAMwACNcGLLXXDtpIbh8UC/ENr+LlM0V7GWVE2kD8b04kslYPvt9MDuNcMG3SVL1aKLxSh1
 jE6BM9kOK00tCwZhRLXlTmmmkzz/5bZYhDCHsslkaPgWNOVkiJdHZeMy53mclIavYyoFDvuHrH66c
 wNAU2d6yue7wBvbo=;
Received: from smtp04.smtpout.orange.fr ([80.12.242.126]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.2) id 1jpK2P-003dG7-OH
 for linux1394-devel@lists.sourceforge.net; Sat, 27 Jun 2020 23:15:11 +0000
Received: from DESKTOP-Q5JCF6G ([217.128.198.197]) by mwinf5d08 with ME
 id wPEn2200K4G1gB503PF15z; Sun, 28 Jun 2020 01:15:03 +0200
X-ME-Helo: DESKTOP-Q5JCF6G
X-ME-Date: Sun, 28 Jun 2020 01:15:03 +0200
X-ME-IP: 217.128.198.197
From: "Ms Karen Ngui" <karen@pei.com>
Subject: To ~~> linux1394-devel@lists.sourceforge.net
To: <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
Date: Sat, 27 Jun 2020 16:15:02 -0700
Message-Id: <27012020061516EA5075EC3A$5FAE114766@DESKTOPQJCFG>
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.126 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.126 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (invoicekngui054[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jpK2P-003dG7-OH
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
Reply-To: invoicekngui054@gmail.com
Content-Type: multipart/mixed; boundary="===============6426785104279386028=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format

--===============6426785104279386028==
Content-Type: multipart/alternative; boundary="xPpa6ROFN5xaVj1rZWSSyu=_xddIRjjk9M"

This is a multi-part message in MIME format

--xPpa6ROFN5xaVj1rZWSSyu=_xddIRjjk9M
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Kindly confirm if you got my business collaboration In-mail sent to yo=
u via LinkedIn.

Thanks. Mrs. Ngui

--xPpa6ROFN5xaVj1rZWSSyu=_xddIRjjk9M
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-=
8859-1">
  <META name=3DGenerator content=3D10.90> <META name=3Dviewport conten=
t=3D"width=3Ddevice-width, initial-scale=3D1"> <META name=3Dformat-det=
ection content=3Dtelephone=3Dno><title>To ~~> linux1394-devel@lists.so=
urceforge.net</title>
 </head>
 <body style=3D"BACKGROUND-COLOR: #ffffff" bgColor=3D#ffffff> <P align=
=3Dcenter><FONT size=3D3 face=3DArial><STRONG><FONT size=3D3 face=3DAr=
ial><STRONG>Kindly check through email,&nbsp; I sent you a proposal vi=
a LinkedIn on the 20th of last month...did you get the message?</STRON=
G></FONT></P></STRONG></FONT> <P align=3Dleft><FONT size=3D3 face=3DAr=
ial></FONT>&nbsp;</P></body>
 </html>

--xPpa6ROFN5xaVj1rZWSSyu=_xddIRjjk9M--



--===============6426785104279386028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6426785104279386028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6426785104279386028==--


