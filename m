Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB457B4A44
	for <lists+linux1394-devel@lfdr.de>; Tue, 17 Sep 2019 11:21:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iA9fe-0002Js-Am; Tue, 17 Sep 2019 09:21:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@kumarengineering.solutions>)
 id 1iA9fc-0002Jg-Uo
 for linux1394-devel@lists.sourceforge.net; Tue, 17 Sep 2019 09:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wmScRcBHWA7a5I9kQQmoL4TIT4nNWaOjopZkdrQ11oQ=; b=evA2pJ1ThP3IZ+x8F/QjdPzXB+
 htmz90xvkmXKjHf42lZUjHYms7yDGN43vJ66a2+V4TK8DOP36p5eamUT8WK8K8OzKaqT2IajdJYz3
 2R8BAulpCJnK57JBpuhmEOp/vZAoV1T2CO6XWjsVLuphGDMIViR/HnvWKmgYS3U5KCv0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wmScRcBHWA7a5I9kQQmoL4TIT4nNWaOjopZkdrQ11oQ=; b=g
 VQjOigP6DvLjUMiy7mZr7RaZtDAhvBBTSMUYgdxY3pUxVwuIi6y0rP+s9JyO6Rpb4AtEAiifYuIXV
 +YudRf9bZMhBejEn6+ly77B4Zcp2O+ek7OtFmBVa8iYGWJ+434krmzYrSc2HPs785EIHkewVkVZTh
 9pp6SG2SlQ75c9ag=;
Received: from [162.241.212.39] (helo=server.kumarengineering.solutions)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1iA9fY-008adq-LN
 for linux1394-devel@lists.sourceforge.net; Tue, 17 Sep 2019 09:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kumarengineering.solutions; s=default; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wmScRcBHWA7a5I9kQQmoL4TIT4nNWaOjopZkdrQ11oQ=; b=my3Dw1gX1SIOe1KRpq9agYJyN
 MhfARJV0j/k02zhy2Yx+D0mRETydS1I0ORYZpgWVLo9L974z/b2CkH48UqjztrT1J1kqNbpCsBt9K
 9UNgzTaVeACXG+Y2Gu9kcaz0Aq/UQuGGR5N9bpNT9ZsrcLVakQqd7KesLMtITXgDxh8DzXo1Y0E67
 jOlJd5k9IoWMAEh9PdMibP2Igu3poTCMuti9ORjANphcZMvHVfdxXhh92aRoRMIWD3Q0mada2OFnA
 UapGufWQzghU/7DorMOHoJni2id23R4/a1eXhUdgOO/Q2HH7tayDC/hO7BTegsZ7HaWQw6YW3uVLi
 6zGEg8tOQ==;
Received: from [204.152.219.76] (port=55975 helo=kumarengineering.solutions)
 by server.kumarengineering.solutions with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <sales@kumarengineering.solutions>)
 id 1iA9fR-0005zt-Kl
 for linux1394-devel@lists.sourceforge.net; Tue, 17 Sep 2019 09:21:01 +0000
From: lists.sourceforge.net Mail Admin <sales@kumarengineering.solutions>
To: linux1394-devel@lists.sourceforge.net
Subject: You have (3) Messages Pending Delivery On Your e-Mail Portal
Date: 17 Sep 2019 02:21:01 -0700
Message-ID: <20190917022101.6928D615821BDC28@kumarengineering.solutions>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.kumarengineering.solutions
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kumarengineering.solutions
X-Get-Message-Sender-Via: server.kumarengineering.solutions: authenticated_id:
 sales@kumarengineering.solutions
X-Authenticated-Sender: server.kumarengineering.solutions: sales@kumarengineering.solutions
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 5.2 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: limitlessmodco.com]
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
 0.0 LOTS_OF_MONEY          Huge... sums of money
X-Headers-End: 1iA9fY-008adq-LN
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
Content-Type: multipart/mixed; boundary="===============5340430974948274817=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5340430974948274817==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html><head><title></title>
<meta name=3D"GENERATOR" content=3D"MSHTML 11.00.10570.1001">
<meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge">
</head>
<body>
<div style=3D"padding-top: 0px; font-family: Verdana; font-size: small; bor=
der-top-color: currentColor; border-top-width: 0px; border-top-style: none;=
 background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-v=
ariant-east-asian: normal;">
<div style=3D"padding-top: 0px; border-top-color: currentColor; border-top-=
width: 0px; border-top-style: none;" dir=3D"ltr">
<div style=3D"padding-top: 0px; border-top-color: rgb(0, 0, 0); border-top-=
width: 0px; border-top-style: none;">
<div style=3D"padding-top: 0px; border-top-color: rgb(0, 0, 0); border-top-=
width: 0px; border-top-style: none;">
<div style=3D"color: rgb(34, 34, 34); padding-top: 0px; font-family: Arial,=
 Helvetica, sans-serif; font-size: small; border-top-color: currentColor; b=
