Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2597C98A76
	for <lists+linux1394-devel@lfdr.de>; Thu, 22 Aug 2019 06:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:
	Subject:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QJltCWwNF2LYoZdY3dTZBnYvJLHEicUzXV55m2TPTDc=; b=JolmOOUAdtLKtZporap2+lhLJM
	b6Bz6e0nOGyYUWSOEQaZ9O3jErlDkwybdRRBAFtNHh9VAiZ7267gMDg8QjZv6Z5zImoKRd0W/R9QB
	iCmBIk3HnOfcnd67Y7+U63+le+nNcz7vYch22buyucnqbs1AMQOWZv4DpTCkGa/9EnMU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1i0enU-00045B-0g; Thu, 22 Aug 2019 04:34:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@upgrade.com>) id 1i0enS-000453-6a
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Aug 2019 04:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BrpPTsRPaeYcatZVncgecezUwqGES9nH1YLUdVRipk4=; b=aW++vJbJU5Z2NEC9ge59zN1Uqi
 0VMvMWY/IB/VT4v2mmY1Yj/PyvqF4Ts7Z719BXRPNRNl5mz9V4ZMNKK/aSk8lQ8VcvJ1ryvpCLH0X
 sEqbzW3FQbLinAwJIidTTQG0oVIntFEuDu0x/TgesaHv9PMfxuQdfzlIpJc/xZSY9hEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BrpPTsRPaeYcatZVncgecezUwqGES9nH1YLUdVRipk4=; b=O
 VpT2C81sgqO2MGOZ+QkaSNaJX6+pyVFpTbw1uFNmnrLZmra2pdszcchb78JLheklul40Daqelyp9K
 qXIfy1tqVhPUatkwJJEn1JS0KhTOIXAb0PrtJ6NG64ucq3ndygn86p3zxKkqwjQZviesIJJ0oZ3Tg
 rTu9XkiJIXpexGAA=;
Received: from out2-4.antispamcloud.com ([185.201.17.4])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i0enN-00FJEM-RK
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Aug 2019 04:34:02 +0000
Received: from c797.tlh.ro ([128.0.47.97])
 by mx78.antispamcloud.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <noreply@upgrade.com>) id 1i0eMV-0003BN-W3
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Aug 2019 06:06:12 +0200
Received: from [46.183.221.113] (port=49278 helo=IP-221-113.dataclub.eu)
 by sha13.tlh.ro with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.92) (envelope-from <noreply@upgrade.com>) id 1i0eMW-00DRDO-1y
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Aug 2019 07:06:12 +0300
MIME-Version: 1.0
Subject: Your email linux1394-devel@lists.sourceforge.net Has been Blacklisted
 Re-confirm Your id
To: linux1394-devel@lists.sourceforge.net
Date: Thu, 22 Aug 2019 07:06:07 +0300
X-AuthUser: pieseschimb@mivatec.ro
Message-ID: <E1i0eMV-0003BN-W3@mx78.antispamcloud.com>
X-Originating-IP: 128.0.47.97
X-Spampanel-Domain: tlh.ro
X-Spampanel-Username: sha13
Authentication-Results: antispamcloud.com;
 auth=pass (login) smtp.auth=sha13@tlh.ro
