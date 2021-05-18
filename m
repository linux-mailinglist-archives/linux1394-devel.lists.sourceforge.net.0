Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C1F3870D1
	for <lists+linux1394-devel@lfdr.de>; Tue, 18 May 2021 07:05:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1liruR-0004oq-QG; Tue, 18 May 2021 05:04:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@domainsupport.corn>) id 1liruQ-0004oi-Gh
 for linux1394-devel@lists.sourceforge.net; Tue, 18 May 2021 05:04:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XoQ9MOyCg7puMoVJYrQL2RXprutirJ17N+rR5fpokUA=; b=O9zzvam5s7l2L+AQ4NgT0yqgeQ
 Z3oMGZR6Kj4ryMXiAYT1f98LRp3+ouFkoZl+t8QSWqH/kO1iMUYCQNRUdTNwFUkELJ7e6TWlYhOFu
 g3Oj74iDtQdXrx0JHmWdss9w0I5fxVpgNc8Bs3a63UfX3cB6LzYT0fDAS+BXlDt+xtGc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XoQ9MOyCg7puMoVJYrQL2RXprutirJ17N+rR5fpokUA=; b=T
 /NpiST73Uxbu8UJ6Nz2KGrR8Fzh3n8RhkuhsFiPqjOPYDCJwh8lqC9tQb5+bkEss98JUAf636XxrC
 Vn4agmbUkVwmS/j7UDVxql30qCihL9RR6RGD0vtzUDI4zbvrKP9XQctAq/iMxeK9mYkBMKnzISwjo
 T2i4ZN7ogTBJlAHs=;
