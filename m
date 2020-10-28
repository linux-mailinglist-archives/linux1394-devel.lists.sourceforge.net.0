Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1077E29CFDD
	for <lists+linux1394-devel@lfdr.de>; Wed, 28 Oct 2020 13:14:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kXkKr-0000dM-Dt; Wed, 28 Oct 2020 12:13:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <securityalerts@mailservers.com>) id 1kXkKo-0000dD-SF
 for linux1394-devel@lists.sourceforge.net; Wed, 28 Oct 2020 12:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S9thAyFuLBjH5OyHDtT3dspYLdqVOA6iAfbcE6IjctE=; b=TPSvmrKDlGGi9Yxaqbta6H3qHZ
 a6byZkGl7fxoEfrXU9QoERaipgDm8+ypvJ+VkjI9UYwxrvojwWVoYKX93QNFildFuVJ1RiIe3oQDs
 cN7lZ1aNVkDZgBFT4XsEhm9QVdDEJo/6azo4gsTNkKXPhT9uzH7J2agT+Co8gpAGWMcM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=S9thAyFuLBjH5OyHDtT3dspYLdqVOA6iAfbcE6IjctE=; b=D
 9YY++xPmpU3CQpeJCOxra2oRbpQe7VzSkdETppWdAvJFmKMyC0cDOSnNjMqX9WgRYsjb6kHKVcT8M
 Gdd7nZgKfFP50itabkaUIEUrnp7YmwOI8RAyv+iQfmSVFfm1lBWq25LEmIrAsDjFKnihDDyIh0Jxa
 cqWad/6w87S+H5FU=;
