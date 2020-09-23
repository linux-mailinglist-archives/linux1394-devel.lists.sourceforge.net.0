Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5B727524D
	for <lists+linux1394-devel@lfdr.de>; Wed, 23 Sep 2020 09:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dxMd4YUIneAuYiXPiytLVVGcWROJAuXKJxqktLK2F6g=; b=D8xe1p2rkpaLtokeovH8J7IjXh
	U6QVgna/lFSp6KRsbK3EvOadv1bqUlILPsz4FgvH+PeV1NWV5VpS+Z0FSc1C9FY4+n4phS81sPTNT
	yB69+Fpx6UF3lC+v1V5rXKttqSoYH3bcnFSdg2LrIJWMygCtyQb1aGLYfHA+AJ+PAsZs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kKzEL-0001i4-21; Wed, 23 Sep 2020 07:30:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <packet-express@dhl.com>) id 1kKzEJ-0001hx-IN
 for linux1394-devel@lists.sourceforge.net; Wed, 23 Sep 2020 07:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HP/LYdv6ouPfHQKAfelq7Bh6gD3ANcUfKMZ3MDdb48M=; b=hgl919O1U3L58gMnn2gVyqkQ3h
 C9pqbirGG4VkhX8RZRlZflusni6XBoiP6v4LGVr9YexK+ZIrq9JWgGqrTQ/7ffiEhTBp6b2Fz7Yfx
 V/lRWWJDRrmSFjlGa7QtqGeor0iVjZ7eyPwc8Ts7N15tIOV4OjEvMEHKSngFAGgrObZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HP/LYdv6ouPfHQKAfelq7Bh6gD3ANcUfKMZ3MDdb48M=; b=i
 0z+ACe4vTumfZWGC9QeVZFgGhVzwClC/n0qj02VYM6uxVBAqAYW9BuGlUQhbDEhKhHQpMW47krOP5
 rUxj9FktR3V7z3f3TTf0KsgHcJW9sVfkwGNPv+wju7Lki8LTkVnxl1B3BSzMa6Pr5teKd3SJQQqUy
 G9ajswt9zTyt+sKs=;
