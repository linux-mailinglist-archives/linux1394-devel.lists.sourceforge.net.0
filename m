Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CA69899C
	for <lists+linux1394-devel@lfdr.de>; Thu, 22 Aug 2019 04:54:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1i0dEV-00087U-Fp; Thu, 22 Aug 2019 02:53:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@nghiphong.com>) id 1i0dEU-00087M-2d
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Aug 2019 02:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=118Byw1bpDN+WCLNHAP2JkoUsqhjYIoHnchnGkJtbYs=; b=LuZG87UeSa1fHglF4+/gQxi2em
 9eZE8waJAVb0CSr0pNXlI10v6VvwBIv85zFiD0MhfUUPx3UIBv1YML5KSFJNepoYUkje1KnfT8tmz
 0EF3hYWx67+IGMcfsGcpv2pjfHLbROu1NvKzFA02SWHNpVVRTEZUaf4NGwuA0uaq8WYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=118Byw1bpDN+WCLNHAP2JkoUsqhjYIoHnchnGkJtbYs=; b=L
 8vtf6rMu9xARKu6UugM+r2r9/8XSGYRuHi3QdvwT/K26jzTfbf9k2/UsuvsddrPN1MyZ5z1AvLQHc
 7OHNDT80Ccsbdk1/b8cCKAs309gYfdn82UE2d50wqXzz/emncP9qYH0nNyaB9wGkrIWQs8YKrTpXn
 S+9lhWOuQtUVsilQ=;
Received: from ns.coop.chuo-u.ac.jp ([133.91.136.206]
 helo=mail.coop.chuo-u.ac.jp)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i0dES-00B6lW-QN
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Aug 2019 02:53:49 +0000
Received: from WIN-3MLJ52PUHVC
 (ec2-13-231-108-69.ap-northeast-1.compute.amazonaws.com [13.231.108.69])
 by mail.coop.chuo-u.ac.jp (Postfix) with ESMTPA id 0B6D4212981D
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 22 Aug 2019 11:45:42 +0900 (JST)
From: "Zino Hoile" <info@nghiphong.com>
Subject: REMADE FROM MY LAST EMAILl TO YOU BF
To: linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Date: Thu, 22 Aug 2019 02:45:41 +0000
Message-Id: <20190822024542.0B6D4212981D@mail.coop.chuo-u.ac.jp>
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (zinohoile212[at]gmail.com)
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or Formatted
 Colors in HTML
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1i0dES-00B6lW-QN
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
Reply-To: zinohoile212@gmail.com
Content-Type: multipart/mixed; boundary="===============6706259536793235124=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format

--===============6706259536793235124==
Content-Type: multipart/alternative; boundary="kSbESPg88ZckZC9eAAkSLDiaQO3IxChJ=_0"

This is a multi-part message in MIME format

--kSbESPg88ZckZC9eAAkSLDiaQO3IxChJ=_0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

 - This mail is in HTML. Some elements may be ommited in plain text. -

Good Day
,
I sent you an e-mail previously about our proposal on Investment in yo=
ur country, but I did not receive any feedback from you.
Kindly confirm that you got my message as I await for your response.
Sincere regards,
Zino

--kSbESPg88ZckZC9eAAkSLDiaQO3IxChJ=_0
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY>
<P style=3D"MARGIN-BOTTOM: 0px; FONT-SIZE: 13px; TEXT-DECORATION: none=
; FONT-FAMILY: Arial,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE=
-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: =
400; COLOR: rgb(34,34,34); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHA=
NS: 2; MARGIN-TOP: 0px; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(=
255,255,255); TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px"><SPAN =
style=3D"TEXT-DECORATION: none; WHITE-SPACE: normal; WORD-SPACING: 0px=
; TEXT-TRANSFORM: none; FLOAT: none; COLOR: rgb(34,34,34); TEXT-ALIGN:=
 left; FONT: 400 13px/19px Arial,Helvetica,sans-serif; DISPLAY: inline=
