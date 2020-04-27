Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC591BB1C4
	for <lists+linux1394-devel@lfdr.de>; Tue, 28 Apr 2020 00:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JR/yZk+QMHENR7s8xp7GSSexIvt9DuMOZgyQwHbSIzo=; b=OArxCQErD2hwsjPz5KE2R2/qbe
	WVamnCZUlhCnuAtJkV/6XT4EI+VC1Nent3AdhV/yFFfmDmy54OUAwM8hBkzG2P9Ly98QLbYL5PT4y
	aokNHftgWtOOkrhZnNy14rYUSfUcJq33d90Tgs2dEgt2EKB7gyiYXbnnGgp5OteVVuKw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jTCiS-0003kr-TX; Mon, 27 Apr 2020 22:59:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <No_reply@cpanel.com>) id 1jTCiR-0003ke-SR
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Apr 2020 22:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h32LP8i3LNnNSvtTYjSnFZSCeyPMEtIUwkMMFw3L0oQ=; b=lMyFFXZQ7Kec/xYB5lFwFXyxU/
 dBb4jDxCUZV1XKeGIswJPAtHzifKDiaQ+Fn9c6CsOQJzs2sMe8rWKY8me/2724BqoKthLIpMhBv6O
 BG0gOMPTS6v2c96XSlC2V25jOAmHhM1qhXNsGErzfAhQEm8p4v6Qi7efUkEJMfE1S1i8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h32LP8i3LNnNSvtTYjSnFZSCeyPMEtIUwkMMFw3L0oQ=; b=L
 MztC3neVYOFst5jmq0PoqCo1qNwnN8dddcZCORx+xD5qMAWFd9G3C1lmDx6wY2ke1Zd4blD+9KPrm
 wbSszfJbAXOFqmnJxz1rqwLPgnYS9AJL/CU1jsQHpQ9xu5mlbZarmLJXXyprxH+/3OgH9B1KTtqjH
 zvktBsWkQ1wwyc+w=;
Received: from [37.49.230.209] (helo=cpanel.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jTCiQ-00DIf5-BB
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Apr 2020 22:59:07 +0000
To: linux1394-devel@lists.sourceforge.net
Subject: Your Mailbox Will Be Suspended!
Date: 28 Apr 2020 00:58:29 +0200
Message-ID: <20200428005828.74FADBBF7486EDC2@cpanel.com>
MIME-Version: 1.0
X-Spam-Score: 7.0 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: al-wed.com]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [37.49.230.209 listed in psbl.surriel.com]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=no_reply%40cpanel.com; ip=37.49.230.209;
 r=util-malware-1.v13.lw.sourceforge.com]
 0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=helo; id=cpanel.com;
 ip=37.49.230.209; r=util-malware-1.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 TO_NO_BRKTS_NORDNS_HTML To: lacks brackets and no rDNS and HTML only
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jTCiQ-00DIf5-BB
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
From: E-mail Administrator via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: E-mail Administrator <No_reply@cpanel.com>
Content-Type: multipart/mixed; boundary="===============5003285206229923535=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5003285206229923535==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 8.00.7601.17514"></HEAD>
<body style=3D"MARGIN: 0.5em">
<DIV style=3D"TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 18px; M=
ARGIN: 0px 0px 1.35em; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: =
'helvetica neue','segoe ui',helvetica,arial,'lucida grande',sans-serif; COL=
OR: rgb(68,68,68); FONT-SIZE: 12px; PADDING-TOP: 0px; font-stretch: normal"=
><B>
<SPAN style=3D"LINE-HEIGHT: 26px; BACKGROUND-COLOR: rgb(255,102,0); FONT-FA=
MILY: georgia,palatino; COLOR: rgb(255,255,255); FONT-SIZE: 14pt" id=3Dm_-2=
159278488062021005gmail-m_-6255790695858556320gmail-m_4369365780014278058gm=
ail-m_-7626753813007095710m_-7225896580681321663m_9159806897869192005m_-845=
6735174032690673m_8051136549605326483m_-3881088404583215369m_-9121796138732=
59773gmail-yiv0630338967yui_3_16_0_ym19_1_1463088268985_10028>
<SPAN style=3D"LINE-HEIGHT: 26px" id=3Dm_-2159278488062021005gmail-m_-62557=
90695858556320gmail-m_4369365780014278058gmail-m_-7626753813007095710m_-722=
5896580681321663m_9159806897869192005m_-8456735174032690673m_80511365496053=
26483m_-3881088404583215369m_-912179613873259773gmail-yiv0630338967yui_3_16=
_0_ym19_1_1463088268985_10027>Dear linux1394-devel@lists.sourceforge.net</S=
PAN></SPAN></B></DIV>
<DIV style=3D"TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 18px; M=
ARGIN: 0px 0px 1.35em; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: =
'helvetica neue','segoe ui',helvetica,arial,'lucida grande',sans-serif; COL=
OR: rgb(68,68,68); FONT-SIZE: 12px; PADDING-TOP: 0px; font-stretch: normal"=
><B>
<SPAN style=3D"LINE-HEIGHT: 26px; BACKGROUND-COLOR: rgb(255,102,0); FONT-FA=
MILY: georgia,palatino; COLOR: rgb(255,255,255); FONT-SIZE: 14pt" id=3Dm_-2=
159278488062021005gmail-m_-6255790695858556320gmail-m_4369365780014278058gm=
ail-m_-7626753813007095710m_-7225896580681321663m_9159806897869192005m_-845=
6735174032690673m_8051136549605326483m_-3881088404583215369m_-9121796138732=
59773gmail-yiv0630338967yui_3_16_0_ym19_1_1463088268985_10028>
<SPAN style=3D"LINE-HEIGHT: 26px" id=3Dm_-2159278488062021005gmail-m_-62557=
90695858556320gmail-m_4369365780014278058gmail-m_-7626753813007095710m_-722=
5896580681321663m_9159806897869192005m_-8456735174032690673m_80511365496053=
26483m_-3881088404583215369m_-912179613873259773gmail-yiv0630338967yui_3_16=
_0_ym19_1_1463088268985_10027>Your Mailbox Will Be Suspended!</SPAN></SPAN>=
<BR style=3D"LINE-HEIGHT: 18px"></B></DIV>
<DIV style=3D"TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 18px; M=
ARGIN: 0px 0px 1.35em; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: =
'helvetica neue','segoe ui',helvetica,arial,'lucida grande',sans-serif; COL=
OR: rgb(68,68,68); FONT-SIZE: 12px; PADDING-TOP: 0px; font-stretch: normal"=
><B><BR style=3D"LINE-HEIGHT: 18px"></B></DIV>
<DIV style=3D"TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 18px; M=
ARGIN: 0px 0px 1.35em; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: =
'helvetica neue','segoe ui',helvetica,arial,'lucida grande',sans-serif; COL=
OR: rgb(68,68,68); FONT-SIZE: 12px; PADDING-TOP: 0px; font-stretch: normal"=
=20
id=3Dm_-2159278488062021005gmail-m_-6255790695858556320gmail-m_436936578001=
4278058gmail-m_-7626753813007095710m_-7225896580681321663m_9159806897869192=
005m_-8456735174032690673m_8051136549605326483m_-3881088404583215369m_-9121=
79613873259773gmail-yiv0630338967yui_3_16_0_ym19_1_1463088268985_10034><B>A=
 termination request was received from your mailbox account, your mailbox w=
