Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C8349C823
	for <lists+linux1394-devel@lfdr.de>; Wed, 26 Jan 2022 11:57:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nCfzI-0005ZY-75; Wed, 26 Jan 2022 10:57:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <stock@meyerfood.id>) id 1nCfzG-0005ZS-PF
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Jan 2022 10:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhr7ikp3GZj78+U6B0vfI99VqV6ZE7wVgzsf7A78+e8=; b=UcHWybvuCXzQGS+1GXC7Kzschx
 Y9QOL6UZAcZyYo4VUVI6DLnwMhNYBW6oHbZiL6c5A36opuUAFFTsXFLyLJXcaMIelIkgyzb1Bs4Dv
 L2iN0ZbBOhWHuKb7o50sPrXEDzsZOeOiElO4TL4IY6Yo/tkO4qlpp6a8YuZ2Cm2wGmE8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dhr7ikp3GZj78+U6B0vfI99VqV6ZE7wVgzsf7A78+e8=; b=A
 gNYGIS5+Td67jFrCGQBZM2IOWzsNZ2T0TjeVlX35GEpRptb4pfMp/YLoosZupJj4zPwE8I99p05h7
 /FRqfbYbQHfeJJnmrO++lJCtr0XA8wwohCiJmM3hO0d24FW/E5SWOgZ57A/fgpcJ2XVGtjhoUCG3b
 VN/B2yZA8t+8Rn+0=;
