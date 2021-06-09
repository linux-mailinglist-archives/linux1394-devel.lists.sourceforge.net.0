Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E9A3A0D7D
	for <lists+linux1394-devel@lfdr.de>; Wed,  9 Jun 2021 09:16:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lqsRR-00080u-6Z; Wed, 09 Jun 2021 07:15:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jak@aries-me.com>) id 1lqsRP-00080j-LY
 for linux1394-devel@lists.sourceforge.net; Wed, 09 Jun 2021 07:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 MIME-Version:Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GnCa2Xxx8PR097BqoEg831R59tsLKx2nq8tgECenD7Y=; b=aS3pxrpDrC9Rp+7Z22/dK6F05X
 lvqpDzcSYsza3yUMV0TGURlItXC312xj6b61qXwB6Bvg+H4/aXZ/Xl/1/nn2UbPe0jXr+1TS4TPkj
 Wzv14tvY0WZzWMRUg5qqQe6vP3ctvvSYiStw/E50aCesrjYldsy6btznxOfg2bdGQH7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GnCa2Xxx8PR097BqoEg831R59tsLKx2nq8tgECenD7Y=; b=i
 asqxsyrPGue0NWEvp+ERjzCN7k42B1VcsroSaYcF+kwUsGaspNWh8RabfBX0lFjKmmzvwRWGkGogQ
 kw8ZxaCTWJUSZgCDLDSOGMg94pRMd13p58uURC68fZ+sohyw8ts6SSp2PrUJFtVfjSdeAx9VRiXtw
 kS/2dUaYqx5oLTmw=;
