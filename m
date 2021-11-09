Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B6F44B059
	for <lists+linux1394-devel@lfdr.de>; Tue,  9 Nov 2021 16:29:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mkT3e-0000F8-CW; Tue, 09 Nov 2021 15:29:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <noreply@wetransfer.com>) id 1mkT3d-0000F1-91
 for linux1394-devel@lists.sourceforge.net; Tue, 09 Nov 2021 15:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e8Ooyuo4TD9CnBwd1QXOgiIEY8vdA6oOv/jfmSxjWS4=; b=ikbmGsu/VWg1E1WkraHJJo5wpI
 Gk2M1GHqEPBcY5jwmFEp+vrXUBev8xg+tN5MJMKynd2Kmg50fCaCXp21QGxuQkA9FIV5gyTqP+Ez3
 whYueKs9HQB3Wk+lSF3+yFoI4zCAeEQEfGdDl4oE6Eeo+E+Ufu4cgZG2uGL19RKcw2ds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=e8Ooyuo4TD9CnBwd1QXOgiIEY8vdA6oOv/jfmSxjWS4=; b=h
 wKHl2eeZQrqyLPCc2zmmak26K+/pCbPlCrLr8If/XjTz4cHN4gpj08infFDXisYBe8jfcqmGlQssD
 2Ah1ZdICZMv2wYXEp4o5HhoFkDBsFwnlr/Ddq6G8lGrwt6n5vnuf3GKmBA4OAQFwwL92FxvsW447C
 zzxKJACcW4hyQdP8=;
