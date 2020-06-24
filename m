Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BEA206A01
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Jun 2020 04:21:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jnv1y-0000wr-CO; Wed, 24 Jun 2020 02:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <karen@pei.com>) id 1jnv1x-0000wk-5t
 for linux1394-devel@lists.sourceforge.net; Wed, 24 Jun 2020 02:20:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ulwXG82BqJ6wHJcSeUtUjWpI5Vcc7beXOxgdB771r9M=; b=IijaG14zAEsSd/Ys2gnr8qFE8y
 jpWBjLz+s5T0ZYrHTE5s6bMfRl7mEUNEj3AaMwL8y1nnghm56JPx9HIlDTtM9lUhTnvk19CanQN9t
 yr7UQ+Hd6CetDI6VhuvA3bmOyHsLg95sR9BNsdQlP7BtJze9oLtvUq5vLymsA1lujMHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ulwXG82BqJ6wHJcSeUtUjWpI5Vcc7beXOxgdB771r9M=; b=i
 rZ1kWLGDrSiep/Z+v/PdL3ZbCfwDSolPkxMsKb7PTMMM32no/0HSCrTlIh3UeZQCfGzazF8QaAEYW
 IakKyRWDMlVm6IeOaj7y3Hckm4f75FF/2WwiUVrftqVTu1CPATM02rYzMJx71O0GkkQVVmwlx8pVZ
 KmUCaWNmWg1j9NkM=;
Received: from smtp13.smtpout.orange.fr ([80.12.242.135]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.2) id 1jnv1v-00Da5X-E5
 for linux1394-devel@lists.sourceforge.net; Wed, 24 Jun 2020 02:20:53 +0000
Received: from DESKTOP-Q5JCF6G ([90.3.146.230]) by mwinf5d71 with ME
 id uqBE220044yUvma03qLjXm; Wed, 24 Jun 2020 04:20:44 +0200
X-ME-Helo: DESKTOP-Q5JCF6G
X-ME-Date: Wed, 24 Jun 2020 04:20:44 +0200
X-ME-IP: 90.3.146.230
From: "Ms Karen Ngui" <karen@pei.com>
Subject: To ~~~ linux1394-devel@lists.sourceforge.net
To: <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 23 Jun 2020 19:20:44 -0700
Message-Id: <23432020062019837942EB53$97EE6D16B5@DESKTOPQJCFG>
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.135 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (invoicekngui054[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1jnv1v-00Da5X-E5
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
Content-Type: multipart/mixed; boundary="===============1542981149240146893=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format

--===============1542981149240146893==
Content-Type: multipart/alternative; boundary="D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD"

This is a multi-part message in MIME format

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Kindly confirm if you got my business collaboration In-mail sent to yo=
u via LinkedIn.

Thanks. Mrs. Ngui

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-=
8859-1">
  <META name=3DGenerator content=3D10.90> <META name=3Dviewport conten=
t=3D"width=3Ddevice-width, initial-scale=3D1"> <META name=3Dformat-det=
ection content=3Dtelephone=3Dno><title>To ~~~ linux1394-devel@lists.so=
urceforge.net</title>
 </head>
 <body style=3D"BACKGROUND-COLOR: #ffffff" bgColor=3D#ffffff> <P align=
=3Dcenter><FONT size=3D3 face=3DArial><STRONG><FONT size=3D3 face=3DAr=
ial><STRONG>Kindly check through email,&nbsp; I sent you a proposal vi=
a LinkedIn on the 20th of last month...did you get the message?</STRON=
G></FONT></P></STRONG></FONT> <P align=3Dleft><FONT size=3D3 face=3DAr=
ial></FONT>&nbsp;</P></body>
 </html>

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD--



--===============1542981149240146893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1542981149240146893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1542981149240146893==--