ill be terminated within 24 hours.</B></DIV>
<DIV style=3D"TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 18px; M=
ARGIN: 0px 0px 1.35em; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: =
'helvetica neue','segoe ui',helvetica,arial,'lucida grande',sans-serif; COL=
OR: rgb(68,68,68); FONT-SIZE: 12px; PADDING-TOP: 0px; font-stretch: normal"=
=20
id=3Dm_-2159278488062021005gmail-m_-6255790695858556320gmail-m_436936578001=
4278058gmail-m_-7626753813007095710m_-7225896580681321663m_9159806897869192=
005m_-8456735174032690673m_8051136549605326483m_-3881088404583215369m_-9121=
79613873259773gmail-yiv0630338967yui_3_16_0_ym19_1_1463088268985_10038><B><=
BR style=3D"LINE-HEIGHT: 18px">
If you did not make this request, please&nbsp;<A style=3D"LINE-HEIGHT: 18px=
; COLOR: rgb(0,104,207)" href=3D"https://prog.al-wed.com/ka/login/?login=3D=
linux1394-devel@lists.sourceforge.net" rel=3Dnofollow target=3D_blank data-=
saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://blackdirect.co.za=
/wp-content/plugins/backupwordpress/admin/up/login/?login%3D%5B%5B-Email-%5=
D%5D&amp;source=3Dgmail&amp;ust=3D1588025782650000&amp;usg=3DAFQjCNGvemK0Sy=
DrQroiZdLav6nwgynK6g">CLICK HERE</A>
&nbsp;to re-verify your email account.<BR style=3D"LINE-HEIGHT: 18px"><BR s=
tyle=3D"LINE-HEIGHT: 18px">Team Security<BR style=3D"LINE-HEIGHT: 18px"><BR=
 style=3D"LINE-HEIGHT: 18px">Copyright &copy; 2020 All rights reserved.</B>=
</DIV>
<DIV style=3D"TEXT-ALIGN: center; PADDING-BOTTOM: 0px; LINE-HEIGHT: 18px; M=
ARGIN: 0px 0px 1.35em; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: =
'helvetica neue','segoe ui',helvetica,arial,'lucida grande',sans-serif; COL=
OR: rgb(68,68,68); FONT-SIZE: 12px; PADDING-TOP: 0px; font-stretch: normal"=
=20
id=3Dm_-2159278488062021005gmail-m_-6255790695858556320gmail-m_436936578001=
4278058gmail-m_-7626753813007095710m_-7225896580681321663m_9159806897869192=
005m_-8456735174032690673m_8051136549605326483m_-3881088404583215369m_-9121=
79613873259773gmail-yiv0630338967yui_3_16_0_ym19_1_1463088268985_10044><B>_=
_____________________________<WBR>______________________________<WBR>____<B=
R style=3D"LINE-HEIGHT: 18px">Please do not reply to this message. Mail sen=
t to this address cannot be answered.</B></DIV></BODY>
</HTML>


--===============5003285206229923535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5003285206229923535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5003285206229923535==--
