Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4E4B39EE
	for <lists+linux1394-devel@lfdr.de>; Sun, 13 Feb 2022 08:26:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nJ9Go-0006T5-I3; Sun, 13 Feb 2022 07:26:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tabacchi@par.odn.ne.jp>) id 1nJ9Gm-0006Sy-OM
 for linux1394-devel@lists.sourceforge.net; Sun, 13 Feb 2022 07:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hABAjI1Sfg4AGmS+TLj+l3Ub4ro0V382uM3iB/Vl9d8=; b=eeNJNB1FCI24lgkuMmB8i3OIh5
 mycBd0yfBFZI98kagRCKxDaEt2loWyZ6gB7alWw+d4ATLQ+JJ73R9PCGQOG//B6D4N8WGvAlGEeB+
 iDz3PdPrgPkr5Mjwz22UrZfOAXAG0Db7vXLoWTByfbrCaMszVLO+j34xHleZfe6Us4jE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hABAjI1Sfg4AGmS+TLj+l3Ub4ro0V382uM3iB/Vl9d8=; b=T
 zaj6/JUAIpBQOWvwcMDzjA+ihBXq9f/J2BhBy4K9N+f7z4Yxy9LHVsL87PvbBD4QQZ3XLK3yFitGa
 8adN2I9kfua5r8v+zFem0BxJjIP876hBXczpRSHfwv+48CVYijH+7FlPV2RISui7Do/Oc1LglVa5w
 3vwpSzECf/VAjYcw=;
Received: from keteeva.com ([5.104.78.208] helo=mail.keteeva.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nJ9Gk-00026Q-C6
 for linux1394-devel@lists.sourceforge.net; Sun, 13 Feb 2022 07:26:02 +0000
Received: from par.odn.ne.jp (unknown [109.70.144.77])
 by mail.keteeva.com (Postfix) with ESMTPA id 2B7781A584D
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 13 Feb 2022 07:04:53 +0000 (UTC)
From: Moon Hwang <tabacchi@par.odn.ne.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Let me know what you think
Date: 13 Feb 2022 00:04:52 -0700
Message-ID: <20220213000452.8E96F6C917A7ABC0@par.odn.ne.jp>
MIME-Version: 1.0
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings,
 My name is Moon Hwang and I am a research assistant
 working with Amgen Laboratory. Amgen Inc is an American multinational
 biopharmaceutical
 company headquartered in Thousand Oaks, California. We are c [...] 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [5.104.78.208 listed in dnsbl-1.uceprotect.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [5.104.78.208 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1nJ9Gk-00026Q-C6
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
Reply-To: moon.hwang@amgenlaboratories.com
Content-Type: multipart/mixed; boundary="===============8280060960822365717=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============8280060960822365717==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">

<html><head>
<meta name=3D"GENERATOR" content=3D"MSHTML 11.00.10570.1001">
<meta http-equiv=3D"X-UA-Compatible" content=3D"IE=3Dedge">
</head>
<body>
<div class=3D"Ar Au Ao" id=3D":1qs" style=3D"display: block;">
<div tabindex=3D"1" class=3D"Am Al editable LW-avf tS-tW tS-tY" id=3D":1qo"=
 role=3D"textbox" style=3D"direction: ltr; min-height: 226px;" contentedita=
ble=3D"true" hidefocus=3D"" spellcheck=3D"false" aria-label=3D"Message Body=
" aria-multiline=3D"true" g_editable=3D"true">
<div dir=3D"ltr">
<div><font face=3D"tahoma, sans-serif">Greetings,</font></div>
<div><font face=3D"tahoma, sans-serif"><br></font></div>
<div><font face=3D"tahoma, sans-serif">
My name is Moon Hwang and I am a research assistant working with Amgen Labo=
ratory. Amgen Inc is an American multinational biopharmaceutical company he=
adquartered in Thousand Oaks, California. We are currently in search of a r=
eliable supplier for a business partnership in sourcing some of our basic r=
aw materials used in the manufacturing of anti-viral and niche medicines an=
d other life saving pharmaceutical and chemical produce. Amgen laboratory l=
ost their supplier to this raw material few=20
months ago to Covid19 and it's almost halting production in the company bec=
ause this raw material is a rare herbal extract which our company is yet to=
 locate a new supplier to buy from with good prices officially.</font></div=
>
<div><font face=3D"tahoma, sans-serif"><br></font></div>
<div><font face=3D"tahoma, sans-serif">
This is my PROPOSAL to you, I want you to stand in as a new manufacturer an=
d supplier. I will introduce you to the Amgen Laboratory Board as the suppl=
ier to this raw material. This will enable us to work together as partners =
and make real sizable profits. You, as the manufacturer, will supply to Amg=
en Laboratory at a good rate which I will tell you later.&nbsp; You will be=
 amazed with the total profit. I will give you more specific details when I=
 receive feedback from you regarding this=20
proposal.</font></div>
<div><font face=3D"tahoma, sans-serif"><br></font></div>
<div><font face=3D"tahoma, sans-serif">Thanks</font></div>
<div><font face=3D"tahoma, sans-serif"><br></font></div>
<div><font face=3D"tahoma, sans-serif">Moon Hwang,</font></div>
<div><font face=3D"tahoma, sans-serif">Research &amp; Dev Debt</font></div>=

<div><font face=3D"tahoma, sans-serif">Amgen Laboratory US</font></div>
<div><font face=3D"tahoma, sans-serif">One Amgen Center Drive</font></div>
<div><font face=3D"tahoma, sans-serif">Thousand Oaks, CA</font></div>
<div><font face=3D"tahoma, sans-serif">91320-1799</font></div></div></div><=
/div></body></html>


--===============8280060960822365717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8280060960822365717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8280060960822365717==--
