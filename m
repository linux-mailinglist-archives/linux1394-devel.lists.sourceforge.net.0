Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE61149C990
	for <lists+linux1394-devel@lfdr.de>; Wed, 26 Jan 2022 13:24:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nChLJ-0008Cd-6r; Wed, 26 Jan 2022 12:24:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support@stakenearn.com>) id 1nChLH-0008CX-Rw
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Jan 2022 12:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZYmUtZEdyX2jbhDmI3ASfbgz1cIBYx4CKAlMZA8JYyE=; b=OI+sccqHWFR5FTDKpqImkSa26s
 BGO9xD/kQ8ye/CvzNsLbdmul13NUL0mOnd1dyQomcClZT4QGOAVQnHlXX8A9bzPnYf8jNFK1hfrgl
 91dBBrBatpX9xkIWhp5R/DYiGQpTESwA/Ls7PhMwzW8itqkszS5xvgFzgDGHrPQ/Jju0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZYmUtZEdyX2jbhDmI3ASfbgz1cIBYx4CKAlMZA8JYyE=; b=A
 jkSTYHRJ2saDRZvV9bFrWZ+5CL/4J7uvQMDPyOuvew3jf7yEPxa+6+cgR3W47cvjM9SXZ99PrQi10
 lxUDZEd9Dt5V5OZJlRUfw3h9TE+JbTHasnI6mOhd3YnuVhecMIfymKMM1Mmq+rL+9kHWKw3MYFsW8
 JM1s5xmYvrCT+zn4=;
Received: from server.stakenearn.com ([72.249.77.208])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nChLB-0000DN-IW
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Jan 2022 12:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=stakenearn.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZYmUtZEdyX2jbhDmI3ASfbgz1cIBYx4CKAlMZA8JYyE=; b=pMLyIW7FT/Rj0LXTeMwg8drQEs
 HixTNm1OV3UABdlM9wHjjtXYxmt0/x/NUeJwTn9RdRq8138PEo7JhW0bRd7qxo4qjtB0ES+R8BRn1
 iwG6SyfAsBCHGsFZWUkHjbtdwFgcblapk7ZHClcUvpCX0ziac0lSEMx2ZZ7AzMektLYAxp2Wts1gW
 cxfpupnIsIbsC21fRUNwX4YCT5t8v7tMRg6R3LA+MI3gFkfc1f34HNIaB+eQLdQuq1A/GQvQILXwZ
 7S887y9l80fbiAdtQezFDcsJwmEJJp9L02SHngYY3yFj82HUQvtNjpe22hpV+xsrSkFCbNY08ZAJ+
 X6bhvn7g==;
Received: from [103.207.42.178] (port=55677 helo=stakenearn.com)
 by server.stakenearn.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support@stakenearn.com>) id 1nCgsD-0000Ah-PK
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Jan 2022 19:53:59 +0800
From: lists.sourceforge.net  <support@stakenearn.com>
To: linux1394-devel@lists.sourceforge.net
Subject: linux1394-devel@lists.sourceforge.net has undelivered mails
Date: 26 Jan 2022 03:53:49 -0800
Message-ID: <20220126010938.2E64DDD1D4709155@stakenearn.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.stakenearn.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - stakenearn.com
X-Get-Message-Sender-Via: server.stakenearn.com: authenticated_id:
 support@stakenearn.com
X-Authenticated-Sender: server.stakenearn.com: support@stakenearn.com
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
 Content preview:  Your mailbox: linux1394-devel@lists.sourceforge.net cannot
 be synchronized. 25 undelivered emails pending on lists.sourceforge.net
 server.
 Reply to this email and use the terms mail synchronization and delivery to
 retrieve undeliverable emails. 
 Content analysis details:   (3.4 points, 6.0 required)
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
 0.0 ACCT_PHISHING_MANY     Phishing for account information
X-Headers-End: 1nChLB-0000DN-IW
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
Content-Type: multipart/mixed; boundary="===============8060690731711795191=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============8060690731711795191==
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
e=3D3><STRONG>Your mailbox: linux1394-devel@lists.sourceforge.net&nbsp;cann=
ot be synchronized.</STRONG></FONT></DIV></DIV>
<DIV style=3D"FONT-FAMILY: Roboto-Regular, Helvetica, Arial, sans-serif; PA=
DDING-TOP: 20px; LINE-HEIGHT: 20px"><SPAN style=3D"FONT-FAMILY: Roboto, Rob=
otoDraft, Helvetica, Arial, sans-serif"><FONT size=3D+0><STRONG><FONT size=
=3D2>25 undelivered emails pending on lists.sourceforge.net server.</FONT> =
</STRONG></FONT></SPAN></DIV>
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


--===============8060690731711795191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8060690731711795191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8060690731711795191==--