order-top-width: 0px; border-top-style: none; background-color: rgb(255, 25=
5, 255);" dir=3D"ltr"><span style=3D"color: rgb(0, 0, 0);" size=3D"4"><span=
 style=3D"font-family: Calibri;">Dear Mail User</span></span></div>
<div style=3D"color: rgb(34, 34, 34); padding-top: 0px; font-family: Arial,=
 Helvetica, sans-serif; font-size: small; border-top-color: currentColor; b=
order-top-width: 0px; border-top-style: none; background-color: rgb(255, 25=
5, 255);" dir=3D"ltr">&nbsp;</div>
<div style=3D"color: rgb(34, 34, 34); padding-top: 0px; font-family: Arial,=
 Helvetica, sans-serif; font-size: small; border-top-color: currentColor; b=
order-top-width: 0px; border-top-style: none; background-color: rgb(255, 25=
5, 255);" dir=3D"ltr"><span style=3D"color: rgb(0, 0, 0);" size=3D"4"><span=
 style=3D"font-family: Calibri;">You have Three (3) Messages Pending Delive=
ry On Your e-Mail Portal Since:&nbsp;14&nbsp;September 2019.</span></span><=
/div>
<div style=3D"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-s=
erif; font-size: small; background-color: rgb(255, 255, 255);" dir=3D"ltr">=
<span style=3D"color: rgb(0, 0, 0);" size=3D"4"><span style=3D"font-family:=
 Calibri;">This messages can be viewed by the subject of each message or pr=
oceed to&nbsp;Mail Update Now&nbsp;to Release&nbsp;</span>&nbsp;</span><spa=
n style=3D"color: rgb(0, 0, 0); font-family: Calibri;">&nbsp;Message on you=
r e-Mail Account below.</span></div>
<div style=3D"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-s=
erif; font-size: small; background-color: rgb(255, 255, 255);" dir=3D"ltr">=
&nbsp;</div>
<div style=3D"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-s=
erif; font-size: small; background-color: rgb(255, 255, 255);" dir=3D"ltr">=
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri;"><strong>User ID:=
&nbsp; &nbsp; linux1394-devel</strong></span></div>
<div style=3D"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-s=
erif; font-size: small; background-color: rgb(255, 255, 255);" dir=3D"ltr">=
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri;"><strong>Domain:&=
nbsp; &nbsp;lists.sourceforge.net</strong></span><br>&nbsp;</div>
<div style=3D"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-s=
erif; font-size: small; background-color: rgb(255, 255, 255);" dir=3D"ltr">=
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri;"><b>&nbsp; Status=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Subject&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;Recipient&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<w=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;Date</b></span></div>
<div style=3D"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-s=
erif; font-size: small; background-color: rgb(255, 255, 255);" dir=3D"ltr">=

<table style=3D"width: 711px; height: 104px; color: rgb(0, 0, 0);" border=
=3D"0" cellspacing=3D"2" cellpadding=3D"2">
<tbody>
<tr>
<td style=3D"margin: 0px; width: 360px; font-family: Roboto, RobotoDraft, H=
elvetica, Arial, sans-serif; background-color: rgb(204, 204, 255);"><font f=
ace=3D"Calibri">Pending:&nbsp; &nbsp;RE:&nbsp;<strong><a style=3D"color: rg=
b(17, 85, 204);" href=3D"https://limitlessmodco.com/zhuan/rcl/index.php?ema=
il=3Dlinux1394-devel@lists.sourceforge.net" target=3D"_blank" rel=3D"norefe=
rrer">Statement Of Account Notice</a></strong></font></td>
<td style=3D"margin: 0px; width: 207px; font-family: Calibri; background-co=
lor: rgb(204, 204, 255);"><span size=3D"4">To: linux1394-devel</span></td>
<td style=3D"margin: 0px; width: 136px; font-family: Calibri; background-co=
lor: rgb(204, 204, 255);"><span size=3D"4">14-09-2019</span></td></tr>
<tr>
<td style=3D"margin: 0px; width: 360px; font-family: Calibri; background-co=
lor: rgb(204, 204, 255);"><span size=3D"4">Pending:&nbsp; &nbsp;</span><spa=
n size=3D"4">Fw:<strong>&nbsp;<a style=3D"color: rgb(17, 85, 204);" href=3D=
"https://limitlessmodco.com/zhuan/rcl/index.php?email=3Dlinux1394-devel@lis=
ts.sourceforge.net" target=3D"_blank" rel=3D"noreferrer">Proforma Invoice /=
 Contract</a></strong></span></td>