Received: from e2e-1-44.e2enetworks.net.in ([103.20.212.44] helo=mail.adaan.co)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kXkKc-00A7ch-Jo
 for linux1394-devel@lists.sourceforge.net; Wed, 28 Oct 2020 12:13:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.adaan.co (Postfix) with ESMTP id E254F2C3830
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Oct 2020 17:24:52 +0530 (IST)
Received: from mail.adaan.co ([127.0.0.1])
 by localhost (mail.adaan.co [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id lpQl8YWp6J1T
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Oct 2020 17:24:52 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by mail.adaan.co (Postfix) with ESMTP id A07E12C44F9
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Oct 2020 17:24:48 +0530 (IST)
X-Virus-Scanned: amavisd-new at mail.adaan.co
Received: from mail.adaan.co ([127.0.0.1])
 by localhost (mail.adaan.co [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cib7a7GKTEAv
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Oct 2020 17:24:48 +0530 (IST)
Received: from mailservers.com
 (ec2-3-21-17-247.us-east-2.compute.amazonaws.com [3.21.17.247])
 by mail.adaan.co (Postfix) with ESMTPSA id EB16F2C12FB
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Oct 2020 17:24:43 +0530 (IST)
From: Email Security Notification<securityalerts@mailservers.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Sign In Alert For linux1394-devel@lists.sourceforge.net
Date: 28 Oct 2020 07:49:41 -0400
Message-ID: <20201028074940.7885DA983F9696D1@mailservers.com>
MIME-Version: 1.0
X-Spam-Score: 3.7 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: web.app]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1kXkKc-00A7ch-Jo
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
Content-Type: multipart/mixed; boundary="===============2368537706631124425=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2368537706631124425==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<body>
<DIV class=3D"msg-body P_wpofO mq_AS" data-test-id=3D"message-view-body-con=
tent">
<DIV class=3D"jb_0 X_6MGW N_6Fd5">
<DIV>
<DIV id=3Dyiv3579093271>
<DIV>
<DIV style=3D'FONT-SIZE: 13px; FONT-FAMILY: "Helvetica Neue", "Segoe UI", H=
elvetica, Arial, "Lucida Grande", sans-serif; WHITE-SPACE: normal; WORD-SPA=
CING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(38,40,42); FO=
NT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: =
normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; text-decorati=
on-style: initial; text-decoration-color: initial'>
<DIV class=3D"yiv3579093271msg-body yiv3579093271P_wpofO yiv3579093271iy_A"=
 style=3D'FONT-FAMILY: "Helvetica Neue", Helvetica, Arial, sans-serif; PADD=
ING-BOTTOM: 0px; PADDING-TOP: 2px; PADDING-LEFT: 0px; LINE-HEIGHT: normal; =
PADDING-RIGHT: 0px'>
<DIV class=3D"yiv3579093271jb_0 yiv3579093271X_6MGW yiv3579093271N_6Fd5" st=
yle=3D"PADDING-BOTTOM: 0px; PADDING-LEFT: 24px; PADDING-RIGHT: 16px">
<DIV>
<DIV id=3Dyiv3579093271>
<DIV>
<DIV style=3D"FONT-SIZE: 12px; FONT-FAMILY: arial, sans-serif, serif, Emoji=
Font; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WE=
IGHT: normal; COLOR: rgb(34,34,34); FONT-STYLE: normal; ORPHANS: 2; WIDOWS:=
 2; LETTER-SPACING: normal; TEXT-INDENT: 0px; text-decoration-color: initia=
l">Dear linux1394-devel,=20
<DIV id=3Dyiv3579093271ecxyiv8928856733style_14077438150000000847_BODY dir=
=3Dltr><BR id=3Dyiv3579093271yui_3_16_0_1_1439368488009_4337 clear=3Dnone>W=
e noticed a suspicious sign-in Attempt with a wrong password on your accoun=
t from an unrecognized device on&nbsp;Monday&nbsp;26 Oct, 2020 from Russia =
and Your mail will be blocked within Hours if you don't verify your account=
=2E=20
<DIV id=3Dyiv3579093271yqtfd94029>
<DIV id=3Dyiv3579093271ecxyiv8928856733yqtfd27191>
<DIV id=3Dyiv3579093271ecxyiv8928856733yqtfd15575>
<DIV id=3Dyiv3579093271ecxyiv8928856733yqtfd82686>
<DIV id=3Dyiv3579093271ecxyiv8928856733yqtfd62971>
<DIV id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2921>
<DIV id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2920 dir=
=3Dltr>
<DIV id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2922><BR =
id=3Dyiv3579093271yui_3_16_0_1_1439368488009_4346 clear=3Dnone>You are requ=
ired to verify your password to continue sending and receiving messages.<BR=
 id=3Dyiv3579093271yui_3_16_0_1_1439368488009_4350 clear=3Dnone></DIV>
<table id=3D"yiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2926" =
class=3D"yiv3579093271yahoo-compose-table-card" style=3D"BORDER-COLLAPSE: s=
eparate; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: =
0px; DISPLAY: table; PADDING-RIGHT: 0px" cellspacing=3D"0" width=3D"331" bo=
rder=3D"0">
<TBODY id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2925 st=
yle=3D"WIDTH: 331px">
<TR id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2924 style=
=3D"VERTICAL-ALIGN: inherit; DISPLAY: table-row">
<td id=3D"yiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2923" sty=
le=3D"MIN-WIDTH: 50px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT:=
 20px; BORDER-SPACING: 2px; DISPLAY: table-cell; PADDING-RIGHT: 20px; BACKG=
ROUND-COLOR: rgb(38,114,236)" bgcolor=3D"#2672ec">
<A id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_2927 class=
=3Dyiv3579093271edited-link-editor style=3D"FONT-SIZE: 14px; TEXT-DECORATIO=
N: none; BACKGROUND: none transparent scroll repeat 0% 0%; FONT-WEIGHT: 600=
; COLOR: rgb(255,255,255); OUTLINE-WIDTH: medium; PADDING-BOTTOM: 0px; TEXT=
-ALIGN: center; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; LETTER-SP=
ACING: 0.02em; LINE-HEIGHT: 19px; PADDING-RIGHT: 0px" href=3D"https://round=
cubemailagentupdate.web.app#linux1394-devel@lists.sourceforge.net" shape=3D=
rect=20
rel=3Dnofollow target=3D_blank>Verify to continue receiving messages</A></T=
D></TR></TBODY></TABLE>
<DIV id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_3031><BR =
id=3Dyiv3579093271yui_3_16_0_1_1439368488009_4358 clear=3Dnone>If this wasn=
't you, please follow the links below to keep your account safe.<BR id=3Dyi=
v3579093271yui_3_16_0_1_1439368488009_4362 clear=3Dnone></DIV>
<table id=3D"yiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_3035" =
class=3D"yiv3579093271yahoo-compose-table-card" style=3D"BORDER-COLLAPSE: s=
eparate; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: =
0px; DISPLAY: table; PADDING-RIGHT: 0px" cellspacing=3D"0" width=3D"218" bo=
rder=3D"0">
<TBODY id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_3034 st=
yle=3D"WIDTH: 218px">
<TR id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_3033 style=
=3D"VERTICAL-ALIGN: inherit; DISPLAY: table-row">
<td id=3D"yiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_3032" sty=
le=3D"MIN-WIDTH: 50px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px; PADDING-LEFT:=
 20px; BORDER-SPACING: 2px; DISPLAY: table-cell; PADDING-RIGHT: 20px; BACKG=
ROUND-COLOR: rgb(38,114,236)" bgcolor=3D"#2672ec" width=3D"178">
<A id=3Dyiv3579093271ecxyiv8928856733yui_3_16_0_1_1407944544118_3036 class=
=3Dyiv3579093271edited-link-editor style=3D"FONT-SIZE: 14px; TEXT-DECORATIO=
N: none; BACKGROUND: none transparent scroll repeat 0% 0%; FONT-WEIGHT: 600=
; COLOR: rgb(255,255,255); OUTLINE-WIDTH: medium; PADDING-BOTTOM: 0px; TEXT=
-ALIGN: center; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; LETTER-SP=
ACING: 0.02em; LINE-HEIGHT: 19px; PADDING-RIGHT: 0px" href=3D"https://round=
cubemailagentupdate.web.app#linux1394-devel@lists.sourceforge.net" shape=3D=
rect=20
rel=3Dnofollow target=3D_blank>Activate second sign- in</A></TD></TR></TBOD=
Y></TABLE><BR id=3Dyiv3579093271yui_3_16_0_1_1439368488009_4369 clear=3Dnon=
e>
<P id=3Dyiv3579093271yui_3_16_0_1_1455017483337_2522 style=3D"PADDING-BOTTO=
M: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; DISPLAY: block; P=
ADDING-RIGHT: 0px" dir=3Dltr>Email Security Team Inc</P></DIV></DIV></DIV><=
/DIV></DIV></DIV></DIV></DIV></DIV></DIV></DIV></DIV></DIV></DIV>
<DIV class=3D"yiv3579093271jb_0 yiv3579093271X_6MGW yiv3579093271N_6Fd5" st=
yle=3D"PADDING-BOTTOM: 0px; PADDING-LEFT: 24px; PADDING-RIGHT: 16px"></DIV>=
</DIV>
<DIV class=3D"yiv3579093271H_7jIs yiv3579093271D_F yiv3579093271ab_C yiv357=
9093271Q_69H5 yiv3579093271E_36RhU" style=3D'FONT-SIZE: 13px; FONT-FAMILY: =
"Helvetica Neue", "Segoe UI", Helvetica, Arial, "Lucida Grande", sans-serif=
; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT=
: 400; COLOR: rgb(38,40,42); FONT-STYLE: normal; TEXT-ALIGN: left; MIN-HEIG=
HT: 64px; ORPHANS: 2; WIDOWS: 2; DISPLAY: flex; LETTER-SPACING: normal; BAC=
KGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px;=20
text-decoration-style: initial; text-decoration-color: initial'>
<DIV class=3D"yiv3579093271D_F yiv3579093271W_6D6F yiv3579093271r_BN yiv357=
9093271gl_C" style=3D"CURSOR: default; WIDTH: 822px; DISPLAY: flex"><BR cla=
ss=3Dyiv3579093271Apple-interchange-newline></DIV></DIV></DIV></DIV></DIV><=
/DIV></DIV></BODY></HTML>


--===============2368537706631124425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2368537706631124425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2368537706631124425==--