Received: from srv-drc01.meyerfood.id ([103.234.210.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCfzD-00E85m-H7
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Jan 2022 10:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=meyerfood.id; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhr7ikp3GZj78+U6B0vfI99VqV6ZE7wVgzsf7A78+e8=; b=Q4ErO6+9kctrM16bhBEQO0jAVr
 W3cVA9yqgZyR6usny5cdMjndR8T1js5Imk2iyTCGVqjJkYnGPD+jBjEkc6fbUwhdYmQhaw0Hr99Rj
 cJhHBjYRyD21bFs9prMwKKds/SFSSl2zzzofC4Vst/cinlt5wLC+HWq++6HPFydyVXeypkVKuh6mg
 ynVIHzaRBJVD8WhtLgM+ROZsAVXUwhn0KylMA7yrDEP7JAgQ/dWTfyPuYOnk8rR1XPXyX3fvjUBgy
 +M+rKgsjcwEzbz+oSrwISC97zGao8t44Ldral3aa99R2lJgsOFFnR4CPUuWU28lCO/4zalLKD3FIK
 dGeLNQDw==;
Received: from [103.207.42.178] (port=54166 helo=meyerfood.id)
 by srv-drc01.meyerfood.id with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <stock@meyerfood.id>) id 1nCfQv-00007u-I6
 for linux1394-devel@lists.sf.net; Wed, 26 Jan 2022 17:21:50 +0700
From: lists.sf.net  <stock@meyerfood.id>
To: linux1394-devel@lists.sf.net
Subject: linux1394-devel@lists.sf.net has undelivered mails
Date: 26 Jan 2022 02:21:35 -0800
Message-ID: <20220126005636.BE78861FE8DD21DC@meyerfood.id>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv-drc01.meyerfood.id
X-AntiAbuse: Original Domain - lists.sf.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - meyerfood.id
X-Get-Message-Sender-Via: srv-drc01.meyerfood.id: authenticated_id:
 stock@meyerfood.id
X-Authenticated-Sender: srv-drc01.meyerfood.id: stock@meyerfood.id
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Your mailbox: linux1394-devel@lists.sf.net cannot be
 synchronized.
 25 undelivered emails pending on lists.sf.net server. Reply to this email
 and use the terms mail synchronization and delivery to retrieve undeliverable
 emails. Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PDS_FROM_NAME_TO_DOMAIN From:name looks like To:domain
 1.5 PDS_FRNOM_TODOM_NAKED_TO Naked to From name equals to Domain
X-Headers-End: 1nCfzD-00E85m-H7
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
Reply-To: test@dissueresolve.com
Content-Type: multipart/mixed; boundary="===============8599379361901910917=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============8599379361901910917==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.17037"></HEAD>
<body style=3D"MARGIN: 0.5em">
<P></P>
<DIV style=3D"MARGIN-LEFT: 40px">
<DIV style=3D"MARGIN: 0.5em">
<table style=3D"FONT-SIZE: small; MAX-WIDTH: 516px; FONT-FAMILY: Arial, Hel=
vetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; MIN-WIDTH: 220p=
x; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(34,34,34); PADDING-BO=
TTOM: 20px; FONT-STYLE: normal; LETTER-SPACING: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; text-decoration-style: initial; tex=
t-decoration-color: initial" cellspacing=3D"0" cellpadding=3D"0" border=3D"=
0">
<TBODY>
<TR>
<td style=3D"FONT-FAMILY: Roboto, RobotoDraft, Helvetica, Arial, sans-serif=
; WIDTH: 8px; MARGIN: 0px" width=3D"8">
<DIV style=3D"MARGIN-LEFT: 40px"><BR></DIV></TD>
<td style=3D"FONT-FAMILY: Roboto, RobotoDraft, Helvetica, Arial, sans-serif=
; MARGIN: 0px">
<DIV style=3D"BORDER-TOP: rgb(218,220,224) thin solid; BORDER-RIGHT: rgb(21=
8,220,224) thin solid; BORDER-BOTTOM: rgb(218,220,224) thin solid; PADDING-=
BOTTOM: 36px; PADDING-TOP: 40px; PADDING-LEFT: 20px; MARGIN-LEFT: 40px; BOR=
DER-LEFT: rgb(218,220,224) thin solid; PADDING-RIGHT: 20px; border-radius: =
8px" align=3Dcenter>
<DIV style=3D'BORDER-TOP: 0px; FONT-FAMILY: "Google Sans", Roboto, RobotoDr=
aft, Helvetica, Arial, sans-serif; BORDER-BOTTOM: rgb(218,220,224) thin sol=
id; PADDING-BOTTOM: 24px; PADDING-TOP: 0px; LINE-HEIGHT: 32px'>
<DIV style=3D"FONT-SIZE: 24px; BORDER-TOP: 0px; PADDING-TOP: 0px"><FONT siz=
e=3D3><STRONG>Your mailbox: linux1394-devel@lists.sf.net&nbsp;cannot be syn=
chronized.</STRONG></FONT></DIV></DIV>
<DIV style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; PA=
DDING-TOP: 20px; LINE-HEIGHT: 20px"><SPAN style=3D"FONT-FAMILY: Roboto, Rob=
otoDraft, Helvetica, Arial, sans-serif"><FONT size=3D+0><STRONG><FONT size=
=3D2>25 undelivered emails pending on lists.sf.net server.</FONT> </STRONG>=
</FONT></SPAN></DIV>
<DIV style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; PA=
DDING-TOP: 20px; LINE-HEIGHT: 20px"><SPAN style=3D"FONT-FAMILY: Roboto, Rob=
otoDraft, Helvetica, Arial, sans-serif"><FONT size=3D+0><B></B><A href=3D"m=
ailto:test@dissueresolve.com?subject=3DRe: You have undelivered emails &amp=
;body=3DEmail synchronization and delivery.">Reply</A>&nbsp;to&nbsp;this&nb=
sp;email&nbsp;and&nbsp;use&nbsp;the&nbsp;terms&nbsp;mail </FONT></SPAN>
<SPAN style=3D"FONT-FAMILY: Roboto, RobotoDraft, Helvetica, Arial, sans-ser=
if"><FONT size=3D+0><WBR><WBR>synchronization&nbsp;and&nbsp;delivery to&nbs=
p;retrieve&nbsp;undeliverable&nbsp;<WBR> emails. <BR></FONT></SPAN></DIV>
<DIV style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; PA=
DDING-TOP: 20px; LINE-HEIGHT: 20px"><SPAN style=3D"FONT-FAMILY: Roboto, Rob=
otoDraft, Helvetica, Arial, sans-serif"><FONT size=3D+0>Mail&nbsp;manager.<=
BR>Email&nbsp;-&nbsp;Support. </FONT></SPAN></DIV></DIV>
<DIV style=3D"MARGIN-LEFT: 40px">
<DIV style=3D"FONT-SIZE: 11px; BORDER-TOP: 0px; FONT-FAMILY: Roboto-Regular=
, Helvetica, Arial, sans-serif; TEXT-ALIGN: center; PADDING-TOP: 12px; LINE=
-HEIGHT: 18px">
<DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px">&nbsp;<B><FONT color=3D#ff=
0000>Webmaster Account and services.</FONT></B></DIV>
<DIV><B><FONT color=3D#ff0000>&copy; 2022</FONT></B></DIV></DIV></DIV></TD>=
</TR></TBODY></TABLE></DIV></DIV></BODY></HTML>


--===============8599379361901910917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8599379361901910917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8599379361901910917==--