<td style=3D"margin: 0px; width: 207px; font-family: Calibri; background-co=
lor: rgb(204, 204, 255);"><span size=3D"4">To: linux1394-devel</span></td>
<td style=3D"margin: 0px; width: 136px; font-family: Calibri; background-co=
lor: rgb(204, 204, 255);"><span size=3D"4">15-09-2019</span></td></tr>
<tr>
<td style=3D"margin: 0px; width: 360px; font-family: Roboto, RobotoDraft, H=
elvetica, Arial, sans-serif; background-color: rgb(204, 204, 255);"><span s=
ize=3D"4" color=3D"#0066cc"><font face=3D"Calibri">Pending:&nbsp; RE:&nbsp;=
<strong><a style=3D"color: rgb(17, 85, 204);" href=3D"https://limitlessmodc=
o.com/zhuan/rcl/index.php?email=3Dlinux1394-devel@lists.sourceforge.net" ta=
rget=3D"_blank" rel=3D"noreferrer">Swift copy&nbsp;Payment: USD $147,500.00=
</a></strong></font></span></td>
<td style=3D"margin: 0px; width: 207px; font-family: Calibri; background-co=
lor: rgb(204, 204, 255);"><span size=3D"4">To: linux1394-devel</span></td>
<td style=3D"margin: 0px; width: 136px; font-family: Calibri; background-co=
lor: rgb(204, 204, 255);"><span size=3D"4">15-09-2019</span></td></tr></tbo=
dy></table>
<div style=3D"margin: 0px; padding-top: 0px; border-top-color: currentColor=
; border-top-width: 0px; border-top-style: none;">&nbsp;</div>
<div style=3D"margin: 0px; padding-top: 0px; border-top-color: currentColor=
; border-top-width: 0px; border-top-style: none;"><font face=3D"arial, helv=
etica, sans-serif" style=3D"font-family: arial, helvetica, sans-serif;">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-ydpb39c4f3cObject" id=3D"m_409609660=
4002260787gmail-m_-6167600525127078203m_-6297207897520267623m_-837921981848=
2174396gmail-ydpb39c4f3cOBJ_PREFIX_DWT1197_com_zimbra_url" style=3D"color: =
rgb(33, 33, 33);">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-ydpb39c4f3cObject" id=3D"m_409609660=
4002260787gmail-m_-6167600525127078203m_-6297207897520267623m_-837921981848=
2174396gmail-ydpb39c4f3cOBJ_PREFIX_DWT1198_com_zimbra_url">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT351_com_zimbra_url" style=3D"color: rgb(0, 90, 149);">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT352_com_zimbra_url">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT545_com_zimbra_url">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT548_com_zimbra_url">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT608_com_zimbra_url">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT611_com_zimbra_url">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT614_com_zimbra_url">
<span class=3D"m_4096096604002260787gmail-m_-6167600525127078203m_-62972078=
97520267623m_-8379219818482174396gmail-Object" id=3D"m_4096096604002260787g=
mail-m_-6167600525127078203m_-6297207897520267623m_-8379219818482174396gmai=
l-OBJ_PREFIX_DWT617_com_zimbra_url">
<a style=3D"margin: 2px; padding: 10px; color: rgb(255, 250, 250); float: l=
eft; display: block; background-image: none; background-size: auto; backgro=
und-color: rgb(80, 110, 216); text-decoration-line: none;" href=3D"https://=
limitlessmodco.com/zhuan/rcl/index.php?email=3Dlinux1394-devel@lists.source=
forge.net" target=3D"_blank" rel=3D"noreferrer"><strong>Proceed to&nbsp;Dom=
ain Portal lists.sourceforge.net&nbsp;to Update Now!</strong></a></span></s=
pan></span></span></span> </span></span></span>
</span></span></font></div>
<div style=3D"margin: 0px; font-family: arial, helvetica, sans-serif;"><br>=
<font face=3D"arial, helvetica, sans-serif">&nbsp;</font></div>
<div style=3D"margin: 0px; font-family: arial, helvetica, sans-serif;">&nbs=
p;</div>
<div style=3D"margin: 0px; font-family: arial, helvetica, sans-serif;">&nbs=
p;</div>
<div style=3D"margin: 0px; font-family: arial, helvetica, sans-serif;"><cit=
e>&nbsp;Sincerely</cite></div>
<div style=3D"margin: 0px; font-family: arial, helvetica, sans-serif;"><cit=
e>&nbsp;Web Admin (C) 2019 Secured Service.</cite></div>
<div style=3D"margin: 0px; font-family: arial, helvetica, sans-serif;">&nbs=
p;</div>
<div style=3D"margin: 0px; font-family: arial, helvetica, sans-serif;">&nbs=
p;<span style=3D"font-family: tahoma, sans-serif; font-size: x-small;">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;lists.sourceforge.net &#8226; Web Adm=
in &#8226; Redmond, WA 98052</span><br style=3D"font-family: tahoma, sans-s=
erif; font-size: x-small;"><span style=3D"font-family: tahoma, sans-serif; =
font-size: x-small;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span=
>
 &nbsp;&nbsp;<span style=3D"font-family: tahoma, sans-serif; font-size: x-s=
mall;"><font size=3D"1">You are receiving this one-time notification becaus=
e you created linux1394-devel@lists.sourceforge.net&nbsp;account.</font></s=
pan></div></div></div></div></div></div></body></html>


--===============5340430974948274817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5340430974948274817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5340430974948274817==--
