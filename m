Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DCB19BD9B
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 Apr 2020 10:30:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jJvES-0001OD-Tx; Thu, 02 Apr 2020 08:29:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <karen@isonic.com>) id 1jJvER-0001O6-6n
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Apr 2020 08:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m+kDaUsoZ3jkW+px3EdIjwBbpKs/biDy+KqH8bSUmac=; b=kJhw9yOlvaElU1LJzrZY2zwAX9
 98J+Z2fNytp5KUjG1LBAYeKkNYrYoldeVrB0cKQMsgG37qTOBjscnU/1pw/iupXP0xICK2yguV2fK
 8eDNrkhqnt7bAJyZ35mELPpn4mgD1Q5P1gAVtwallON2dOJctJQdxUDssFoeMx3Avb/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m+kDaUsoZ3jkW+px3EdIjwBbpKs/biDy+KqH8bSUmac=; b=T
 59SgkSLrGNjLCKAAia9fUwrhl75ITMDvd2CRkEj27/Vvd+WcoR0dTqIUjypfinYs98c3iKenDPtnP
 6OIyz/iwOCxa7cTlG6JjjrWKfMsB/Pj+BJWVq/c5PKm2afz4Wj7PTn6DE32vlHp6Hnqqn/yUJnr3h
 y11aLIWUnPgtuSeI=;
Received: from smtp13.smtpout.orange.fr ([80.12.242.135]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.2) id 1jJvEP-0017Kv-Us
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Apr 2020 08:29:47 +0000
Received: from WIN-8Q43JQDK5LB ([90.22.201.42]) by mwinf5d73 with ME
 id MkVe2200i0vPEsA03kVeBa; Thu, 02 Apr 2020 10:29:39 +0200
X-ME-Helo: WIN-8Q43JQDK5LB
X-ME-Date: Thu, 02 Apr 2020 10:29:39 +0200
X-ME-IP: 90.22.201.42
From: "Ms. Karen Ngui" <karen@isonic.com>
Subject: For ~~ linux1394-devel@lists.sourceforge.net
To: <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
Date: Thu, 2 Apr 2020 08:29:29 +0000
Message-Id: <0229202004290884B64E7A0A$53646CD666@WINQJQDKLB>
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (k4ngu12[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.135 listed in wl.mailspike.net]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jJvEP-0017Kv-Us
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
Reply-To: k4ngu12@gmail.com
Content-Type: multipart/mixed; boundary="===============0565958571710398302=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format

--===============0565958571710398302==
Content-Type: multipart/alternative; boundary="aHuKF1=_4q4k9qXoOLBWoSGZTybzpa6b2q"

This is a multi-part message in MIME format

--aHuKF1=_4q4k9qXoOLBWoSGZTybzpa6b2q
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable




  =20

  =A0Good Morning, I am writing to know if you got my previous message=
=20
proposal sent to you via linkedIn on the 25th of last month ? =A0Kindl=
y reply=20
if you do, Stay Safe.Ms Karen Ngui
=A0=A0


--aHuKF1=_4q4k9qXoOLBWoSGZTybzpa6b2q
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-=
8859-1">
  <META name=3DGenerator content=3D10.90> <META name=3Dviewport conten=
t=3D"width=3Ddevice-width, initial-scale=3D1"> <META name=3Dformat-det=
ection content=3Dtelephone=3Dno><title>For ~~ linux1394-devel@lists.so=
urceforge.net</title>
 </head>
 <body style=3D"BACKGROUND-COLOR: #ffffff" bgColor=3D#ffffff> <P align=
=3Dcenter><STRONG>&nbsp;Good Morning, I am writing to know if you got =
my previous message proposal sent to you via linkedIn on the 25th of l=
ast month ? </STRONG></p><p align=3Dcenter><STRONG>&nbsp;Kindly reply =
if you do, Stay Safe.</STRONG></p><p align=3Dcenter><STRONG>Ms Karen N=
gui</STRONG></p><p align=3Dcenter><BR>&nbsp;</p><p align=3Dleft>&nbsp;=
</P></body>
 </html>

--aHuKF1=_4q4k9qXoOLBWoSGZTybzpa6b2q--



--===============0565958571710398302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0565958571710398302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0565958571710398302==--