; LETTER-SPACING: normal; BACKGROUND-COLOR: transparent; TEXT-INDENT: =
0px; font-size-adjust: none; font-stretch: 100%">Good Day</SPAN>,</P><=
SPAN style=3D"FONT-SIZE: 16px; TEXT-DECORATION: none; FONT-FAMILY: Cal=
ibri,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE-SPACE: normal; =
WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400=
; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2;=
 DISPLAY: inline !important; LETTER-SPACING: normal; BACKGROUND-COLOR:=
 transparent; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px"></SPAN=
><SPAN style=3D"TEXT-DECORATION: none; WHITE-SPACE: normal; WORD-SPACI=
NG: 0px; TEXT-TRANSFORM: none; FLOAT: none; COLOR: rgb(34,34,34); TEXT=
-ALIGN: left; FONT: 400 13px/19px Arial,Helvetica,sans-serif; ORPHANS:=
 2; DISPLAY: inline; LETTER-SPACING: normal; BACKGROUND-COLOR: transpa=
rent; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px; font-size-adju=
st: none; font-stretch: 100%"></SPAN><SPAN style=3D"FONT-SIZE: 16px; T=
EXT-DECORATION: none; FONT-FAMILY: Calibri,Helvetica,sans-serif; FONT-=
VARIANT: normal; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFOR=
M: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE:=
 normal; TEXT-ALIGN: left; ORPHANS: 2; DISPLAY: inline !important; LET=
TER-SPACING: normal; BACKGROUND-COLOR: transparent; TEXT-INDENT: 0px; =
-webkit-text-stroke-width: 0px"></SPAN>
<P style=3D"MARGIN-BOTTOM: 0px; FONT-SIZE: 13px; TEXT-DECORATION: none=
; FONT-FAMILY: Arial,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE=
-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: =
400; COLOR: rgb(34,34,34); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHA=
NS: 2; MARGIN-TOP: 0px; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(=
255,255,255); TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px">I sent=
 you an e-mail previously about our proposal on Investment in your cou=
ntry, but I did not receive any feedback from you.</P><SPAN style=3D"F=
ONT-SIZE: 16px; TEXT-DECORATION: none; FONT-FAMILY: Calibri,Helvetica,=
sans-serif; FONT-VARIANT: normal; WHITE-SPACE: normal; WORD-SPACING: 0=
px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,=
0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; DISPLAY: inlin=
e !important; LETTER-SPACING: normal; BACKGROUND-COLOR: transparent; T=
EXT-INDENT: 0px; -webkit-text-stroke-width: 0px"></SPAN><SPAN style=3D=
"TEXT-DECORATION: none; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-T=
RANSFORM: none; FLOAT: none; COLOR: rgb(34,34,34); TEXT-ALIGN: left; F=
ONT: 400 13px/19px Arial,Helvetica,sans-serif; ORPHANS: 2; DISPLAY: in=
line; LETTER-SPACING: normal; BACKGROUND-COLOR: transparent; TEXT-INDE=
NT: 0px; -webkit-text-stroke-width: 0px; font-size-adjust: none; font-=
stretch: 100%"></SPAN><SPAN style=3D"FONT-SIZE: 16px; TEXT-DECORATION:=
 none; FONT-FAMILY: Calibri,Helvetica,sans-serif; FONT-VARIANT: normal=
; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT:=
 none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-A=
LIGN: left; ORPHANS: 2; DISPLAY: inline !important; LETTER-SPACING: no=
rmal; BACKGROUND-COLOR: transparent; TEXT-INDENT: 0px; -webkit-text-st=
roke-width: 0px"></SPAN>
<P style=3D"MARGIN-BOTTOM: 0px; FONT-SIZE: 13px; TEXT-DECORATION: none=
; FONT-FAMILY: Arial,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE=
-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: =
400; COLOR: rgb(34,34,34); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHA=
NS: 2; MARGIN-TOP: 0px; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(=
255,255,255); TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px">Kindly=
 confirm that you got my message as I await for your response.</P><SPA=
