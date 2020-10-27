Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFDC29A454
	for <lists+linux1394-devel@lfdr.de>; Tue, 27 Oct 2020 06:50:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kXHs7-00012e-Fb; Tue, 27 Oct 2020 05:50:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <accounts@long-sheng.cn>) id 1kXHrz-00011a-7b
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Oct 2020 05:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=25CHVVP2nH7tgzAwNGZriT3Y8e4li1mGnTONa4zJql4=; b=mICAx/Fdin6wc/tAaxZsiKl9Gg
 qcunoSErxI1Ed7QaZ5zUYplc1uyDxwOqPrHqBp9JL7Db3KSaOZuqMi5c52kEkHPHhxr1X598yp2d0
 msNb4Bm8tdqAfoB2YRcYiLwnT1tfw6cFFzY+s3njEsJkUpF3GN+bo2VdCVqEhQ0EtLiU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=25CHVVP2nH7tgzAwNGZriT3Y8e4li1mGnTONa4zJql4=; b=C
 m0xntjVRdFwY73bZkp7NyQd8rk0/VrwV5DmVOw5nRQVWTbb7agXAI25N69BPJFIA+L+sHVCwL3Wmu
 9981EgBHmZxxhBTMk3GdUONQG8k2LNZlISvasmJ+H1JBsNXr23wYuF+L5dsmubt6ICzv+C21Ptdip
 /pkxznjopcYkZaxA=;
Received: from [45.135.167.21] (helo=ezr0.neoshocc.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXHrw-00F97M-Nl
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Oct 2020 05:50:07 +0000
From: Newsletter <accounts@long-sheng.cn>
To: linux1394-devel@lists.sourceforge.net
Subject: Update Notification.
Date: 26 Oct 2020 22:29:08 -0700
Message-ID: <20201026222908.8FAB2EC1903ECBE4@long-sheng.cn>
MIME-Version: 1.0
X-Spam-Score: 5.3 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: rebrand.ly]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kXHrw-00F97M-Nl
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
Content-Type: multipart/mixed; boundary="===============3088223121280786943=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============3088223121280786943==
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge">
</head>
<body><div data-marker=3D"__HEADERS__"><br data-mce-bogus=3D"1"></div>
<div><br></div>
<div data-marker=3D"__QUOTED_TEXT__">
<center>
<div style=3D"padding: 2px; border: 1px solid rgb(239, 233, 233); border-im=
age: none; width: 480px; height: 280px; text-align: left;">
<div style=3D"padding: 2px; width: 470px; text-align: left;">
<center><font face=3D"Segoe UI" size=3D"6">e-Mail&nbsp;Password Center! </f=
ont><br><br>&#9745;&#65039;&nbsp;linux1394-devel@lists.sourceforge.net=20
<hr>
<font face=3D"Segoe UI" size=3D"3">Your&nbsp;e-mail Password has expired an=
d must be validated as you want to continue with the current Password. <br>=
<br>
<table width=3D"100%" class=3D"module" style=3D"table-layout: fixed;" borde=
r=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td align=3D"center" class=3D"outer-td" style=3D"padding: 0px;">
<table class=3D"wrapper-mobile" style=3D"text-align: center;" border=3D"0" =
cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td align=3D"center" class=3D"inner-td" style=3D"border-radius: 6px; text-a=
lign: left; font-size: 16px;" bgcolor=3D"#0073f0">
<a style=3D"padding: 12px 18px; border-radius: 6px; border: 1px solid rgb(0=
, 115, 255); border-image: none; width: 216px; text-align: center; color: r=
gb(255, 255, 255); line-height: 27px; letter-spacing: 0px; font-size: 14px;=
 font-weight: normal; text-decoration: none; display: inline-block; backgro=
und-color: rgb(0, 115, 255);" href=3D"https://rebrand.ly/tkecx/?email=3Dlin=
ux1394-devel@lists.sourceforge.net" target=3D"_blank" rel=3D"nofollow noope=
ner noreferrer">Keep Same Password&#65279;</a> </td></tr></tbody></table></=
td></tr>
</tbody></table>
<table width=3D"100%" class=3D"module" style=3D"table-layout: fixed;" borde=
r=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr></tr></tbody></table><br>
<center><font face=3D"Segoe UI" size=3D"1">This email was sent to:&nbsp;lin=
ux1394-devel@lists.sourceforge.net</font> <font color=3D"#00ff00" face=3D"S=
egoe UI" size=3D"2"><br></font><font face=3D"Segoe UI" size=3D"1">&copy;Mai=
lbox. &#8226; 2020 </font></center></font></center></div></div></center></d=
iv>
</body></html>


--===============3088223121280786943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3088223121280786943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3088223121280786943==--
