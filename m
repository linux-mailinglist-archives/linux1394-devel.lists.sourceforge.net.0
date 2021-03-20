Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58686343031
	for <lists+linux1394-devel@lfdr.de>; Sat, 20 Mar 2021 23:56:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lNkWC-0005Zx-JG; Sat, 20 Mar 2021 22:56:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <marketing@unihomes.vn>) id 1lNkWA-0005Zp-K4
 for linux1394-devel@lists.sourceforge.net; Sat, 20 Mar 2021 22:56:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ulIXuQe/U0i3qbCb4nMozx4UCKKWqgWF8KUYqYHKOUg=; b=S4hrbe5VTChuBH1xW3FMBYokl9
 1omcFsnW53fJfKr7snM58+b8iwy6WDS/LRooPDSU9KUP5/oYPp393wf1znCVNCjllHgGu1tb8EvZm
 FGfvj+wMAlnISobRSVqTXC/JNVXeL7aSmTeuA8QkUFNyoKwWIzrAHbQkDJzXSHjPF2mc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ulIXuQe/U0i3qbCb4nMozx4UCKKWqgWF8KUYqYHKOUg=; b=a
 +oPrpNaltBodTv8qUBo4wg2xlLsizd1LZAgxU2RYHXiPjglLELuv4TS/Nwgr2TC+7KSvlEZkHdB+Y
 lZqFby5D9vvXkwPwkq1FxiYIZNbWm8nf8x7Edqy8MZXBDGPuZ6D322hCZUit/uwyq4sWBCdRtQtzD
 +nkjwMXaL7BceFPk=;
Received: from mail9319.dotvndns.vn ([112.213.93.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.3) id 1lNkVz-0007So-3y
 for linux1394-devel@lists.sourceforge.net; Sat, 20 Mar 2021 22:56:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=unihomes.vn; s=mail;
 h=from:subject:date:message-id:to:mime-version:content-type:
 content-transfer-encoding;
 bh=ulIXuQe/U0i3qbCb4nMozx4UCKKWqgWF8KUYqYHKOUg=;
 b=NntxMoCBR6I/4ie0cyoSP/c3A+w7OZgES/4vmTXrlXocATqF0X9KzchVFeJqeo4Tslj7l+DWnJHgy
 4Wq4kYnFBXH31aJmjofTdL9I866xvlukWMR/8urQaBt63MSRni/iKsRRyOtubV7Kq3Pf1LybQRfOhX
 EckfC63fIp0P3kCx0S+4VV+1rgJ2nQIOWu+PADRsQUg0n7/xIK6+jv/017QY6r679AVr1J/DatXptP
 Yex9oner7e5MCuZDorzbys3vZB35RZXxpSGXTvcCT/DaooP/Cb9whBrnYpfCCI157rwXXJn/1NDI8e
 MpifnbudUjWN4EHMtl9pLvPeOMRTo3w==
X-Footer: dW5paG9tZXMudm4=
Received: from fdt48wp ([193.200.255.112])
 (authenticated user marketing@unihomes.vn)
 by mail9319.dotvndns.vn (Kerio Connect 9.2.0) with ESMTPA
 for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Mar 2021 04:24:42 +0700
Date: Sat, 20 Mar 2021 21:24:40 +0000
To: linux1394-devel@lists.sourceforge.net
From: Blockchain <marketing@unihomes.vn>
Subject: Notification.
Message-ID: <9nNg7bSVe6EmuI36yVFtNm0jjT9i5l4jXcvUN0h0@lzx76wp>
X-Mailer: PHPMailer 
MIME-Version: 1.0
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?193.200.255.112>]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: insideplaza.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lNkVz-0007So-3y
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
Content-Type: multipart/mixed; boundary="===============4113812406991048766=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============4113812406991048766==
Content-Type: multipart/alternative;
 boundary="b1_9nNg7bSVe6EmuI36yVFtNm0jjT9i5l4jXcvUN0h0"
Content-Transfer-Encoding: 8bit

This is a multi-part message in MIME format.

--b1_9nNg7bSVe6EmuI36yVFtNm0jjT9i5l4jXcvUN0h0
Content-Type: text/plain; charset=us-ascii

Dear linux1394-devel@lists.sourceforge.net
&nbsp;
Your 12 word passphrase is about to expire.If it is not updated in 48 hours your crypto wallet cannotbe recovered with the current passphrase.
Renew it now
@ 2021 Blockchain

--b1_9nNg7bSVe6EmuI36yVFtNm0jjT9i5l4jXcvUN0h0
Content-Type: text/html; charset=us-ascii

<p>Dear linux1394-devel@lists.sourceforge.net</p>
<p>&nbsp;</p>
<p>Your 12 word passphrase is about to expire.<br />If it is not updated in 48 hours your crypto wallet cannot<br />be recovered with the current passphrase.</p>
<p><a href="http://otp.mlwnrx1tyyriwkq.insideplaza.com/?otp=bGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA==">Renew it now</a></p>
<p><br />@ 2021 Blockchain</p>


--b1_9nNg7bSVe6EmuI36yVFtNm0jjT9i5l4jXcvUN0h0--




--===============4113812406991048766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4113812406991048766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4113812406991048766==--