Received: from [179.43.144.143] (helo=dhl.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kKzE3-0029Or-UV
 for linux1394-devel@lists.sourceforge.net; Wed, 23 Sep 2020 07:30:19 +0000
To: linux1394-devel@lists.sourceforge.net
Subject: =?UTF-8?B?4pyIIFNoaXBtZW50IEV4cHJlc3MgfCBESEwgfCA5NDY3OTU3OTUw?=
Date: 23 Sep 2020 00:29:57 -0700
Message-ID: <20200923002957.9E87B280E833C83E@dhl.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kKzE3-0029Or-UV
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
From: packet-express--- via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: packet-express@dhl.com
Content-Type: multipart/mixed; boundary="===============3767848179666594454=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============3767848179666594454==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_DDC6188E.081AD02E"


------=_NextPart_000_0012_DDC6188E.081AD02E
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

linux1394-devel@lists.sourceforge.netEnter your tracking number=20
to track and pay

------=_NextPart_000_0012_DDC6188E.081AD02E
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.17037"></HEAD>
<BODY style=3D"MARGIN: 0.5em">
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; WHI=
TE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: nor=
mal; COLOR: rgb(102,102,102); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LE=
TTER-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px"=
><IMG border=3D0 hspace=3D0 alt=3D"" src=3D"https://www.dhl.com/img/meta/dh=
l_logo.gif" align=3Dbaseline><BR><BR><FONT color=3D#000000>Dear Customer,</=
FONT></P>
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; WHI=
TE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: nor=
mal; COLOR: rgb(102,102,102); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LE=
TTER-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px"=
><FONT color=3D#000000>Your package has been returned to the&nbsp;DHL Offic=
e.<BR>The reason for the return is - payment of shipping costs.<BR>
Your shipment cost has not yet been paid, so you will be charged for the ha=
ndling cost of $ 4.65 (USD)<BR>You have a 48-hour period to recover your pa=
rcel, or it will be returned to the sender.</FONT><BR></P>
<P style=3D"FONT-SIZE: 13px; FONT-FAMILY: Helvetica, Arial, sans-serif; WHI=
TE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: nor=
mal; COLOR: rgb(102,102,102); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LE=
TTER-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px"=
>
<BR style=3D"FONT-SIZE: 11px; FONT-FAMILY: arial, sans-serif; WHITE-SPACE: =
normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: normal; COLOR=
: rgb(34,34,34); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING:=
 normal; LINE-HEIGHT: 15px; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT=
: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text=
-decoration-color: initial; font-variant-ligatures: normal; font-variant-ca=
ps: normal"><A href=3D"http://bit.do/fJJcD">
<FONT size=3D2>Click here to view the status of your order<BR>dhl.com/apps/=
dhltrack/?linux1394-devel@lists.sourceforge.net=3D9467957950</FONT></A>
 <FONT style=3D"FONT-FAMILY: arial, sans-serif; WHITE-SPACE: normal; WORD-S=
PACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(34,34,34); =
FONT-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; BACKGROU=
ND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; -webkit-text-stroke-width: 0p=
x; text-decoration-style: initial; text-decoration-color: initial; font-var=
iant-ligatures: normal; font-variant-caps: normal" size=3D3><SPAN><BR><BR><=
BR></SPAN></FONT><U>
Support Team&nbsp;DHL<BR style=3D"FONT-SIZE: 12px; FONT-FAMILY: arial, sans=
-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-=
WEIGHT: 400; COLOR: rgb(34,34,34); FONT-STYLE: normal; ORPHANS: 2; WIDOWS: =
2; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT:=
 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-=
decoration-color: initial; font-variant-ligatures: normal; font-variant-cap=
s: normal"></U></P>
<H2 id=3Dx_x_x_x_ecxyui_3_16_0_1_1421937263738_21639 style=3D"WHITE-SPACE: =
normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; COLOR: rgb(51,51,51); PADD=
ING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 15px/21px Verdana, Arial; PADDING-=
LEFT: 0px; MARGIN: 0px 0px 10px; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: nor=
mal; PADDING-RIGHT: 0px; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0=
px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-de=
coration-color: initial">
<DIV id=3Dx_x_x_x_ecxyiv1580565887ecxyiv7647241407ecxyiv2560135160yui_3_16_=
0_1_1401807633682_59620 style=3D"FONT-SIZE: 11px; FONT-FAMILY: arial, sans-=
serif, serif, EmojiFont; FONT-WEIGHT: normal; PADDING-TOP: 0px; LINE-HEIGHT=
: 15px; BORDER-TOP-WIDTH: 0px">
<DIV id=3Dx_x_x_x_ecxyiv1580565887ecxyiv7647241407ecxyiv2560135160yui_3_16_=
0_1_1401807633682_59619 style=3D"PADDING-TOP: 0px; LINE-HEIGHT: 15px; BORDE=
R-TOP-WIDTH: 0px">
<DIV id=3Dx_x_x_x_ecxyiv1580565887ecxyiv7647241407ecxyiv2560135160yui_3_16_=
0_1_1401807633682_59619 style=3D"PADDING-TOP: 0px; LINE-HEIGHT: 15px; BORDE=
R-TOP-WIDTH: 0px">
<DIV id=3Dx_x_x_x_ecxyiv1580565887ecxyiv7647241407ecxyui_3_16_0_1_140215707=
5943_8702 style=3D"FONT-FAMILY: Calibri, sans-serif, serif, EmojiFont; COLO=
R: rgb(68,68,68); PADDING-TOP: 0px; LINE-HEIGHT: 21px; BORDER-TOP-WIDTH: 0p=
x"><SPAN style=3D"FONT-SIZE: small; LINE-HEIGHT: 18px"><FONT style=3D"LINE-=
HEIGHT: normal" size=3D3>
<DIV id=3Dx_x_x_x_ecxyiv1580565887ecxyiv7647241407ecxyui_3_16_0_1_140215707=
5943_8702 style=3D"FONT-FAMILY: Calibri, sans-serif, serif, EmojiFont; COLO=
R: rgb(68,68,68); PADDING-TOP: 0px; LINE-HEIGHT: 21px; BORDER-TOP-WIDTH: 0p=
x"></FONT></SPAN><BR>&nbsp;</DIV></DIV></DIV></DIV></DIV></H2></BODY></HTML=
>
------=_NextPart_000_0012_DDC6188E.081AD02E--



--===============3767848179666594454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3767848179666594454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3767848179666594454==--