Received: from [165.232.185.163] (helo=bizcloud-server.smtp-mail.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mkT3c-007QUE-0y
 for linux1394-devel@lists.sourceforge.net; Tue, 09 Nov 2021 15:29:09 +0000
Received: from wetransfer.com (bizcloud-server.smtp-mail.outlook.com
 [IPv6:::1])
 by bizcloud-server.smtp-mail.outlook.com (Postfix) with ESMTP id 764EB459BE4
 for <linux1394-devel@lists.sourceforge.net>;
 Tue,  9 Nov 2021 14:39:46 +0000 (UTC)
To: linux1394-devel@lists.sourceforge.net
Subject: linux1394-devel@lists.sourceforge.net you receive some files-91226691
Date: 09 Nov 2021 15:39:44 +0100
Message-ID: <20211109153944.0038A634B3B22388@wetransfer.com>
MIME-Version: 1.0
X-Spam-Score: 4.6 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This transfer expires on 2021-06-19 linux1394-devel@lists.sourceforge.net
    you receive some files 2 item, 2.84 MB in total ・ Expires on 12th November,
    2021 Get your files Download link https//wetran [...] 
 
 Content analysis details:   (4.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;id=noreply%40wetransfer.com;ip=165.232.185.163;r=util-spamd-1.v13.lw.sourceforge.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
  1.5 HTML_FONT_TINY_NORDNS  Font too small to read, no rDNS
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.8 PDS_HP_HELO_NORDNS     High profile HELO with no sender rDNS
X-Headers-End: 1mkT3c-007QUE-0y
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
From: WeTransfer via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: WeTransfer <sales06@altests.com>
Cc: WeTransfer <noreply@wetransfer.com>
Content-Type: multipart/mixed; boundary="===============5982456356733778298=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5982456356733778298==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<STYLE>
=2Ef1{TEXT-DECORATION: underline; FONT-WEIGHT: normal; COLOR: #797c7f}
=2Et1{FONT-SIZE: 14px; FONT-FAMILY: fakt pro , segoe ui , sanfrancisco disp=
lay , arial , sans-serif; WIDTH: 100%; WORD-SPACING: 0px; WORD-BREAK: break=
-all; FONT-WEIGHT: normal; COLOR: #797c7f; PADDING-BOTTOM: 0px; FONT-STYLE:=
 normal; PADDING-TOP: 50px; PADDING-LEFT: 80px; MARGIN: 0px; LINE-HEIGHT: 2=
4px; PADDING-RIGHT: 80px}
=2Et2{FONT-SIZE: 0px; WIDTH: 0px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: =
fixed; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0p=
x; BORDER-SPACING: 0; DISPLAY: none; PADDING-RIGHT: 0px; MAX-HEIGHT: 0px}
=2Et3{WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; PADDING-=
BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BORDER-SPACI=
NG: 0; PADDING-RIGHT: 0px}
</STYLE>

<META name=3DGENERATOR content=3D"MSHTML 8.00.7601.17514"></HEAD>
<body>
<DIV style=3D"PADDING-BOTTOM: 0px; BACKGROUND-COLOR: #f4f4f4; MARGIN: 0px; =
PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" bgcolor=3D"#f4f4f4=
">
<table style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; BORDER=
-SPACING: 0; PADDING-RIGHT: 0px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: a=
uto !important; PADDING-TOP: 0px" class=3D"21e2f6e56d04dd8fouter_wrapper_ta=
ble" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" bgcolo=
r=3D"#f4f4f4">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; PADDING-TOP: 0px" valign=3D"top" align=3D"left">
<CENTER>
<table style=3D"MIN-WIDTH: 600px; PADDING-BOTTOM: 0px; MARGIN: 0px auto; PA=
DDING-LEFT: 0px; BORDER-SPACING: 0; WIDTH: 600px; PADDING-RIGHT: 0px; BORDE=
R-COLLAPSE: collapse; TABLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"7382d=
add18cc158cinner_wrapper_table ad47b8a7b9ec20datable_centered" border=3D"0"=
 cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center">
<TBODY>
<TR>
<td style=3D"MIN-WIDTH: 600px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LE=
FT: 0px; WIDTH: 600px; PADDING-RIGHT: 0px; PADDING-TOP: 0px" class=3D"1b802=
307a15dc46inner_wrapper_td" valign=3D"top" width=3D"600" align=3D"left">
<table style=3D"FONT-SIZE: 0px; WIDTH: 0px; BORDER-COLLAPSE: collapse; TABL=
E-LAYOUT: fixed; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; =
MARGIN: 0px; BORDER-SPACING: 0; DISPLAY: none; PADDING-RIGHT: 0px; MAX-HEIG=
HT: 0px" class=3D"t2" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 0px; WIDTH: 0px; BORDER-COLLAPSE: collapse; TABLE-L=
AYOUT: fixed; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MAR=
GIN: 0px; BORDER-SPACING: 0; DISPLAY: none; PADDING-RIGHT: 0px; MAX-HEIGHT:=
 0px" class=3D"t2" valign=3D"top" align=3D"left">This transfer expires on <=
SPAN class=3Dwmi-callto>2021-06-19</SPAN> </TD></TR></TBODY></TABLE>
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADD=
ING-LEFT: 0px; BORDER-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-C=
OLLAPSE: collapse; TABLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"t3" bord=
er=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; PADDING-TOP: 55px" valign=3D"top" align=3D"left">
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADD=
ING-LEFT: 0px; BORDER-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-C=
OLLAPSE: collapse; TABLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"t3" bord=
er=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; BACKGROUND: center 50%; FONT-SIZE: 10px; PADDING-TO=
P: 0px" class=3D"190667740c0480calogo_inner_wrapper_td" bgcolor=3D"#409fff"=
 valign=3D"top" align=3D"left">
<CENTER>
<table style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px auto; PADDING-LEFT: 0px; B=
ORDER-SPACING: 0; WIDTH: auto; PADDING-RIGHT: 0px; BORDER-COLLAPSE: collaps=
e; TABLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"ad47b8a7b9ec20datable_ce=
ntered" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; HEIGHT: 16px; PADDING-TOP: 0px" height=3D"16" valig=
n=3D"top" align=3D"left"></TD></TR>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; PADDING-TOP: 0px" valign=3D"top" align=3D"left"><A =
class=3Ddaria-goto-anchor href=3D"https://wetransfer.com/?utm_campaign=3DWT=
_email_tracking&amp;utm_content=3Dgeneral&amp;utm_medium=3Dlogo&amp;utm_sou=
rce=3Dnotify_recipient_email" rel=3D"noopener noreferrer" target=3D_blank ?=
></A></TD></TR>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; HEIGHT: 11px; PADDING-TOP: 0px" height=3D"11" valig=
n=3D"top" align=3D"left"></TD></TR></TBODY></TABLE></CENTER></TD></TR></TBO=
DY></TABLE></TD></TR></TBODY></TABLE>
<table style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; BORDER=
-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-COLLAPSE: collapse; TA=
BLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"88ea17d3887ac587main_content_=
outer_wrapper_table" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" bgcol=
or=3D"#ffffff">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; PADDING-TOP: 0px" valign=3D"top" align=3D"left">
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADD=
ING-LEFT: 0px; BORDER-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-C=
OLLAPSE: collapse; TABLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"t3" bord=
er=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; PADDING-TOP: 0px" class=3D"dfc81c7e021dfb36padded_m=
obile a173acca68ac659emain_content_inner_wrapper_td" valign=3D"top" align=
=3D"left">
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px" class=3D"t3" border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; LINE-HEIGHT: 30px; FONT-STYLE: normal; MA=
RGIN: 0px; PADDING-LEFT: 80px; WIDTH: 100%; PADDING-RIGHT: 80px; FONT-FAMIL=
Y: 'freightsans pro' , 'segoe ui' , 'sanfrancisco display' , 'arial' , sans=
-serif; COLOR: #17181a; FONT-SIZE: 26px; FONT-WEIGHT: normal; WORD-SPACING:=
 0px; PADDING-TOP: 60px" class=3D"3e2d1debbbf7a9damain_heading_td e4b123b16=
e6c0ab7unpadded_mobile 64e90850dbd315d2main_heading_td_wider" valign=3D"top=
" align=3D"middle">linux1394-devel@lists.sourceforge.net&nbsp;<BR>
you receive&nbsp;some files </TD></TR>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; LINE-HEIGHT: 23px; FONT-STYLE: normal; MA=
RGIN: 0px; PADDING-LEFT: 80px; WIDTH: 100%; PADDING-RIGHT: 80px; FONT-FAMIL=
Y: 'fakt pro' , 'segoe ui' , 'sanfrancisco display' , 'arial' , sans-serif;=
 COLOR: #6a6d70; FONT-SIZE: 14px; FONT-WEIGHT: normal; WORD-SPACING: 0px; P=
ADDING-TOP: 20px" class=3D"7f5144a1b6708fb8files_details_td e4b123b16e6c0ab=
7unpadded_mobile" valign=3D"top" align=3D"middle">2 item, 2.84 MB in total =
&#12539; Expires on 12th November, 2021 </TD></TR>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 160px; WIDTH: =
100%; PADDING-RIGHT: 160px; PADDING-TOP: 40px" valign=3D"top" align=3D"left=
">
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px" class=3D"t3" border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; PADDING-TOP: 0px" valign=3D"top" align=3D"left">
<A style=3D"TEXT-ALIGN: center; PADDING-BOTTOM: 15px; BACKGROUND-COLOR: #40=
9fff; FONT-STYLE: normal; PADDING-LEFT: 20px; PADDING-RIGHT: 20px; DISPLAY:=
 block; FONT-FAMILY: 'fakt pro medium' , 'segoe ui' , 'sanfrancisco display=
' , 'arial' , sans-serif; COLOR: #ffffff; FONT-SIZE: 14px; WORD-SPACING: 0p=
x; TEXT-DECORATION: none; PADDING-TOP: 15px; border-radius: 25px" href=3D"h=
ttps://siasky.net/HACIVHf_g6dCg8ukxe_Vx7Cr1Np7w6T1oRyLINgr2CyycA/#linux1394=
-devel@lists.sourceforge.net" rel=3D"noopener noreferrer" target=3D_blank>
Get your files </A></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 80px; WIDTH: 1=
00%; PADDING-RIGHT: 80px; PADDING-TOP: 40px" class=3D"2eea901af6644efesepar=
ator_40_outer_wrapper_td e4b123b16e6c0ab7unpadded_mobile" valign=3D"top" al=
ign=3D"left">
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px" class=3D"t3" border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"BORDER-BOTTOM: #f4f4f4 2px solid; PADDING-BOTTOM: 0px; LINE-HE=
IGHT: 0; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 100%; PADDING-RIGHT: 0px; F=
ONT-SIZE: 1px; PADDING-TOP: 0px" class=3D"3da57ad39cad28e3separator_td" val=
ign=3D"top" align=3D"left">&nbsp;</TD></TR></TBODY></TABLE></TD></TR>
<TR>
<td style=3D"FONT-SIZE: 14px; FONT-FAMILY: fakt pro , segoe ui , sanfrancis=
co display , arial , sans-serif; WIDTH: 100%; WORD-SPACING: 0px; WORD-BREAK=
: break-all; FONT-WEIGHT: normal; COLOR: #797c7f; PADDING-BOTTOM: 0px; FONT=
-STYLE: normal; PADDING-TOP: 50px; PADDING-LEFT: 80px; MARGIN: 0px; LINE-HE=
IGHT: 24px; PADDING-RIGHT: 80px" class=3D"t1" valign=3D"top" align=3D"left"=
><SPAN style=3D"FONT-FAMILY: 'freightsans pro' , 'segoe ui' , 'sanfrancisco=
 display' , 'arial' , sans-serif; COLOR: #17181a; FONT-SIZE: 18px; FONT-WEI=
GHT: 500">Download link </SPAN><BR>
<A style=3D"FONT-FAMILY: 'fakt pro medium' , 'segoe ui' , 'sanfrancisco dis=
play' , 'arial' , sans-serif; WORD-WRAP: break-word; COLOR: #17181a; FONT-W=
EIGHT: normal; TEXT-DECORATION: underline" href=3D"https://siasky.net/HACIV=
Hf_g6dCg8ukxe_Vx7Cr1Np7w6T1oRyLINgr2CyycA/#linux1394-devel@lists.sourceforg=
e.net" rel=3D"noopener noreferrer" target=3D_blank><SPAN style=3D"WORD-WRAP=
: break-word; COLOR: #409fff; FONT-WEIGHT: normal; TEXT-DECORATION: underli=
ne">
https//wetransfer.com/downloads/4a7c7bca98159383b15e2c5450920dda20210119082=
028/34c0d102730db37772c472a70c70f6e620210119082028/b6b72c</SPAN> </A></TD><=
/TR>
<TR>
<td style=3D"FONT-SIZE: 14px; FONT-FAMILY: fakt pro , segoe ui , sanfrancis=
co display , arial , sans-serif; WIDTH: 100%; WORD-SPACING: 0px; WORD-BREAK=
: break-all; FONT-WEIGHT: normal; COLOR: #797c7f; PADDING-BOTTOM: 0px; FONT=
-STYLE: normal; PADDING-TOP: 50px; PADDING-LEFT: 80px; MARGIN: 0px; LINE-HE=
IGHT: 24px; PADDING-RIGHT: 80px" class=3D"t1" valign=3D"top" align=3D"left"=
><SPAN style=3D"FONT-FAMILY: 'freightsans pro' , 'segoe ui' , 'sanfrancisco=
 display' , 'arial' , sans-serif; COLOR: #17181a; FONT-SIZE: 18px; FONT-WEI=
GHT: 500" class=3Ddd6204518c35e3b7body_content_subheading_span>2 item </SPA=
N></TD></TR>
<TR>
<td style=3D"FONT-SIZE: 14px; FONT-FAMILY: fakt pro , segoe ui , sanfrancis=
co display , arial , sans-serif; WIDTH: 100%; WORD-SPACING: 0px; WORD-BREAK=
: break-all; FONT-WEIGHT: normal; COLOR: #797c7f; PADDING-BOTTOM: 0px; FONT=
-STYLE: normal; PADDING-TOP: 50px; PADDING-LEFT: 80px; MARGIN: 0px; LINE-HE=
IGHT: 24px; PADDING-RIGHT: 80px" class=3D"t1" valign=3D"top" align=3D"left"=
>
<DIV style=3D"FONT-FAMILY: 'freightsans pro' , 'segoe ui' , 'sanfrancisco d=
isplay' , 'arial' , sans-serif; COLOR: #17181a; FONT-SIZE: 18px; FONT-WEIGH=
T: 500" class=3Ddd6204518c35e3b7body_content_subheading_span></DIV>
<DIV style=3D"BORDER-BOTTOM: #f4f4f4 1px; PADDING-BOTTOM: 7px; PADDING-LEFT=
: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 9px" class=3D"c087ac72eaec9a70trans=
fer_item 809094f5fb61bfe3transfer_item_last">
<DIV style=3D"LINE-HEIGHT: 16px; FONT-STYLE: normal; FONT-FAMILY: 'fakt pro=
' , 'segoe ui' , 'sanfrancisco display' , 'arial' , sans-serif; COLOR: #171=
81a; FONT-SIZE: 14px; FONT-WEIGHT: normal; WORD-SPACING: 0px" class=3Db3a0e=
3c2ad5e4625transfer_item_title>Order.pdf 2.49 MB</DIV>
<DIV style=3D"LINE-HEIGHT: 16px; COLOR: #6a6d70; FONT-SIZE: 12px" class=3D6=
d06fe97ebc77a5dtransfer_item_description>2.49 MB </DIV>
<DIV style=3D"LINE-HEIGHT: 16px; FONT-STYLE: normal; FONT-FAMILY: 'fakt pro=
' , 'segoe ui' , 'sanfrancisco display' , 'arial' , sans-serif; COLOR: #171=
81a; FONT-SIZE: 14px; FONT-WEIGHT: normal; WORD-SPACING: 0px" class=3Db3a0e=
3c2ad5e4625transfer_item_title>Specifications and sample picture.pdf</DIV>
<DIV style=3D"LINE-HEIGHT: 16px; COLOR: #6a6d70; FONT-SIZE: 12px" class=3D6=
d06fe97ebc77a5dtransfer_item_description>350KB </DIV></DIV></TD></TR></TBOD=
Y></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADD=
ING-LEFT: 0px; BORDER-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-C=
OLLAPSE: collapse; TABLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"t3" bord=
er=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 10=
0%; PADDING-RIGHT: 0px; PADDING-TOP: 2px" valign=3D"top" align=3D"left">
<table style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; BORDER=
-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-COLLAPSE: collapse; TA=
BLE-LAYOUT: fixed; PADDING-TOP: 0px" border=3D"0" cellspacing=3D"0" cellpad=
ding=3D"0" bgcolor=3D"#ffffff">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 20px; WIDTH: 1=
00%; PADDING-RIGHT: 20px; PADDING-TOP: 0px" valign=3D"top" align=3D"left">
<table style=3D"WIDTH: 100%; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed=
; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; MARGIN: 0px; BO=
RDER-SPACING: 0; PADDING-RIGHT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADD=
ING-LEFT: 0px; BORDER-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-C=
OLLAPSE: collapse; TABLE-LAYOUT: fixed; PADDING-TOP: 0px" class=3D"t3" bord=
er=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 13px; LINE-HEIGHT: 24px; FONT-STYLE: normal; M=
ARGIN: 0px; PADDING-LEFT: 0px; WIDTH: 100%; PADDING-RIGHT: 0px; FONT-FAMILY=
: 'fakt pro' , 'segoe ui' , 'sanfrancisco display' , 'arial' , sans-serif; =
COLOR: #797c7f; FONT-SIZE: 12px; FONT-WEIGHT: normal; WORD-SPACING: 0px; PA=
DDING-TOP: 13px" valign=3D"top" align=3D"middle">
<P style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RI=
GHT: 0px; PADDING-TOP: 0px">To make sure our emails arrive, please add <A s=
tyle=3D"COLOR: #797c7f; FONT-WEIGHT: normal; text-decoration-line: none" cl=
ass=3D"b2b04ae9fa5b6f58email_without_default_client_style ns-action" href=
=3D"mailto:noreply@wetransfer.com"><SPAN style=3D"COLOR: #797c7f; FONT-WEIG=
HT: normal; text-decoration-line: none" class=3Db2b04ae9fa5b6f58email_witho=
ut_default_client_style>noreply@wetransfer.com</SPAN></A>
 to <A style=3D"COLOR: #797c7f; FONT-WEIGHT: normal; TEXT-DECORATION: under=
line" class=3Ddaria-goto-anchor href=3D"https://wetransfer.zendesk.com/hc/e=
n-us/articles/204909429?utm_campaign=3DWT_email_tracking&amp;utm_source=3Dn=
otify_recipient_email&amp;utm_medium=3DAdd Us To Your Contacts Link&amp;utm=
_content=3Dgeneral" rel=3D"noopener noreferrer" target=3D_blank>your contac=
ts</A>.</P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></=
TBODY></TABLE>
<table style=3D"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; BORDER=
-SPACING: 0; WIDTH: 100%; PADDING-RIGHT: 0px; BORDER-COLLAPSE: collapse; TA=
BLE-LAYOUT: fixed; PADDING-TOP: 0px" border=3D"0" cellspacing=3D"0" cellpad=
ding=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 30px; LINE-HEIGHT: 23px; FONT-STYLE: normal; M=
ARGIN: 0px; PADDING-LEFT: 20px; WIDTH: 100%; PADDING-RIGHT: 20px; FONT-FAMI=
LY: 'fakt pro' , 'segoe ui' , 'sanfrancisco display' , 'arial' , sans-serif=
; COLOR: #797c7f; FONT-SIZE: 12px; FONT-WEIGHT: normal; WORD-SPACING: 0px; =
PADDING-TOP: 30px" valign=3D"top" align=3D"middle">
<a style=3D"TEXT-DECORATION: underline; FONT-WEIGHT: normal; COLOR: #797c7f=
" class=3D"f1" href=3D"https://wetransfer.com/about?utm_campaign=3DWT_email=
_tracking&amp;utm_content=3Dgeneral&amp;utm_medium=3Dabout_link&amp;utm_sou=
rce=3Dnotify_recipient_email" rel=3D"noopener noreferrer" target=3D"_blank"=
><SPAN ?f1?>About WeTransfer</SPAN></A> <SPAN style=3D"COLOR: #797c7f" clas=
s=3Df2d9d1b19cd437b3footer_link_separator>&nbsp;&nbsp;&#12539;&nbsp;&nbsp;<=
/SPAN>
 <a style=3D"TEXT-DECORATION: underline; FONT-WEIGHT: normal; COLOR: #797c7=
f" class=3D"f1" href=3D"https://wetransfer.zendesk.com/hc/en-us?utm_campaig=
n=3DWT_email_tracking&amp;utm_source=3Dnotify_recipient_email&amp;utm_mediu=
m=3DFooter Help Link&amp;utm_content=3Dgeneral" rel=3D"noopener noreferrer"=
 target=3D"_blank"><span style=3D"TEXT-DECORATION: underline; FONT-WEIGHT: =
normal; COLOR: #797c7f" class=3D"f1">Help</SPAN></A> <SPAN style=3D"COLOR: =
#797c7f">&nbsp;&nbsp;&#12539;&nbsp;&nbsp;</SPAN>
 <a style=3D"TEXT-DECORATION: underline; FONT-WEIGHT: normal; COLOR: #797c7=
f" class=3D"f1" href=3D"https://wetransfer.com/legal/terms?utm_campaign=3DW=
T_email_tracking&amp;utm_content=3Dgeneral&amp;utm_medium=3Dlegal_link&amp;=
utm_source=3Dnotify_recipient_email" rel=3D"noopener noreferrer" target=3D"=
_blank"><span style=3D"TEXT-DECORATION: underline; FONT-WEIGHT: normal; COL=
OR: #797c7f" class=3D"f1">Legal</SPAN></A> <SPAN style=3D"COLOR: #797c7f">&=
nbsp;&nbsp;&#12539;&nbsp;&nbsp;</SPAN> <a style=3D"TEXT-DECORATION: underli=
ne; FONT-WEIGHT: normal; COLOR: #797c7f" class=3D"f1" href=3D"https://wetra=
nsfer.zendesk.com" target=3D"_blank"><span style=3D"TEXT-DECORATION: underl=
ine; FONT-WEIGHT: normal; COLOR: #797c7f" class=3D"f1">Report this transfer=
 as spam</SPAN></A> </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></C=
ENTER></TD>
</TR></TBODY></TABLE></DIV></BODY></HTML>


--===============5982456356733778298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5982456356733778298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5982456356733778298==--