Received: from mxinig.ng.managedbiz.com ([45.118.181.118]
 helo=email.india-garage.in)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.3) id 1lqsRD-0000mZ-9Q
 for linux1394-devel@lists.sourceforge.net; Wed, 09 Jun 2021 07:15:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by email.india-garage.in (Postfix) with ESMTP id B29A8122DC973
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  9 Jun 2021 12:25:31 +0530 (IST)
Received: from email.india-garage.in ([127.0.0.1])
 by localhost (email.india-garage.in [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id OF2xD4YsuokF
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  9 Jun 2021 12:25:31 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
 by email.india-garage.in (Postfix) with ESMTP id 84463122CAEB8
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  9 Jun 2021 12:25:31 +0530 (IST)
X-Virus-Scanned: amavisd-new at email.india-garage.in
Received: from email.india-garage.in ([127.0.0.1])
 by localhost (email.india-garage.in [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XC4klaLYnktY
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  9 Jun 2021 12:25:31 +0530 (IST)
Received: from [51.89.205.217] (ip217.ip-51-89-205.eu [51.89.205.217])
 by email.india-garage.in (Postfix) with ESMTPA id 264E7122CAEB0
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  9 Jun 2021 12:25:31 +0530 (IST)
MIME-Version: 1.0
Subject: RE:Company Product Inquiry
To: linux1394-devel@lists.sourceforge.net
From: jak@aries-me.com
Date: Tue, 08 Jun 2021 23:55:30 -0700
Message-Id: <20210609065531.264E7122CAEB0@email.india-garage.in>
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [45.118.181.118 listed in wl.mailspike.net]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [45.118.181.118 listed in bl.score.senderscore.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1lqsRD-0000mZ-9Q
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
Reply-To: panikos.giovani@aol.com
Content-Type: multipart/mixed; boundary="===============7026910082606227424=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

You will not see this in a MIME-aware mail reader.
--===============7026910082606227424==
Content-Type: multipart/alternative; boundary="===============0463988619=="

You will not see this in a MIME-aware mail reader.
--===============0463988619==
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body

  Hello     This is our company inquiry     Kindly send us the best price C=
IF AND FOB for this product we found in your website, then you have  to be =
specific on the model you produce.     and also provide us the following in=
formation as well     "TT advance + before shipment " provide us your payme=
nt terms.     Should you have any questions, pls do not hesitate to contact=
 me via     email  =

   =

     Cedar Hill Farm in Amenia, NY
  Cedar Hill Farm is run by Panikos Giovani.176 Leedsville Rd
  Amenia, NY
  104 miles from Providence, 02909
  (841) 372-9462 (869) 805-3813
  panikos.giovani@yahoo.com
  panikos.giovani@aol.com

--===============0463988619==
Content-Type: text/html; charset="iso-8859-1"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body

<HTML><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Diso-8859-1"/></head><BODY><DIV style=3D"FONT-SIZE: 12px; FONT-FAMILY: Ar=
ial, Helvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TR=
ANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORP=
HANS: 2; WIDOWS: 2; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,2=
55); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: n=
ormal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial"><SPAN style=
=3D"FONT-SIZE: 10pt; FONT-FAMILY: sans-serif">
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">Hello</SPAN></DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif"></SPAN>&nbsp;</DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">This is our company inquiry</SPAN></DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif"></SPAN>&nbsp;</DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">Kindly send us the best price CIF AND FOB for this produc=
t we found in your website, then you have</SPAN></DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">to be specific on the model you produce.</SPAN></DIV></DI=
V>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif"></SPAN>&nbsp;</DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">and also provide us the following information as well</SP=
AN></DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif"></SPAN>&nbsp;</DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">"TT advance + before shipment " provide us your payment t=
erms.</SPAN></DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif"></SPAN>&nbsp;</DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">Should you have any questions, pls do not hesitate to con=
tact me via</SPAN></DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif"></SPAN>&nbsp;</DIV></DIV>
<DIV style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV class=3Dyiv1610780789MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FA=
MILY: sans-serif">email</SPAN></DIV></DIV></SPAN></DIV>
<DIV style=3D"FONT-SIZE: 12px; FONT-FAMILY: Arial, Helvetica, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: sans-serif"></SPAN></P></DIV>
<DIV style=3D"FONT-SIZE: 12px; FONT-FAMILY: Arial, Helvetica, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: sans-serif"></SPAN>&nbsp;</P></DIV>
<DIV style=3D"FONT-SIZE: 12px; FONT-FAMILY: Arial, Helvetica, sans-serif; W=
HITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 4=
00; COLOR: rgb(0,0,0); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SP=
ACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-v=
ariant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-wi=
dth: 0px; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial">
<DIV>
<DIV>
<DIV>
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: serif; COLOR: cornflowerblue">Cedar Hill Farm in Amenia, NY</SPAN></P><=
/DIV>
<DIV>
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: serif; COLOR: cornflowerblue">Cedar Hill Farm is run by Panikos Giovani=
.176 Leedsville Rd</SPAN></P></DIV>
<DIV>
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: serif; COLOR: cornflowerblue">Amenia, NY</SPAN></P></DIV>
<DIV>
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: serif; COLOR: cornflowerblue">104 miles from Providence, 02909</SPAN></=
P></DIV>
<DIV>
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: serif; COLOR: cornflowerblue">(841) 372-9462 (869) 805-3813</SPAN></P><=
/DIV>
<DIV>
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: serif; COLOR: cornflowerblue"><A style=3D"CURSOR: pointer; TEXT-DECORAT=
ION: underline; COLOR: rgb(5,99,193)" href=3D"mailto:panikos.giovani@yahoo.=
com" shape=3Drect rel=3D"nofollow noopener noreferrer" target=3D_blank ymai=
lto=3D"mailto:panikos.giovani@yahoo.com">panikos.giovani@yahoo.com</A></SPA=
N></P></DIV>
<DIV>
<P class=3Dyiv5013502831MsoNormal><SPAN style=3D"FONT-SIZE: 10pt; FONT-FAMI=
LY: serif; COLOR: cornflowerblue"><A style=3D"CURSOR: pointer; TEXT-DECORAT=
ION: underline; COLOR: rgb(5,99,193)" shape=3Drect rel=3D"nofollow noopener=
 noreferrer" target=3D_blank ymailto=3D"mailto:panikos.giovani@aol.com">pan=
ikos.giovani@aol.com</A></SPAN></P></DIV></DIV></DIV></DIV></BODY></HTML>
--===============0463988619==--


--===============7026910082606227424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7026910082606227424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7026910082606227424==--