N style=3D"FONT-SIZE: 16px; TEXT-DECORATION: none; FONT-FAMILY: Calibr=
i,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE-SPACE: normal; WOR=
D-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; C=
OLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; DI=
SPLAY: inline !important; LETTER-SPACING: normal; BACKGROUND-COLOR: tr=
ansparent; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px"></SPAN><S=
PAN style=3D"TEXT-DECORATION: none; WHITE-SPACE: normal; WORD-SPACING:=
 0px; TEXT-TRANSFORM: none; FLOAT: none; COLOR: rgb(34,34,34); TEXT-AL=
IGN: left; FONT: 400 13px/19px Arial,Helvetica,sans-serif; ORPHANS: 2;=
 DISPLAY: inline; LETTER-SPACING: normal; BACKGROUND-COLOR: transparen=
t; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px; font-size-adjust:=
 none; font-stretch: 100%"></SPAN><SPAN style=3D"FONT-SIZE: 16px; TEXT=
-DECORATION: none; FONT-FAMILY: Calibri,Helvetica,sans-serif; FONT-VAR=
IANT: normal; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: =
none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: no=
rmal; TEXT-ALIGN: left; ORPHANS: 2; DISPLAY: inline !important; LETTER=
-SPACING: normal; BACKGROUND-COLOR: transparent; TEXT-INDENT: 0px; -we=
bkit-text-stroke-width: 0px"></SPAN>
<P style=3D"MARGIN-BOTTOM: 0px; FONT-SIZE: 13px; TEXT-DECORATION: none=
; FONT-FAMILY: Arial,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE=
-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: =
400; COLOR: rgb(34,34,34); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHA=
NS: 2; MARGIN-TOP: 0px; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(=
255,255,255); TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px">Sincer=
e regards,</P><SPAN style=3D"FONT-SIZE: 16px; TEXT-DECORATION: none; F=
ONT-FAMILY: Calibri,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE-=
SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; F=
ONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: le=
ft; ORPHANS: 2; DISPLAY: inline !important; LETTER-SPACING: normal; BA=
CKGROUND-COLOR: transparent; TEXT-INDENT: 0px; -webkit-text-stroke-wid=
th: 0px"></SPAN><SPAN style=3D"TEXT-DECORATION: none; WHITE-SPACE: nor=
mal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; COLOR: rgb(=
34,34,34); TEXT-ALIGN: left; FONT: 400 13px/19px Arial,Helvetica,sans-=
serif; ORPHANS: 2; DISPLAY: inline; LETTER-SPACING: normal; BACKGROUND=
-COLOR: transparent; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px;=
 font-size-adjust: none; font-stretch: 100%"></SPAN><SPAN style=3D"FON=
T-SIZE: 16px; TEXT-DECORATION: none; FONT-FAMILY: Calibri,Helvetica,sa=
ns-serif; FONT-VARIANT: normal; WHITE-SPACE: normal; WORD-SPACING: 0px=
; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,=
0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; DISPLAY: inline =
!important; LETTER-SPACING: normal; BACKGROUND-COLOR: transparent; TEX=
T-INDENT: 0px; -webkit-text-stroke-width: 0px"></SPAN>
<P style=3D"MARGIN-BOTTOM: 0px; FONT-SIZE: 13px; TEXT-DECORATION: none=
; FONT-FAMILY: Arial,Helvetica,sans-serif; FONT-VARIANT: normal; WHITE=
-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FONT-WEIGHT: =
400; COLOR: rgb(34,34,34); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHA=
NS: 2; MARGIN-TOP: 0px; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(=
255,255,255); TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px">Zino</=
P></BODY></HTML>

--kSbESPg88ZckZC9eAAkSLDiaQO3IxChJ=_0--



--===============6706259536793235124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6706259536793235124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6706259536793235124==--


