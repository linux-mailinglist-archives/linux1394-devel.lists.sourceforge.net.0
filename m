Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB7A3974FF
	for <lists+linux1394-devel@lfdr.de>; Tue,  1 Jun 2021 16:06:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lo51q-00005N-Bq; Tue, 01 Jun 2021 14:05:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zzokxj@gentaurshop.com>) id 1lo51o-000051-6a
 for linux1394-devel@lists.sourceforge.net; Tue, 01 Jun 2021 14:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:List-id:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nQNg+aZk/VClBSVR72WDyANCu1OSHFaqAtJrYdftU7g=; b=MCIglTeNaDq+AtYz3mrhuqIbtx
 cbkZ9j146XqdIMlBRzYTqH503hhPRBlrSuqzn7mRm4tyi4LEX2/6CEc+2u1iDElNHrD78G8VnIkuV
 v91vG8CsIztDosO8uAPA75iYEcYHn98MU0xnljF+ooE6Xl5+DvxSz/MIEHRR5G1zvwLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:List-id:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nQNg+aZk/VClBSVR72WDyANCu1OSHFaqAtJrYdftU7g=; b=Y
 2h2e/vEiU9uPamaibSzqim5wLWfTY/PGK4QJk3k6rEU6WN7Okyxxq7X89k0xfXlb4wEKkEP0Xp/yB
 fnU5LGSeKb09Fuyi12nGKbW3RqZFhBWi5XWiTLptAgMaiAJSI+4LSbqdsye/N9TdvsXE79s5byl0r
 RgyR2pjZAu1taSUU=;
Received: from [167.99.206.187] (helo=gentaurshop.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lo51n-005sYt-4m
 for linux1394-devel@lists.sourceforge.net; Tue, 01 Jun 2021 14:05:58 +0000
Date: Tue, 1 Jun 2021 13:41:10 +0000
To: linux1394-devel@lists.sourceforge.net
From: =?utf-8?Q?Miles=20=26=20More?= <news-@gentaurshop.com>
Subject: =?utf-8?Q?Damit=20Sie=20weiterhin=20online=20bezahlen=20k=c3=b6nnen?=
Message-ID: <bd21f22aebeb54121ef7c3edf6025d6d@167.99.206.187>
X-Priority: 3
MIME-Version: 1.0
X-mailer: Cabestan DMS
X-Spam-Score: 7.9 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
 0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_HUGE    BODY: HTML font size is huge
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 1.8 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1lo51n-005sYt-4m
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
Content-Type: multipart/mixed; boundary="===============6072964534922030253=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============6072964534922030253==
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1"
 http-equiv="content-type">
  <title></title>
</head>
<body>
<span style="color: rgb(51, 0, 51);"></span>
<h5
 style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;"><big
 style="color: rgb(0, 0, 94);"><big><big><big><big><span
 style="font-weight: bold;">Miles & More</span></big></big></big></big></big><br>
</h5>
<h5
 style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;"><br>
</h5>
<h5
 style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;"><b
 style="font-weight: bold; line-height: inherit;">Damit Sie
weiterhin online bezahlen können</b></h5>
<br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">
<span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">Aufgrund
der EU-Richtlinie PSD2 müssen Sie Online-Zahlungen mit Ihrer
Lufthansa Miles & More Credit Card immer häufiger
freigeben. Aktivieren Sie dazu ab sofort eines unserer zwei
Mastercard® Identity Check™ Verfahren:</span><br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">
<br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">
<span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">1)
Freigabe über die<span> </span></span><strong
 style="font-family: Verdana; font-size: 12px; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; font-weight: bold; line-height: inherit; color: rgb(80, 80, 80);">Miles
& More Credit Card-App</strong><br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">
<span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">2)
Freigabe über<span> </span></span><strong
 style="font-family: Verdana; font-size: 12px; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; font-weight: bold; line-height: inherit; color: rgb(80, 80, 80);">smsTAN<span> </span></strong><span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">und</span><strong
 style="font-family: Verdana; font-size: 12px; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; font-weight: bold; line-height: inherit; color: rgb(80, 80, 80);"><span> </span>Sicherheitsfrage</strong><br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">
<br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">
<span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(80, 80, 80);">Aktivieren
Sie jetzt das Verfahren Ihrer Wahl, um auch zukünftig online
bezahlen zu können.<br>
<br>
</span><a class="button right"
 href="https://nicheparfumerie.cz/BERU/"
 onclick="parent.phx.event.mailUrlClicked('https://www.domoticatechnology.com/domotica/'); return true;"
 target="_blank"
 style="margin: 0px auto 20px; padding: 15px 20px; background: rgb(15, 40, 110) none repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; line-height: 18px; color: rgb(255, 255, 255); text-decoration: underline; cursor: pointer; vertical-align: middle;">Jetzt
aktivieren</a><br
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
<br
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
<br
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
<br
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
<span
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; vertical-align: inherit;">Viele
Grüße von </span><br
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">
<span
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; vertical-align: inherit;">Ihrem<span> </span></span><strong
 style="color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;">Miles
& More-Team<br>
</strong><br>
<br>
<br>
<br>
<span
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); display: inline ! important; float: none; color: rgb(204, 255, 255);">To
change the email you use to sign in to DigitalOcean, confirm your email
address by clicking this link:<span> </span></span><a
 href="https://cloud.digitalocean.com/settings/change_email/confirm/WyJtYWppZGFsYWluNDFAZ21haWwuY29tIiwxNjIxNjQxODQ0MjIzOTUxNTc2XQ==--d54daf4bcc5729a6aa813ca6f6826b165a8da38a"
 rel="noreferrer" target="_blank"
 data-saferedirecturl="https://www.google.com/url?q=https://cloud.digitalocean.com/settings/change_email/confirm/WyJtYWppZGFsYWluNDFAZ21haWwuY29tIiwxNjIxNjQxODQ0MjIzOTUxNTc2XQ%3D%3D--d54daf4bcc5729a6aa813ca6f6826b165a8da38a&source=gmail&ust=1621724646766000&usg=AFQjCNFgMTrl6t0KCaTXH18dYogeetiROA"
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);">https://cloud.digitalocean.com<wbr>/settings/change_email/confirm<wbr>/WyJtYWppZGFsYWluNDFAZ21haWwuY<wbr>29tIiwxNjIxNjQxODQ0MjIzOTUxNTc<wbr>2XQ==--d54daf4bcc5729a6aa813ca<wbr>6f6826b165a8da38a</a><br
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);">
<br
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);">
<span
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); display: inline ! important; float: none; color: rgb(204, 255, 255);">The
request came from the IP address 192.248.189.209. This link expires in
1 hour. If you need to re-request this change, visit your Account
Profile page:<span> </span></span><a
 href="https://cloud.digitalocean.com/account/profile?i=52fdb1"
 rel="noreferrer" target="_blank"
 data-saferedirecturl="https://www.google.com/url?q=https://cloud.digitalocean.com/account/profile?i%3D52fdb1&source=gmail&ust=1621724646766000&usg=AFQjCNGyI3C3XAKXZOxs7XYGTft1m9HJSA"
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);">https://cloud.digitalocean.com<wbr>/account/profile?i=52fdb1</a><br>
</body>
</html>


--===============6072964534922030253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6072964534922030253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6072964534922030253==--