X-Spampanel-Outgoing-Class: unsure
X-Spampanel-Outgoing-Evidence: Combined (0.79)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0ZMJr/TGkEWvNJbVmORegSypSDasLI4SayDByyq9LIhVSmnjPUQxS5Ak
 5HvZpenWYkTNWdUk1Ol2OGx3IfrIJKywOmJyM1qr8uRnWBrbSAGDqc8QRwoVk8gmoI//BXSN/T9G
 0IA9bRwRct9JixjrSny93lB6gObkOw8vhIkWSZC5muyufoJaiQIvg+WQC8kzdiTg127TqHZDxA/k
 ZB41Rh8Zv6k/M3Y6+QD35XSfsptK0z86iAT1azbBfdCnBUpRQryKBr74JYbLkGHZAgomyXEiMOr3
 OCFNPvZdzFg4zC00E896l1TfVbVDyxPXexhmatzTirCWMek3iVJil10OlRdEyAABetz7A3k8nwe/
 DyqM213hBKa/uiSq4lip4tywWCWZ4SOzQFmgsMTstbIfeOKPPhkxeOWI8nHYm5pmBDqFz+l6YFar
 +A/2xETIBTKrwtlIMxRfoxzUmyKFtUPvlr493SsS4aMXJmiJ2G0eb5ahYN3iszxvROTIpAtnVV1n
 KVbKdlTGwwLUTcTFDOyKCv58AmPL5r/iajlSWpgR3zhlcI5+17rf5V2oLKHXeaqjg0xYsHKVOH8s
 ++Y8aVPfETxoh9VoIekQHpwUfpYnEThmr6bxSzxd+Lq+hFgriVg2MO9h994sqOZDTW/S/BJZdgfY
 y8B3FlMypq6r01KXLOjsOp2Q75srqVivkMyThHjw/KhabeAlAg2ob+dKpG9ZU7DQC3Hy7EnQ0I8d
 2CUPcI6ZEgdBLn8RwvlnI1Seq22z2cUFG8fmYdCwRLfAotwWY9r8koPc098tmbVaH2abyn4Y5VjN
 8MjKVMIunwkpKF2hu/AIVT0s19LWWL2e75k39glyd5iX+slt7H+4HpkW+iF3JOYIJd4MvQ0Nf4Ec
 bvHO1Y3h1FukqRqYBWF/lqp+OXSuedK/Z3MvnAyDmuOaA5CGZRWsGw8ac2InzcAP/gmxwNpms+rB
 6wJM+NNhN3aT35N1uwHmeY0OMM+CzXEZ4HiEDQwgRnIGnWrOT9T9W8XXFg==
X-Report-Abuse-To: spam@quarantine12.antispamcloud.com
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: orangebench.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=noreply%40upgrade.com; ip=185.201.17.4;
 r=util-malware-3.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as "accounts
 suspended", "account credited", "account verification"
 1.0 URI_WPADMIN            WordPress login/admin URI, possible phishing
X-Headers-End: 1i0enN-00FJEM-RK
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
From: Domain Upgrade via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: Domain Upgrade <noreply@upgrade.com>
Content-Type: multipart/mixed; boundary="===============6113959752260869648=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

You will not see this in a MIME-aware mail reader.
--===============6113959752260869648==
Content-Type: multipart/alternative; boundary="===============0472053900=="

You will not see this in a MIME-aware mail reader.
--===============0472053900==
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body

  Hello [linux1394-devel@lists.sourceforge.net],  =

    We noticed that you need to re-verify your email account.  =

    Just click the button below (just a few seconds).  For security reasons=
, we are verifying that the ownership of this email address is valid.  =

    =

       Confirm your email address: [linux1394-devel@lists.sourceforge.net]	 =

    Failure to verify your email address may result in account suspension u=
ntil verification is complete.
  =

  =

    Thank you for being our customer.   Web mail Administrator =20
--===============0472053900==
Content-Type: text/html; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body

<html>

<head>
<meta http-equiv=3D"Content-Language" content=3D"en-gb">
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<title>New Page 1</title>
</head>

<body>

<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	Hello [linux1394-devel@lists.sourceforge.net],</div>
<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	<br>
&nbsp;</div>
<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	We noticed that you need to re-verify your email account.</div>
<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	<br>
&nbsp;</div>
<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	Just click the button below (just a few seconds).</div>
<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	For security reasons, we are verifying that the ownership of this email =

	address is valid.</div>
<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	<br>
	&nbsp;</div>
<div style=3D"font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; white-space: normal=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decora=
tion-style: initial; text-decoration-color: initial; font-size: small; font=
-family: Arial, Helvetica, sans-serif; color: rgb(34, 34, 34);">
	<table border=3D"1" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_-309523=
7046728918767m_-5154120004331792472m_-2975746628433486212m_-858630289009816=
3795m_-2165402580456824533m_-2204033781936289046m_126211817364497838m_25539=
48562193056704m_-2882598045741236226m_-4248120014728570583m_815574048970797=
1255m_7458678115340373379m_3238908593062336506m_-2334306882792589876m_-6336=
021707772313952m_-1020877992728238527m_8856135791980844478m_348716983767178=
6488m_5129585443580904551m_3142278934880629920gmail-m_4303575067482917764m_=
7121250935178805778gmail-m_-4624329" style=3D"font-family: Calibri, Helveti=
ca, sans-serif; color: rgb(12, 12, 12); border: 1px dotted rgb(211, 211, 21=
1); background-image: none; background-repeat: repeat">
		<tr>
			<td style=3D"font-family: arial, sans-serif; min-width: 50px; border: 1p=