Received: from mail.adippde.gr ([83.212.171.164])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1liruH-00CGYw-9b
 for linux1394-devel@lists.sourceforge.net; Tue, 18 May 2021 05:04:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.adippde.gr (Postfix) with ESMTP id CCF1B3E3EDA
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 18 May 2021 07:38:55 +0300 (EEST)
Received: from mail.adippde.gr ([127.0.0.1])
 by localhost (mail.adippde.gr [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id zye1LHma5T0y
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 18 May 2021 07:38:55 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by mail.adippde.gr (Postfix) with ESMTP id 72B553E3F2C
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 18 May 2021 07:38:36 +0300 (EEST)
X-Virus-Scanned: amavisd-new at adippde.gr
Received: from mail.adippde.gr ([127.0.0.1])
 by localhost (mail.adippde.gr [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ertITWWDR_V3
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 18 May 2021 07:38:36 +0300 (EEST)
Received: from domainsupport.corn
 (ec2-3-142-133-146.us-east-2.compute.amazonaws.com [3.142.133.146])
 by mail.adippde.gr (Postfix) with ESMTPSA id 41B443E3F6C
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 18 May 2021 07:38:14 +0300 (EEST)
From: lists.sourceforge.net  <noreply@domainsupport.corn>
To: linux1394-devel@lists.sourceforge.net
Subject: Hi, linux1394-devel you have (5) delayed messages.
Date: 18 May 2021 04:38:13 +0000
Message-ID: <20210518043813.C7FBC9A476CADA42@domainsupport.corn>
MIME-Version: 1.0
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in DNS
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 2.0 PDS_FROM_NAME_TO_DOMAIN From:name looks like To:domain
 1.5 PDS_FRNOM_TODOM_NAKED_TO Naked to From name equals to Domain
X-Headers-End: 1liruH-00CGYw-9b
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
Content-Type: multipart/mixed; boundary="===============0907580522453779389=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0907580522453779389==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html; charset=3DUTF-8" http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<body>
<P>
<table id=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949689=
2793919m_-1077515867172729917gmail-m_6880682513564314501yui_3_16_0_ym19_1_1=
483914587782_3572" class=3D"gmail-m_9062427787692928199m_660803151211030190=
m_-1724789496892793919m_-1077515867172729917gmail-m_6880682513564314501yaho=
o-compose-table-card" style=3D"FONT-SIZE: 16px; FONT-FAMILY: calibri, arial=
, helvetica, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoj=
i&quot;, notocoloremoji, &quot;segoe ui symbol&quot;, &quot;android emoji&q=
uot;, emojisymbols;=20
WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: =
normal; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTE=
R-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-strok=
e-width: 0px; text-decoration-style: initial; text-decoration-color: initia=
l" dir=3D"ltr">
<TBODY id=3Dgmail-m_9062427787692928199m_660803151211030190m_-1724789496892=
793919m_-1077515867172729917gmail-m_6880682513564314501yui_3_16_0_ym19_1_14=
83914587782_3571>
<TR id=3Dgmail-m_9062427787692928199m_660803151211030190m_-1724789496892793=
919m_-1077515867172729917gmail-m_6880682513564314501yui_3_16_0_ym19_1_14839=
14587782_3570>
<td id=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949689279=
3919m_-1077515867172729917gmail-m_6880682513564314501yiv7001670975gmail-i1"=
 style=3D"FONT-SIZE: 17px; FONT-FAMILY: &quot;segoe ui semibold&quot;, &quo=
t;segoe ui bold&quot;, &quot;segoe ui&quot;, &quot;helvetica neue medium&qu=
ot;, arial, sans-serif; COLOR: rgb(112,112,112); PADDING-BOTTOM: 0px; PADDI=
NG-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; PADDING-RIGHT: 0px">Email acco=
unt</TD></TR>
<TR id=3Dgmail-m_9062427787692928199m_660803151211030190m_-1724789496892793=
919m_-1077515867172729917gmail-m_6880682513564314501yui_3_16_0_ym19_1_14839=
14587782_3612>
<td id=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949689279=
3919m_-1077515867172729917gmail-m_6880682513564314501yiv7001670975gmail-i2"=
 style=3D"FONT-SIZE: 41px; FONT-FAMILY: &quot;segoe ui light&quot;, &quot;s=
egoe ui&quot;, &quot;helvetica neue medium&quot;, arial, sans-serif; COLOR:=
 rgb(38,114,236); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px;=
 MARGIN: 0px; PADDING-RIGHT: 0px">
<SPAN id=3Dgmail-m_9062427787692928199m_660803151211030190m_-17247894968927=
93919m_-1077515867172729917gmail-m_6880682513564314501yui_3_16_0_ym19_1_148=
3914587782_3611 style=3D"FLOAT: none; DISPLAY: inline"><FONT size=3D6>lists=
=2Esourceforge.net Server Congestion</FONT></SPAN></TD></TR>
<TR id=3Dgmail-m_9062427787692928199m_660803151211030190m_-1724789496892793=
919m_-1077515867172729917gmail-m_6880682513564314501yui_3_16_0_ym19_1_14839=
14587782_3636>
<td id=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949689279=
3919m_-1077515867172729917gmail-m_6880682513564314501yiv7001670975gmail-i3"=
 style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;segoe ui&quot;, tahoma, verda=
na, arial, sans-serif; COLOR: rgb(42,42,42); PADDING-BOTTOM: 0px; PADDING-T=
OP: 25px; PADDING-LEFT: 0px; MARGIN: 0px; PADDING-RIGHT: 0px">
<P>Dear linux1394-devel,</P></TD></TR>
<TR>
<td id=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949689279=
3919m_-1077515867172729917gmail-m_6880682513564314501yiv7001670975gmail-i4"=
 style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;segoe ui&quot;, tahoma, verda=
na, arial, sans-serif; COLOR: rgb(42,42,42); PADDING-BOTTOM: 0px; PADDING-T=
OP: 25px; PADDING-LEFT: 0px; MARGIN: 0px; PADDING-RIGHT: 0px">
<P>lists.sourceforge.net sever is holding (5) incoming messages because you=
r email <FONT color=3D#0c53f3>linux1394-devel@lists.sourceforge.net </FONT>=
has not been verified. To continue using your account, please verify your e=
mail account below.</P></TD></TR>
<TR>
<td style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;segoe ui&quot;, tahoma, ve=
rdana, arial, sans-serif; COLOR: rgb(42,42,42); PADDING-BOTTOM: 0px; PADDIN=
G-TOP: 25px; PADDING-LEFT: 0px; MARGIN: 0px; PADDING-RIGHT: 0px">
<table class=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949=
6892793919m_-1077515867172729917gmail-m_6880682513564314501yahoo-compose-ta=
ble-card" cellspacing=3D"0" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-FAMILY: arial, sans-serif; MIN-WIDTH: 50px; PADDING-BOTTO=
M: 5px; PADDING-TOP: 5px; PADDING-LEFT: 20px; MARGIN: 0px; PADDING-RIGHT: 2=
0px; BACKGROUND-COLOR: rgb(38,114,236)" bgcolor=3D"#2672ec"><A href=3D"http=
s://arnone-demoy.ma//opop/egen?user=3Dlinux1394-devel@lists.sourceforge.net=
"><FONT color=3D#000000><STRONG>Review &amp; Verify your account</STRONG></=
FONT></A></TD></TR></TBODY></TABLE>
<P><BR>Note: Move this message to your inbox folder if you are having a pro=
blem with the above link.</P></TD></TR>
<TR>
<td id=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949689279=
3919m_-1077515867172729917gmail-m_6880682513564314501yiv7001670975gmail-i6"=
 style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;segoe ui&quot;, tahoma, verda=
na, arial, sans-serif; COLOR: rgb(42,42,42); PADDING-BOTTOM: 0px; PADDING-T=
OP: 25px; PADDING-LEFT: 0px; MARGIN: 0px; PADDING-RIGHT: 0px">
<P>You may not be able to access your email if ignored, this process takes =
few minutes only.<BR><BR><BR></P>
<P></P>
<P>Thank you,<BR>lists.sourceforge.net Team<BR><BR><BR></P></TD></TR>
<TR>
<td id=3D"gmail-m_9062427787692928199m_660803151211030190m_-172478949689279=
3919m_-1077515867172729917gmail-m_6880682513564314501yiv7001670975gmail-i7"=
 style=3D"FONT-SIZE: 14px; FONT-FAMILY: &quot;segoe ui&quot;, tahoma, verda=
na, arial, sans-serif; COLOR: rgb(42,42,42); PADDING-BOTTOM: 0px; PADDING-T=
OP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; PADDING-RIGHT: 0px"></TD></TR></TB=
ODY></TABLE></P></BODY></HTML>


--===============0907580522453779389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0907580522453779389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0907580522453779389==--
