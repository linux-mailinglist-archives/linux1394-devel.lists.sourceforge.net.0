Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B27741CF350
	for <lists+linux1394-devel@lfdr.de>; Tue, 12 May 2020 13:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-Id:Date:MIME-Version:To:Subject:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lPnbsTkIcVt3LmEM24kLGiF+e/Xrj5UDH0gfmgM5wYo=; b=me0qsYXwNHcHVOpz4klZsfEWFp
	5tdLQLg8Za6qQa+0Cy5onZnf/KaHQ4g+izRTytCxYEALzSSG7dlXIt+6U1R0ac5jjdYlMtXesYRmI
	xIZNW32Ku6mYfYRXwARxnr/FiJV+MjYV/dLGP9zncky2nchinoMMe7tSpSG5BSpH/lio=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jYT6T-0005rv-LF; Tue, 12 May 2020 11:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zentara@zentara.net>) id 1jYT6T-0005rh-CB
 for linux1394-devel@lists.sourceforge.net; Tue, 12 May 2020 11:29:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wWK0IbedP14qYuyUK9Rl0VjzW8/EEiNOs1AV3Kkc6YU=; b=G/SWkqJiCQLKIzeZf0Gxb/WcTG
 08t8NznhwGpR1DO+Cp2qrSyCRBoq2+0bLRSqkAHF6rOFq7A/tpFpxM5lbwVta3WN1gvZXCSovWAx1
 9iwWlvpo3+uuFgZxnEK9Lrc3s24pUPCAtr4lcKb+4NK04/igRyx+lS1Ejm+TpEc0ToSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wWK0IbedP14qYuyUK9Rl0VjzW8/EEiNOs1AV3Kkc6YU=; b=U
 rkd9xtiRdZI2y1XG7Vv4VImWcW4Ohwna3iQ+3ahMoomZYB12ZO6xnJ8Y9ezOijE159muinI7sPkEi
 0y1DN231DAa9WWlJugshbCEaoko9F+hlCm4hExjw3RRB15+fiLg/Gt4/yGNrNJZL51aMK+NIuNloJ
 6FO7IHNH1tO7L+P8=;
Received: from www.caban.de ([217.86.214.57] helo=skul.lan)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jYT6S-00B0hk-7m
 for linux1394-devel@lists.sourceforge.net; Tue, 12 May 2020 11:29:41 +0000
Received: from WIN-J7GFDBAO51J (unknown [142.147.97.181])
 (Authenticated sender: dummy)
 by skul.lan (Postfix) with ESMTPSA id 52C9517AD82
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 12 May 2020 13:10:27 +0200 (CEST)
Subject: 5/12/2020 Hello
To: <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 12 May 2020 04:10:27 -0700
Message-Id: <12262020051004D552AF3C16$CBC50E6A6F@zentara.net>
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=zentara%40zentara.net; ip=217.86.214.57;
 r=util-malware-2.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1jYT6S-00B0hk-7m
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
From: Carl Johanson via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: president.ceo@amtaibio.com
Cc: Carl Johanson <zentara@zentara.net>
Content-Type: multipart/mixed; boundary="===============1128929011551344745=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format

--===============1128929011551344745==
Content-Type: multipart/alternative; boundary="KPvebrYW7D8=_PBHPTdQPlAjeIJYAcvTKR"

This is a multi-part message in MIME format

--KPvebrYW7D8=_PBHPTdQPlAjeIJYAcvTKR
Content-Type: text/plain; charset="windows-1255"
Content-Transfer-Encoding: quoted-printable


Hello linux1394-devel,

Do you have a moment to correspond with me via email. My boss
have an obligation he would like you to complete ASAP.

Email him back at (=20

presidentmdceo@aol.com mailto:presidentmdceo@aol.com

)

Regards,

Carl Johanson
Biotech=20
Executive Assistant

--KPvebrYW7D8=_PBHPTdQPlAjeIJYAcvTKR
Content-Type: text/html; charset="windows-1255"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwind=
ows-1255">
  <META name=3Dviewport content=3D"width=3Ddevice-width, initial-scale=
=3D1"> <META name=3Dformat-detection content=3Dtelephone=3Dno> <title>=
5/12/2020 Hello</title>
 </head>
 <body style=3D"BACKGROUND-COLOR: #ffffff" bgColor=3D#ffffff> <P>Hello=
 linux1394-devel,</p><p>Do you have a moment to correspond with me via=
 email. My boss<BR>&nbsp;have an obligation he&nbsp; would like you to=
 complete ASAP.</p><p>Email him back at ( <A href=3D"mailto:presidentm=
dceo@aol.com">presidentmdceo@aol.com</A> <SPAN class=3Dadr>&nbsp;</SPA=
N>)</p><p>Regards,</p><p><STRONG>Carl Johanson</STRONG><BR>Biotech <BR=
>Executive Assistant<BR></P></body>
 </html>

--KPvebrYW7D8=_PBHPTdQPlAjeIJYAcvTKR--



--===============1128929011551344745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1128929011551344745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1128929011551344745==--