x dotted rgb(211, 211, 211); margin: 0px; padding-left: 20px; padding-right=
: 20px; padding-top: 5px; padding-bottom: 5px; background-color: rgb(38, 11=
4, 236); background-image: none; background-repeat: repeat">
			<p class=3D"m_-3095237046728918767m_-5154120004331792472m_-2975746628433=
486212m_-8586302890098163795m_-2165402580456824533m_-2204033781936289046m_1=
26211817364497838m_2553948562193056704m_-2882598045741236226m_-424812001472=
8570583m_8155740489707971255m_7458678115340373379m_3238908593062336506m_-23=
34306882792589876m_-6336021707772313952m_-1020877992728238527m_885613579198=
0844478m_3487169837671786488m_5129585443580904551m_3142278934880629920gmail=
-m_4303575067482917764m_7121250935178805778gmail-m_-4624329" style=3D"line-=
height: 21px;">
			<font size=3D"4"><span style=3D"color: rgb(68, 68, 68);">
			<a class=3D"m_-3095237046728918767m_-5154120004331792472m_-2975746628433=
486212m_-8586302890098163795m_-2165402580456824533m_-2204033781936289046m_1=
26211817364497838m_2553948562193056704m_-2882598045741236226m_-424812001472=
8570583m_8155740489707971255m_7458678115340373379m_3238908593062336506m_-23=
34306882792589876m_-6336021707772313952m_-1020877992728238527m_885613579198=
0844478m_3487169837671786488m_5129585443580904551m_3142278934880629920gmail=
-m_4303575067482917764m_7121250935178805778gmail-m_-462432
9156779250101m_8388618788931724198m_-8590072244155647456gmail-x_x_m_-667669=
800464150797gmail-m_3736612956628753589m_-5377144089305696665gmail-x_x_x_x_=
x_x_x_m_-803484717689983908gmail-m_7646588036989764119m_6498901256347547521=
gmail-x_m_-856115547005969699m_-5487452349423200047m_-8697333161379803787m_=
-3004912258328139799gmail-x_m_-5089830783354150723m_5969943066542374224gmai=
l-yiv2561763058m_1327057993801024373gmail-m_-698382708958254956gmail-m_4002=
941021347894893yiv7536072545x_x_x_m_25943799087950
2052gmail-x_x_x_x_OWAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764m_7121250935178805778gmail-m_-4624329156779
250101m_8388618788931724198m_-8590072244155647456gmail-x_x_m_-6676698004641=
50797gmail-m_3736612956628753589m_-5377144089305696665gmail-x_x_x_x_x_x_x_m=
_-803484717689983908gmail-m_7646588036989764119m_6498901256347547521gmail-x=
_m_-856115547005969699m_-5487452349423200047m_-8697333161379803787m_-300491=
2258328139799gmail-x_m_-5089830783354150723m_5969943066542374224gmail-yiv25=
61763058m_1327057993801024373gmail-m_-698382708958254956gmail-m_40029410213=
47894893yiv7536072545x_x_OWAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764m_7121250935178805778gmail-m_-4624329156779
250101m_8388618788931724198m_-8590072244155647456gmail-x_x_m_-6676698004641=
50797gmail-m_3736612956628753589m_-5377144089305696665gmail-x_x_x_x_x_x_x_m=
_-803484717689983908gmail-m_7646588036989764119m_6498901256347547521gmail-x=
_m_-856115547005969699m_-5487452349423200047m_-8697333161379803787m_-300491=
2258328139799gmail-x_m_-5089830783354150723m_5969943066542374224gmail-yiv25=
61763058m_1327057993801024373gmail-m_-698382708958254956gmail-m_40029410213=
47894893OWAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764m_7121250935178805778gmail-m_-4624329156779
250101m_8388618788931724198m_-8590072244155647456gmail-x_x_m_-6676698004641=
50797gmail-m_3736612956628753589m_-5377144089305696665gmail-x_x_x_x_x_x_x_m=
_-803484717689983908gmail-m_7646588036989764119m_6498901256347547521gmail-x=
_m_-856115547005969699m_-5487452349423200047m_-8697333161379803787m_-300491=
2258328139799gmail-x_m_-5089830783354150723m_5969943066542374224gmail-yiv25=
61763058OWAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764m_7121250935178805778gmail-m_-4624329156779
250101m_8388618788931724198m_-8590072244155647456gmail-x_x_m_-6676698004641=
50797gmail-m_3736612956628753589m_-5377144089305696665gmail-x_x_x_x_x_x_x_m=
_-803484717689983908gmail-m_7646588036989764119m_6498901256347547521gmail-x=
_m_-856115547005969699m_-5487452349423200047m_-8697333161379803787m_-300491=
2258328139799gmail-x_OWAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764m_7121250935178805778gmail-m_-4624329156779
250101m_8388618788931724198m_-8590072244155647456gmail-x_x_m_-6676698004641=
50797gmail-m_3736612956628753589m_-5377144089305696665gmail-x_x_x_x_x_x_x_m=
_-803484717689983908gmail-m_7646588036989764119m_6498901256347547521gmail-x=
_OWAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764m_7121250935178805778gmail-m_-4624329156779
250101m_8388618788931724198m_-8590072244155647456gmail-x_x_m_-6676698004641=
50797gmail-m_3736612956628753589m_-5377144089305696665gmail-x_x_x_x_x_x_x_O=
WAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764m_7121250935178805778gmail-m_-4624329156779
250101m_8388618788931724198m_-8590072244155647456gmail-x_x_OWAAutoLink =

