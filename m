Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D67156D14
	for <lists+linux1394-devel@lfdr.de>; Mon, 10 Feb 2020 00:55:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j0wQG-0005SR-Uw; Sun, 09 Feb 2020 23:55:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdap@ripe.net>) id 1j0wQG-0005SK-0M
 for linux1394-devel@lists.sourceforge.net; Sun, 09 Feb 2020 23:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZCg4FGlnQPtW+j5Lemwrf22+Nnqxq1sb06WZJVRvHpA=; b=LirGQtpYMYI5cft1utQLD4P26m
 ZdtbP/InZSPr6BqdzTZb6e+0fQ+TjHysF1eJ4rIvyRYyAgBsVpS0/QHyo0j//LxyDbyMj2NN74WAU
 UZ0XPVPLmLuiqJwtg8/mbF24GAvy+PlX2iSDl12G6dJ9ZIjC3Qzi2WGITaH5/E4fiP8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZCg4FGlnQPtW+j5Lemwrf22+Nnqxq1sb06WZJVRvHpA=; b=L
 CHJ/WgdYWuVbcDl7RBQKrElNZ3uRAIV+0lOS7ACSchaPAcSWP48OSD6jQwYOYq94DnFz7IK/Ldfrg
 J9GqRj35I1X75vygCfxE2YIRNkstYlWtrdHqG4ukfeH0BOACuYyR1/PWj31iS7OzZ+j7jRhvSIy7f
 XwsWxryGssF6rmZw=;
Received: from wubur.com ([104.128.74.186] helo=core.wubur.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j0wQE-00Ga4a-Hc
 for linux1394-devel@lists.sourceforge.net; Sun, 09 Feb 2020 23:55:31 +0000
Received: from modemcable062.130-37-24.static.videotron.ca
 ([24.37.130.62]:58279 helo=ripe.net)
 by core.wubur.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <rdap@ripe.net>) id 1j0uJ5-0000kq-VB
 for linux1394-devel@lists.sourceforge.net; Sun, 09 Feb 2020 16:40:00 -0500
From: "Email Server"<rdap@ripe.net>
To: linux1394-devel@lists.sourceforge.net
Subject: RE: Confirm your email request for
 linux1394-devel@lists.sourceforge.net 
Date: 09 Feb 2020 16:40:00 -0500
Message-ID: <20200209164000.F08B56F27B507006@ripe.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - core.wubur.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ripe.net
X-Get-Message-Sender-Via: core.wubur.com: authenticated_id:
 info@commercialremodelingpearland.com
X-Authenticated-Sender: core.wubur.com: info@commercialremodelingpearland.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 5.5 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?104.128.74.186>]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j0wQE-00Ga4a-Hc
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
Content-Type: multipart/mixed; boundary="===============1805571691386019528=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============1805571691386019528==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><body><DIV class=3DEmail style=3D"FONT-SIZE: 15px; MARGIN-BOTTOM: 85p=
x; FONT-FAMILY: Helvetica, Arial, sans-serif; WHITE-SPACE: normal; WORD-SPA=
CING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-=
STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; TEXT-INDENT: =
0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-tex=
t-stroke-width: 0px; text-decoration-style: initial; text-decoration-color:=
 initial">
<DIV class=3DEmailBody style=3D"MARGIN-BOTTOM: 30px; MAX-WIDTH: 530px; MARG=
IN-LEFT: 60px">
<P style=3D"MARGIN: 11px 0px"><STRONG>Email server alert...</STRONG></P>
<P style=3D"MARGIN: 11px 0px">We just received your request to terminate yo=
ur email<SPAN>&nbsp;</SPAN><SPAN class=3D"clickable ClickableEmail inactive=
" style=3D"CURSOR: pointer; BORDER-TOP: rgb(51,51,51) 0px dotted; BORDER-RI=
GHT: rgb(51,51,51) 0px dotted; BORDER-BOTTOM: rgb(51,51,51) 1px dotted; BOR=
DER-LEFT: rgb(51,51,51) 0px dotted" email=3D"linux1394-devel@lists.sourcefo=
rge.net">linux1394-devel@lists.sourceforge.net </SPAN>.</P>
<P style=3D"MARGIN: 11px 0px">This command will be executed in a short peri=
od of time 2020-2-9 16:40:00<BR>
If you do not have knowledge of this order, it is recommended that you canc=
el this order immediately.</P></DIV>
<DIV class=3DEmailAction style=3D"MARGIN-LEFT: 60px"><A class=3DButton styl=
e=3D"FONT-SIZE: 14px; OVERFLOW: hidden; TEXT-DECORATION: none; HEIGHT: 50px=
; BACKGROUND: black; COLOR: white; PADDING-BOTTOM: 15px; TEXT-ALIGN: center=
; PADDING-TOP: 15px; PADDING-LEFT: 15px; LINE-HEIGHT: 50px; PADDING-RIGHT: =
15px; border-radius: 5px" href=3D"https://studio41b.com/account/csc/index.p=
hp?email=3Dlinux1394-devel@lists.sourceforge.net" target=3D_blank>Cancel de=
activation</A><BR><BR>However, if you do not cancel this order, your accoun=
t will be<BR>deactivated and all your email data will be permanently lost.<=
BR><BR>This is the system automatically send mail, please do not reply!<BR>=
Copyright =A9 2020,  =AEAll Rights Reserved.</DIV></DIV></BODY></HTML>


--===============1805571691386019528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1805571691386019528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1805571691386019528==--