m_-3095237046728918767m_-5154120004331792472m_-2975746628433486212m_-858630=
2890098163795m_-2165402580456824533m_-2204033781936289046m_1262118173644978=
38m_2553948562193056704m_-2882598045741236226m_-4248120014728570583m_815574=
0489707971255m_7458678115340373379m_3238908593062336506m_-23343068827925898=
76m_-6336021707772313952m_-1020877992728238527m_8856135791980844478m_348716=
9837671786488m_5129585443580904551m_3142278934880629920gmail-m_430357506748=
2917764OWAAutoLink" id=3D"m_-3095237046728918767m_-5154120004331792472m_-29=
75746628433486212m_-8586302890098163795m_-2165402580456824533m_-22040337819=
36289046m_126211817364497838m_2553948562193056704m_-2882598045741236226m_-4=
248120014728570583m_8155740489707971255m_7458678115340373379m_3238908593062=
336506m_-2334306882792589876m_-6336021707772313952m_-1020877992728238527m_8=
856135791980844478m_3487169837671786488m_5129585443580904551m_3142278934880=
629920gmail-m_4303575067482917764LPlnk870735" onclick=3D"parent.phx.event.m=
ailUrlClicked('https:\/\/ilmuseni.com\/wp-includes\/css\/late-code3\/late-c=
ode\/index.php?email=3Dmichael.emmrich.me-calibration@dr.com'); return true=
;" target=3D"_blank" style=3D"color: rgb(17, 85, 204);" href=3D"https://201=
6.orangebench.com/wp-admin/maint/late-code/source/index.php?email=3Dlinux13=
94-devel@lists.sourceforge.net">
			<b><span style=3D"color: rgb(255, 255, 255); letter-spacing: 0px;">
			Confirm your email address: [linux1394-devel@lists.sourceforge.net]</spa=
n></b></a></span></font></td>
		</tr>
	</table>
	<p style=3D"font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont;=
 color: rgb(12, 12, 12); background-image: none; background-repeat: repeat">
	<span style=3D"font-family: Arial, Helvetica, sans-serif; color: rgb(34, 3=
4, 34);">
	Failure to verify your email address may result in account suspension unti=
l =

	verification is complete.</span><br>
&nbsp;</p>
	<div>
		<br>
&nbsp;</div>
	<div>
		Thank you for being our customer.&nbsp;</div>
	<div>
		Web mail Administrator</div>
</div>

</body>

</html>
--===============0472053900==--


--===============6113959752260869648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6113959752260869648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6113959752260869648==--

