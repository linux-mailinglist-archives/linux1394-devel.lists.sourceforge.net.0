Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D43D04CE402
	for <lists+linux1394-devel@lfdr.de>; Sat,  5 Mar 2022 10:49:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nQR2V-0005py-EC; Sat, 05 Mar 2022 09:49:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bounces-7d623-info=pflegbar.ch@hs.d.sender-sib.com>)
 id 1nQR2T-0005ps-KF
 for linux1394-devel@lists.sourceforge.net; Sat, 05 Mar 2022 09:49:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Message-Id:MIME-Version:List-Unsubscribe:
 List-Id:From:Date:Content-Type:Subject:To:Sender:Cc:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mdq+RghSknjlSYgby48lurhOlnxt7C8T5ofVLHlw+oo=; b=iYOJ3HXMj3oRoDPfBQKiZawnlr
 qTfqqgfSohk7J8wkpbuP3qHpnoSIqy/O31/eVGYP+uVDgQWDi70R3cVq8o0qfwecP7P23fQX9SNSB
 libNbLjsZvsJPUzrOfxJqZoexGkZIVy8Vyiyq1eYp4b2Bh1HAlpKyGRGT6iZ2JHTdJFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Message-Id:MIME-Version:List-Unsubscribe:List-Id:From:Date:
 Content-Type:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mdq+RghSknjlSYgby48lurhOlnxt7C8T5ofVLHlw+oo=; b=K
 u5cLht/LeOED9u0qvUCQOopx2uVykFEGDHW1M/eXD0JK0TLKUDrr7lkjWEwh1RkArVF6OgMbeK5oF
 JDIJyEmMzKPYZGfjIkBV7+QZnkjf/iS5OZkE4VrEaQ27b+UOUVdj0lRsY7c4EmApPc5z+f3G02V3D
 Lu7nKIxt7wapd0zI=;
Received: from hs.d.sender-sib.com ([77.32.148.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nQR2P-005Vjq-Pd
 for linux1394-devel@lists.sourceforge.net; Sat, 05 Mar 2022 09:49:24 +0000
DKIM-Signature: a=rsa-sha256; bh=mdq+RghSknjlSYgby48lurhOlnxt7C8T5ofVLHlw+oo=; 
 c=relaxed/relaxed; d=sendinblue.com;
 h=to:cc:from:reply-to:subject:date:mime-version:content-type:list-id:list-unsubscribe:x-csa-complaints:list-unsubscribe-post:message-id:sender:x-sib-id:x-mailin-client:x-mailin-campaign:feedback-id;
 q=dns/txt; s=mail; t=1646471344; v=1;
 b=Bp1yfpaBP8iqP7ZlSdnSqjSdX6cfhYKw4cm3a112wWIObPm+CRpCwXybeMU944y+826/h6RN
 daWnRmQF6vqvaIiiNG8XtmwLP5SSihl1gRvFTu4uPL5BPJ3/m9ESkT4NHo2iyunKBwbmLBoZj6M
 HFgBsG2nPYHlWaGpTic2cYfE=
To: <linux1394-devel@lists.sourceforge.net>
Subject: =?utf-8?q?LED-Makse_f=C3=BCr_zu_Hause!?=
Date: Sat, 05 Mar 2022 09:09:04 +0000
Feedback-ID: 77.32.148.45:4187663_26:4187663:Sendinblue
From: pflegbar.ch <info@pflegbar.ch>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
MIME-Version: 1.0
Message-Id: <202205030909.3m28a5uso8fj@hs.d.sender-sib.com>
Precedence: bulk
X-Csa-Complaints: csa-complaints@eco.de
X-Mailer: Sendinblue
X-Mailin-Campaign: 26
X-Mailin-Client: 4187663
X-sib-id: -6uqKyV0O1aC6-6kKQB0gUxbxu3GjR1TuC4UsER1ERk5s_Cg9Ok-WePP_F8-NGOmaOVFi0rxr2eMld8DqaEQwq7rUpLA3X3SNhu_V0jd7uwVPpZdju5WgT3i0vesuh08rdHqyb6Iaafno3ArDH8dhor4_VkRW_AuOBru_WHiePzUrc9xeC3KMnH80PN2J-SyfkpcYkyG3yNpzyvF2Q7Z4YPwcOwH4FDzadCQkpJm5e43HaWX6Q30
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ####**Hi **❤️ You have unread messages from Juliette
   (2)! Click Here: https://bit.ly/3hlho06?wwbz ❤️**, auf der Suche nach
   einer LED-Maske?** Möchtest du eine Gesichtsbehandlung für dein zu Hause?
    Besorge dir deine LED-Maske mit 4 verschiedenen Licht-Wellenlängen. Ideal
    für dein Gesicht! 
 
 Content analysis details:   (-1.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [77.32.148.45 listed in wl.mailspike.net]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
 -0.5 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1nQR2P-005Vjq-Pd
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Reply-To: marc.winiger@windisag.ch
Content-Type: multipart/mixed; boundary="===============4132346710261335371=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============4132346710261335371==
Content-Type: multipart/alternative; boundary="-------?=_59099-6380132882099"

---------?=_59099-6380132882099
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

####**Hi=C2=A0**=E2=9D=A4=EF=B8=8F You have unread messages from Juliette (=
2)! Click Here: https://bit.ly/3hlho06?wwbz =E2=9D=A4=EF=B8=8F**, auf der S=
uche nach einer LED-Maske?**

M=C3=B6chtest du eine Gesichtsbehandlung f=C3=BCr dein zu Hause? Besorge di=
r deine LED-Maske mit 4 verschiedenen Licht-Wellenl=C3=A4ngen. Ideal f=C3=
=BCr dein Gesicht!

=C2=A0

Nur diese Woche erh=C3=A4lts du 10% Rabatt auf die LED-Maske und ein GRATIS=
 Jelly Cleanser von APOT.CARE dazu.=C2=A0

W=C3=A4hle dein Cleanser direkt im Warenkorb aus!

=C2=A0

[Jetzt bestellen!](https://pflegbar.ch/LED-Gesichtsmaske-aus-Silikon-fuer-m=
akellose-Haut)

=C2=A0

[Jetzt anschauen](https://pflegbar.ch/LED-Gesichtsmaske-aus-Silikon-fuer-ma=
kellose-Haut)

ACHTUNG! Du kannst nur 1 Geschenk pro Bestellung ausw=C3=A4hlen.

Dein pflegbar.ch - Team

Jetzt pflegbar-Fan werden:

pflegbar.ch

4052 Basel

=C2=A0

061 551 08 88
info@pflegbar.ch
https://pflegbar.ch/

This email was sent to=C2=A0linux1394-devel@lists.sourceforge.net

You've received this email because you've subscribed to our newsletter.

[Update your preference](https://7d623.r.a.d.sendibm1.com/mk/up/ZUHES_QO_lk=
p0arhd-EaVxG397ZmelCMXEOULw) | [View in browser](https://7d623.r.a.d.sendib=
m1.com/mk/mr/BOH4TaRzAyzBOi64G0Lddj8SD2tHICT2yTpyzoH0FVPFC9Xlhnvuh_ueiJI7Ru=
PqC44o9vnqCBb7yDmgBLrLWD-f_8CPdDGbxAHkYun8gOu2yWNzq3edoFCRQrJ5JLetl48kVzM) =
| [Unsubscribe](https://7d623.r.a.d.sendibm1.com/mk/un/pOqaM73LXwfd_0jxGRy5=
TgVdTpLGS2tvYenmjyDi3i99exOLK7VsyeQBz60qsykNUGnAWHC34B0DFRfnBLbziI6kPIF7KXo=
gjNc9kAZN6qYJOsriOeJfFu0vu2eCXYOZCa8XwGTyM5i719oTcn8-Ff4qkYwh-Aqia6xlCNTkRs=
7jZRGIEcZeIFn8tlsODtY)


---------?=_59099-6380132882099
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org=
/TR/xhtml1/DTD/xhtml1-strict.dtd"><html xmlns=3D"http://www.w3.org/1999/xht=
ml" xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micros=
oft-com:office:office"><head><meta http-equiv=3D"Content-Type" content=3D"t=
ext/html; charset=3Dutf-8"/><meta http-equiv=3D"X-UA-Compatible" content=3D=
"IE=3Dedge"/><meta name=3D"format-detection" content=3D"telephone=3Dno"/><m=
eta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D1.0"=
/><title></title><style type=3D"text/css" emogrify=3D"no">#outlook a{paddin=
g:0;}.ExternalClass{width:100%;}.ExternalClass, .ExternalClass p, .External=
Class span, .ExternalClass font, .ExternalClass td, .ExternalClass div{line=
-height:100%;}table td{border-collapse:collapse;mso-line-height-rule:exactl=
y;}.editable.image{font-size:0 !important;line-height:0 !important;}.nl2go_=
preheader{display:none !important;mso-hide:all !important;mso-line-height-r=
ule:exactly;visibility:hidden !important;line-height:0px !important;font-si=
ze:0px !important;}body{width:100% !important;-webkit-text-size-adjust:100%=
;-ms-text-size-adjust:100%;margin:0;padding:0;}img{outline:none;text-decora=
tion:none;-ms-interpolation-mode:bicubic;}a img{border:none;}table{border-c=
ollapse:collapse;mso-table-lspace:0pt;mso-table-rspace:0pt;}th{font-weight:=
normal;text-align:left;}*[class=3D"gmail-fix"]{display:none !important;}</s=
tyle><style type=3D"text/css" emogrify=3D"no"> @media (max-width:600px){.gm=
x-killpill{content:' \03D1'}}</style><style type=3D"text/css" emogrify=3D"n=
o">@media (max-width:600px){.gmx-killpill{content:' \03D1'}.r0-c{box-sizing=
:border-box !important;text-align:center !important;valign:top !important;w=
idth:320px !important}.r1-o{border-style:solid !important;margin:0 auto 0 a=
uto !important;width:320px !important}.r2-i{background-color:#f0f0f0 !impor=
tant}.r3-c{box-sizing:border-box !important;text-align:center !important;va=
lign:top !important;width:100% !important}.r4-o{border-style:solid !importa=
nt;margin:0 auto 0 auto !important;width:100% !important}.r5-i{background-c=
olor:#ffffff !important;padding-bottom:0px !important;padding-left:15px !im=
portant;padding-right:15px !important;padding-top:0px !important}.r6-c{box-=
sizing:border-box !important;display:block !important;valign:top !important=
;width:100% !important}.r7-o{border-style:solid !important;width:100% !impo=
rtant}.r8-i{padding-left:0px !important;padding-right:0px !important}.r9-c{=
box-sizing:border-box !important;text-align:center !important;valign:top !i=
mportant;width:200px !important}.r10-o{border-style:solid !important;margin=
:0 auto 0 auto !important;width:200px !important}.r11-i{padding-bottom:15px=
 !important;padding-top:15px !important}.r12-c{box-sizing:border-box !impor=
tant;text-align:center !important;width:100% !important}.r13-i{padding-bott=
om:7px !important;padding-top:7px !important}.r14-o{border-style:solid !imp=
ortant;margin:0 auto 0 auto !important;margin-bottom:0px !important;margin-=
top:0px !important;width:100% !important}.r15-c{box-sizing:border-box !impo=
rtant;text-align:left !important;valign:top !important;width:100% !importan=
t}.r16-o{border-style:solid !important;margin:0 auto 0 0 !important;width:1=
00% !important}.r17-i{padding-top:9px !important;text-align:center !importa=
nt}.r18-i{background-color:#ffffff !important;padding-bottom:0px !important=
;padding-left:0px !important;padding-right:0px !important;padding-top:8px !=
important}.r19-i{padding-top:15px !important;text-align:center !important}.=
r20-o{background-size:auto !important;border-style:solid !important;margin:=
0 auto 0 auto !important;width:100% !important}.r21-o{border-style:solid !i=
mportant;margin:0 auto 0 auto !important;margin-bottom:15px !important;marg=
in-top:15px !important;width:100% !important}.r22-i{text-align:center !impo=
rtant}.r23-r{background-color:#3b92a8 !important;border-radius:4px !importa=
nt;border-width:0px !important;box-sizing:border-box;height:initial !import=
ant;padding-bottom:12px !important;padding-left:5px !important;padding-righ=
t:5px !important;padding-top:12px !important;text-align:center !important;w=
idth:100% !important}.r24-i{padding-bottom:9px !important;padding-top:15px =
!important;text-align:center !important}.r25-c{box-sizing:border-box !impor=
tant;width:100% !important}.r26-c{display:none !important}.r27-c{box-sizing=
:border-box !important;width:32px !important}.r28-o{border-style:solid !imp=
ortant;margin-right:8px !important;width:32px !important}.r29-i{padding-bot=
tom:5px !important;padding-top:5px !important}.r30-c{border:none !important=
;box-sizing:border-box !important;display:inline-block !important;height:au=
to !important;visibility:visible !important;width:100% !important}.r31-o{bo=
rder:none !important;border-style:solid !important;display:inline-block !im=
portant;height:auto !important;visibility:visible !important;width:100% !im=
portant}.r32-i{padding-bottom:15px !important;padding-left:85px !important;=
padding-right:85px !important;padding-top:15px !important;width:100% !impor=
tant}.r33-c{border:none !important;box-sizing:border-box !important;display=
:inline-block !important;height:auto !important;visibility:visible !importa=
nt;width:32px !important}.r34-o{border:none !important;border-style:solid !=
important;display:inline-block !important;height:auto !important;margin-rig=
ht:8px !important;visibility:visible !important;width:32px !important}.r35-=
i{padding-bottom:5px !important;padding-top:5px !important;width:32px !impo=
rtant}.r36-i{background-color:#3b92a8 !important;padding-bottom:20px !impor=
tant;padding-left:15px !important;padding-right:15px !important;padding-top=
:20px !important}.r37-i{padding-bottom:0px !important;padding-top:15px !imp=
ortant;text-align:center !important}.r38-i{padding-bottom:0px !important;pa=
dding-top:0px !important;text-align:center !important}.r39-i{padding-bottom=
:15px !important;padding-top:15px !important;text-align:center !important}b=
ody{-webkit-text-size-adjust:none}.nl2go-responsive-hide{display:none}.nl2g=
o-body-table{min-width:unset !important}.mobshow{height:auto !important;ove=
rflow:visible !important;max-height:unset !important;visibility:visible !im=
portant;border:none !important}.resp-table{display:inline-table !important}=
.magic-resp{display:table-cell !important}}</style><!--[if !mso]><!--><styl=
e type=3D"text/css" emogrify=3D"no">@import url("https://fonts.googleapis.c=
om/css2?family=3DMontserrat");</style><!--<![endif]--><style type=3D"text/c=
ss">p, h1, h2, h3, h4, ol, ul{margin:0;}a, a:link{color:#3b92a8;text-decora=
tion:underline}.nl2go-default-textstyle{color:#3b3f44;font-family:arial,hel=
vetica,sans-serif;font-size:16px;line-height:1.5}.default-button{border-rad=
ius:4px;color:#ffffff;font-family:arial,helvetica,sans-serif;font-size:16px=
;line-height:1.15;text-decoration:none;width:50%}.default-heading1{color:#1=
F2D3D;font-family:arial,helvetica,sans-serif;font-size:36px}.default-headin=
g2{color:#1F2D3D;font-family:arial,helvetica,sans-serif;font-size:32px}.def=
ault-heading3{color:#1F2D3D;font-family:arial,helvetica,sans-serif;font-siz=
e:24px}.default-heading4{color:#1F2D3D;font-family:arial,helvetica,sans-ser=
if;font-size:18px}a[x-apple-data-detectors]{color:inherit !important;text-d=
ecoration:inherit !important;font-size:inherit !important;font-family:inher=
it !important;font-weight:inherit !important;line-height:inherit !important=
;}.no-show-for-you{border:none;display:none;float:none;font-size:0;height:0=
;line-height:0;max-height:0;mso-hide:all;overflow:hidden;table-layout:fixed=
;visibility:hidden;width:0;}</style><!--[if mso]><xml> <o:OfficeDocumentSet=
tings> <o:AllowPNG/> <o:PixelsPerInch>96</o:PixelsPerInch> </o:OfficeDocume=
ntSettings> </xml><![endif]--><style type=3D"text/css">a:link{color:#3b92a8=
;text-decoration:underline}</style></head><body bgcolor=3D"#f0f0f0" text=3D=
"#3b3f44" link=3D"#3b92a8" yahoo=3D"fix" style=3D"background-color:#f0f0f0;=
padding-top:0px"> <table cellpadding=3D"0" border=3D"0" cellspacing=3D"0" s=
tyle=3D" mso-hide:all;display:none"><tr><td>GRATIS Jelly Cleanser.</td></tr=
></table> <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"p=
resentation" class=3D"nl2go-body-table" width=3D"100%" style=3D"background-=
color:#f0f0f0;width:100%"><tbody><tr><td align=3D"center" class=3D"r0-c"> <=
table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation=
" width=3D"650" class=3D"r1-o" style=3D"table-layout:fixed;width:650px"><tb=
ody><tr><td valign=3D"top" class=3D"r2-i" style=3D"background-color:#f0f0f0=
"> <table width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" r=
ole=3D"presentation"><tbody><tr><td class=3D"r3-c" align=3D"center"> <table=
 cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" wid=
th=3D"100%" class=3D"r4-o" style=3D"table-layout:fixed;width:100%"><tbody><=
tr><td class=3D"r5-i" style=3D"background-color:#ffffff"> <table width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"=
><tbody><tr><th width=3D"100%" valign=3D"top" class=3D"r6-c"> <table cellsp=
acing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"1=
00%" class=3D"r7-o" style=3D"table-layout:fixed;width:100%"><tbody><tr><td =
class=3D"nl2go-responsive-hide" width=3D"15" style=3D"font-size:0px;line-he=
ight:1px">=C2=AD </td> <td valign=3D"top" class=3D"r8-i"> <table width=3D"1=
00%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"=
><tbody><tr><td class=3D"r9-c" align=3D"center"> <table cellspacing=3D"0" c=
ellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"200" class=3D"=
r10-o" style=3D"table-layout:fixed;width:200px"><tbody><tr class=3D"nl2go-r=
esponsive-hide"><td height=3D"15" style=3D"font-size:15px;line-height:15px"=
>=C2=AD</td> </tr><tr><td class=3D"r11-i" style=3D"font-size:0px;line-heigh=
t:0px"> <a href=3D"https://7d623.r.a.d.sendibm1.com/mk/cl/f/s9yFPCn8TeIk8pg=
bU4mMGL7UbQsuc-MntEhTRGE0fRagFg5jMtXKVvgspS6u4RPPjhu7isBIoLmuOFIqJaaUS13mrg=
Jz9rX63Zee4w00-PYUo5jwJFEbNSlGBeQOfmu2d94q-usvLQaCdmFyl5HgZtyydZTzMNn-QKsm2=
gyBUj4B-4sMOaQkZHVezK8mNFKWTRgxN4k8aoSPZent2Dc2Rs64YD4im-q4TvHRITpN1TfGQ3iC=
EEK6yR0GHSmbrYvbHQZOb3PGSKW38w3BPB6OJucAwubtBKZ4R7Vf7RxZyj0Xs1L_u-QYmGM08aG=
2P0cE9YvFfM8CSzAcvhVFxA_Gbf7LwGuHvx7z" target=3D"_blank" style=3D"color:#3b=
92a8;text-decoration:underline" sib_link_id=3D"0"> <img src=3D"https://7d62=
3.img.a.d.sendibm1.com/im/4187663/a9ba89ae189c372723122d629726b6b7c1eb1ba52=
82b21d39d475a79f78c1c0a.jpg?e=3DDpdfhg6QOnN-n8As6C193UQJAZyL92xiSyZ7jTVwN9Q=
p6ceMBsLE2VC5vvsGJ9y409_twere1bkCU-BzHup364AqssCtkeiqq5O3gTXzcKr08iFvKAoP7F=
ldKKToyvetq6tpezZDueROI6Sr9c80kp9sVGuTGMM2m_9umE694EV5STj-5GwFwO1zpW5bZut9o=
eNe4diOsCRrApsijUcZ3L2GVKrDULd1ioXqgg" width=3D"200" border=3D"0" class=3D"=
" style=3D"display:block;width:100%" sib_img_id=3D"0"/></a> </td> </tr><tr =
class=3D"nl2go-responsive-hide"><td height=3D"15" style=3D"font-size:15px;l=
ine-height:15px">=C2=AD</td> </tr></tbody></table></td> </tr><tr><td class=
=3D"r12-c" align=3D"center"> <table cellspacing=3D"0" cellpadding=3D"0" bor=
der=3D"0" role=3D"presentation" width=3D"620" class=3D"r4-o" style=3D"table=
-layout:fixed"><tbody><tr class=3D"nl2go-responsive-hide"><td height=3D"7" =
style=3D"font-size:7px;line-height:7px">=C2=AD</td> </tr><tr><td class=3D"r=
13-i" style=3D"height:1px"> <table width=3D"100%" cellspacing=3D"0" cellpad=
ding=3D"0" border=3D"0" role=3D"presentation"><tbody><tr><td><table width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presenta=
tion" valign=3D"" class=3D"r13-i" height=3D"1" style=3D"border-top-style:so=
lid;background-clip:border-box;border-top-color:#b4b4b4;border-top-width:1p=
x;font-size:1px;line-height:1px"><tbody><tr><td height=3D"0" style=3D"font-=
size:0px;line-height:0px">=C2=AD</td> </tr></tbody></table></td> </tr></tbo=
dy></table></td> </tr><tr class=3D"nl2go-responsive-hide"><td height=3D"7" =
style=3D"font-size:7px;line-height:7px">=C2=AD</td> </tr></tbody></table></=
td> </tr></tbody></table></td> <td class=3D"nl2go-responsive-hide" width=3D=
"15" style=3D"font-size:0px;line-height:1px">=C2=AD </td> </tr></tbody></ta=
ble></th> </tr></tbody></table></td> </tr></tbody></table></td> </tr><tr><t=
d class=3D"r3-c" align=3D"center"> <table cellspacing=3D"0" cellpadding=3D"=
0" border=3D"0" role=3D"presentation" width=3D"100%" class=3D"r14-o" style=
=3D"table-layout:fixed;width:100%"><tbody><tr><td class=3D"r5-i" style=3D"b=
ackground-color:#ffffff"> <table width=3D"100%" cellspacing=3D"0" cellpaddi=
ng=3D"0" border=3D"0" role=3D"presentation"><tbody><tr><th width=3D"100%" v=
align=3D"top" class=3D"r6-c"> <table cellspacing=3D"0" cellpadding=3D"0" bo=
rder=3D"0" role=3D"presentation" width=3D"100%" class=3D"r7-o" style=3D"tab=
le-layout:fixed;width:100%"><tbody><tr><td class=3D"nl2go-responsive-hide" =
width=3D"15" style=3D"font-size:0px;line-height:1px">=C2=AD </td> <td valig=
n=3D"top" class=3D"r8-i"> <table width=3D"100%" cellspacing=3D"0" cellpaddi=
ng=3D"0" border=3D"0" role=3D"presentation"><tbody><tr><td class=3D"r15-c" =
align=3D"left"> <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" rol=
e=3D"presentation" width=3D"100%" class=3D"r16-o" style=3D"table-layout:fix=
ed;width:100%"><tbody><tr class=3D"nl2go-responsive-hide"><td height=3D"9" =
style=3D"font-size:9px;line-height:9px">=C2=AD</td> </tr><tr><td align=3D"c=
enter" valign=3D"top" class=3D"r17-i nl2go-default-textstyle" style=3D"colo=
r:#3b3f44;font-family:arial,helvetica,sans-serif;font-size:16px;line-height=
:1.5;text-align:center"> <div><h4 class=3D"default-heading4" style=3D"margi=
n:0;color:#1F2D3D;font-family:arial,helvetica,sans-serif;font-size:18px"><s=
pan style=3D"color:#3b92a8;font-family:Arial, helvetica, sans-serif;font-si=
ze:20px"><strong>Hi=C2=A0</strong></span><span style=3D"color:#3b92a8;font-=
size:20px">=E2=9D=A4=EF=B8=8F You have unread messages from Juliette (2)! C=
lick Here: https://bit.ly/3hlho06?wwbz =E2=9D=A4=EF=B8=8F</span><span style=
=3D"color:#3b92a8;font-family:Arial, helvetica, sans-serif;font-size:20px">=
<strong>, auf der Suche nach einer LED-Maske?</strong></span></h4></div> </=
td> </tr></tbody></table></td> </tr></tbody></table></td> <td class=3D"nl2g=
o-responsive-hide" width=3D"15" style=3D"font-size:0px;line-height:1px">=C2=
=AD </td> </tr></tbody></table></th> </tr></tbody></table></td> </tr></tbod=
y></table></td> </tr><tr><td class=3D"r3-c" align=3D"center"> <table cellsp=
acing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"1=
00%" class=3D"r4-o" style=3D"table-layout:fixed;width:100%"><tbody><tr clas=
s=3D"nl2go-responsive-hide"><td height=3D"8" style=3D"font-size:8px;line-he=
ight:8px;background-color:#ffffff">=C2=AD</td> </tr><tr><td class=3D"r18-i"=
 style=3D"background-color:#ffffff"> <table width=3D"100%" cellspacing=3D"0=
" cellpadding=3D"0" border=3D"0" role=3D"presentation"><tbody><tr><th width=
=3D"100%" valign=3D"top" class=3D"r6-c"> <table cellspacing=3D"0" cellpaddi=
ng=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" class=3D"r7-o" s=
tyle=3D"table-layout:fixed;width:100%"><tbody><tr><td class=3D"nl2go-respon=
sive-hide" width=3D"15" style=3D"font-size:0px;line-height:1px">=C2=AD </td=
> <td valign=3D"top" class=3D"r8-i"> <table width=3D"100%" cellspacing=3D"0=
" cellpadding=3D"0" border=3D"0" role=3D"presentation"><tbody><tr><td class=
=3D"r15-c" align=3D"left"> <table cellspacing=3D"0" cellpadding=3D"0" borde=
r=3D"0" role=3D"presentation" width=3D"100%" class=3D"r16-o" style=3D"table=
-layout:fixed;width:100%"><tbody><tr class=3D"nl2go-responsive-hide"><td he=
ight=3D"15" style=3D"font-size:15px;line-height:15px">=C2=AD</td> </tr><tr>=
<td align=3D"center" valign=3D"top" class=3D"r19-i nl2go-default-textstyle"=
 style=3D"color:#3b3f44;font-family:arial,helvetica,sans-serif;font-size:16=
px;line-height:1.5;text-align:center"> <div><p style=3D"margin:0">M=C3=B6ch=
test du eine Gesichtsbehandlung f=C3=BCr dein zu Hause? Besorge dir deine L=
ED-Maske mit 4 verschiedenen Licht-Wellenl=C3=A4ngen. Ideal f=C3=BCr dein G=
esicht!</p><p style=3D"margin:0">=C2=A0</p><p style=3D"margin:0">Nur diese =
Woche erh=C3=A4lts du 10% Rabatt auf die LED-Maske und ein GRATIS Jelly Cle=
anser von APOT.CARE dazu.=C2=A0</p><p style=3D"margin:0">W=C3=A4hle dein Cl=
eanser direkt im Warenkorb aus!</p><p style=3D"margin:0">=C2=A0</p><p style=
=3D"margin:0"><a href=3D"https://7d623.r.a.d.sendibm1.com/mk/cl/f/9tAnobcQ9=
3i_SANEtxpk2X9571nK0tvtonBIYQpyaB_1-KrOfai6_H4ApzAh7tIAYR3QxIX5CbeotRDeqPr8=
-YrZIMFhwwF48DAZxWDVb2Llcq9ViattuxiRzl83Gt7tSf1sqpw6o58u1RD-ea52LBX7KxIxshq=
WHaTtpROEtiniTpBZmpKbn-ZNvidi955PrmGlNapqfdngQpU46Fo6bBsjQPjEjsJw3otor9wt5c=
2Aplt3Tcd725xpD2oQU8HMcODfKuQvsf4SNJhWTIAC1KuR_h4Qf5Y3TTLJerbkhvXwOQS_briVo=
g3SkEKcgMVFZ-6LmA1Z6UGpRz4z6q2DV0FYv45x6VrEnacxu_inDIIEFNxGTH7rPIbJb0uiZRAY=
oHBZEqgNn1xZy5IN7O5cXsQwkQ15EEC3NQ" target=3D"_blank" style=3D"color:#3b92a=
8;text-decoration:underline" sib_link_id=3D"1">Jetzt bestellen!</a></p><p s=
tyle=3D"margin:0">=C2=A0</p></div> </td> </tr></tbody></table></td> </tr><t=
r><td class=3D"r3-c" align=3D"center"> <table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" role=3D"presentation" width=3D"496" class=3D"r20-o" sty=
le=3D"table-layout:fixed;width:496px"><tbody><tr class=3D"nl2go-responsive-=
hide"><td height=3D"15" style=3D"font-size:15px;line-height:15px">=C2=AD</t=
d> </tr><tr><td class=3D"r11-i" style=3D"font-size:0px;line-height:0px"> <a=
 href=3D"https://7d623.r.a.d.sendibm1.com/mk/cl/f/buWrkmewHJ9aapy5rOltVvthi=
_zRcT_3OBQxsd0RKPNgjP5v4m0X0weZqb73Y0vV_jOzJOJkh5BVtYm1s94lTx2rb-5ufrwKWmPN=
Deg9whyiVw0f3I_Z6eiqKH21YV871UF39Wpu32SbpLiPm91otUkxgXC59fdH9iDvRP480S4pCvv=
SbhImwhC3a8vTI-y2BCCdv4D78v3VIDucnJaCuqV5zaCbs7citJZum92uk2A7TeTJM503QtL6bH=
c6Abm_R8Odnf3Ne6LFkr5NAc07_PeLKWT1sGEpQwyIP0T4JTNu6sL7nAV74HL2A2opeovlWJEzn=
KXNQD6Iul2NeN9mA0SFQKjvT_D2LuxCfaTpTQn4QHP_GeDWjmsQ5GnZRyeZ4wS7D5Y-HbI" tar=
get=3D"_blank" style=3D"color:#3b92a8;text-decoration:underline" sib_link_i=
d=3D"2"> <img src=3D"https://7d623.img.a.d.sendibm1.com/im/4187663/655bf4d2=
1d381243337e7c8175be5569fca2fdcd06171b01c7b6a8bbdf411ad3.png?e=3DqJLDrmPtty=
xJR2kFafE09TFIFBejtNfy5pCzDYGlfQAXvyqZiglMuYJPucZ4-amUHr8ArtzhrtliEdiAf_7y_=
4kw3Tw8pmYoUeTafOFPk4bBiUAIge9336dcK7PXG1bT2-R0ofSTFqRzXjINpiQ8GV8I66o7BwbD=
cYSgqVQuv5rXaYLdoAZZgLLrxKZ9piCFX0cO1YMTfubrgCcBj0eI3qyyvKi3VgLH5p422ayZPIe=
bqK-bdmhQ_Q" width=3D"496" border=3D"0" class=3D"" style=3D"display:block;w=
idth:100%" sib_img_id=3D"9"/></a> </td> </tr><tr class=3D"nl2go-responsive-=
hide"><td height=3D"15" style=3D"font-size:15px;line-height:15px">=C2=AD</t=
d> </tr></tbody></table></td> </tr><tr><td class=3D"r3-c" align=3D"center">=
 <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentati=
on" width=3D"310" class=3D"r21-o" style=3D"table-layout:fixed;width:310px">=
<tbody><tr class=3D"nl2go-responsive-hide"><td height=3D"15" style=3D"font-=
size:15px;line-height:15px">=C2=AD</td> </tr><tr><td height=3D"18" align=3D=
"center" valign=3D"top" class=3D"r22-i nl2go-default-textstyle" style=3D"co=
lor:#3b3f44;font-family:arial,helvetica,sans-serif;font-size:16px;line-heig=
ht:1.5"> <!--[if mso]> <v:roundrect xmlns:v=3D"urn:schemas-microsoft-com:vm=
l" xmlns:w=3D"urn:schemas-microsoft-com:office:word" href=3D"https://7d623.=
r.a.d.sendibm1.com/mk/cl/f/7LnF_hbHcuFLgll64nZG31AVGmJqrXfv982EsW7JmlXJ5O--=
3yL6ecySkZRQgbj11V7cReQWxqmGyf4kMW6WgM6eLCoc4WROkZZtqnlwvS5zWJLrOAzd3WVL6so=
JiMeorfJ0ye36Vb9ZiyqzzxhiNAv3H7CiZDbqMuo7enQ7WsIOf637hmBgdA5jkD6Z0So8hTLjRk=
__TnZbU2RLfxa1vYl-riNekIgorLipVV_-vbI0VyYlRloixFFBPRHKsx9qmHueqaK8Y7SPn2th1=
1cCAf7H8DRxIJPGlnaJoySlHTeAQycxOqHsgkP5Pe1LgxVoVIxIRTmQiM-5z2mfwmfnxf_jCoD0=
AmmeWFLfYmhGRkN20uBnrBz-zlnklgcomam1RgMxdIX88GCPNu05Dy1jAQT05IPZ2B9l7g" sty=
le=3D"v-text-anchor:middle; height: 41px; width: 309px;" arcsize=3D"10%" fi=
llcolor=3D"#3b92a8" strokecolor=3D"#3b92a8" strokeweight=3D"1px" data-btn=
=3D"1" sib_link_id=3D"3"> <w:anchorlock> <div style=3D"display:none;"> <cen=
ter class=3D"default-button"><p>Jetzt anschauen</p></center> </div> </w:anc=
horlock></v:roundrect> <![endif]--> <!--[if !mso]><!-- --> <a href=3D"https=
://7d623.r.a.d.sendibm1.com/mk/cl/f/54RYae5i4exEbKLKpZsxdUZZWA0pCSC6sd89WWC=
4inf-mAkkLdFUZuY_jsxcJHye8fU2PCiZNKdN-CNtFFGC1nmsHk2aEXJZ1km10g2ONaTPawSawU=
vh1n6oPpksYVSIWa8FURYH0a2OOgecpiIOAKSFfMbJlSH9CrVpRAwf9-o5H_C2nOPjO3Avf7uOL=
P52u_Maum5Igrx9h-ujt3hGi1iwbJ01chmjQ3-xL7wN3wqDg-H2pMRvE-X7efmmuId5LC6gh_z9=
TVbuCk9VUijcmFXxqV9t4F4lbysUV7Al56BA8jeya80iHuEYBPIFpm4C3tSNKR9W07b5VxW9D-V=
jve15XuDtrlmH566whWlWDGH2xWExFbMlAimPOez22-_04oNurx_Joz19hUjh4PfjFiGZ0Phu32=
6_Qg" class=3D"r23-r default-button" target=3D"_blank" data-btn=3D"1" style=
=3D"line-height:1.15;text-decoration:none;border-style:solid;display:inline=
-block;-webkit-text-size-adjust:none;mso-hide:all;background-color:#3b92a8;=
border-color:#3b92a8;border-radius:4px;border-width:0px;color:#ffffff;font-=
family:arial,helvetica,sans-serif;font-size:16px;height:18px;padding-bottom=
:12px;padding-left:5px;padding-right:5px;padding-top:12px;width:300px" sib_=
link_id=3D"3"><p style=3D"margin:0">Jetzt anschauen</p></a> <!--<![endif]--=
> </td> </tr><tr class=3D"nl2go-responsive-hide"><td height=3D"15" style=3D=
"font-size:15px;line-height:15px">=C2=AD</td> </tr></tbody></table></td> </=
tr><tr><td class=3D"r15-c" align=3D"left"> <table cellspacing=3D"0" cellpad=
ding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" class=3D"r16-o=
" style=3D"table-layout:fixed;width:100%"><tbody><tr class=3D"nl2go-respons=
ive-hide"><td height=3D"15" style=3D"font-size:15px;line-height:15px">=C2=
=AD</td> </tr><tr><td align=3D"center" valign=3D"top" class=3D"r19-i nl2go-=
default-textstyle" style=3D"color:#3b3f44;font-family:arial,helvetica,sans-=
serif;font-size:16px;line-height:1.5;text-align:center"> <div><p style=3D"m=
argin:0">ACHTUNG! Du kannst nur 1 Geschenk pro Bestellung ausw=C3=A4hlen.</=
p></div> </td> </tr></tbody></table></td> </tr><tr><td class=3D"r15-c" alig=
n=3D"left"> <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D=
"presentation" width=3D"100%" class=3D"r16-o" style=3D"table-layout:fixed;w=
idth:100%"><tbody><tr class=3D"nl2go-responsive-hide"><td height=3D"15" sty=
le=3D"font-size:15px;line-height:15px">=C2=AD</td> </tr><tr><td align=3D"ce=
nter" valign=3D"top" class=3D"r24-i nl2go-default-textstyle" style=3D"color=
:#3b3f44;font-family:arial,helvetica,sans-serif;font-size:16px;line-height:=
1.5;text-align:center"> <div><p style=3D"margin:0"><span style=3D"font-size=
:18px">Dein pflegbar.ch - Team</span></p></div> </td> </tr><tr class=3D"nl2=
go-responsive-hide"><td height=3D"9" style=3D"font-size:9px;line-height:9px=
">=C2=AD</td> </tr></tbody></table></td> </tr></tbody></table></td> <td cla=
ss=3D"nl2go-responsive-hide" width=3D"15" style=3D"font-size:0px;line-heigh=
t:1px">=C2=AD </td> </tr></tbody></table></th> </tr></tbody></table></td> <=
/tr></tbody></table></td> </tr><tr><td class=3D"r3-c" align=3D"center"> <ta=
ble cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" =
width=3D"100%" class=3D"r4-o" style=3D"table-layout:fixed;width:100%"><tbod=
y><tr><td class=3D"r5-i" style=3D"background-color:#ffffff"> <table width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presenta=
tion"><tbody><tr><th width=3D"100%" valign=3D"top" class=3D"r6-c"> <table c=
ellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=
=3D"100%" class=3D"r7-o" style=3D"table-layout:fixed;width:100%"><tbody><tr=
><td class=3D"nl2go-responsive-hide" width=3D"15" style=3D"font-size:0px;li=
ne-height:1px">=C2=AD </td> <td valign=3D"top" class=3D"r8-i"> <table width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presenta=
tion"><tbody><tr><td class=3D"r12-c" align=3D"center"> <table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"620" c=
lass=3D"r4-o" style=3D"table-layout:fixed"><tbody><tr class=3D"nl2go-respon=
sive-hide"><td height=3D"7" style=3D"font-size:7px;line-height:7px">=C2=AD<=
/td> </tr><tr><td class=3D"r13-i" style=3D"height:1px"> <table width=3D"100=
%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"><=
tbody><tr><td><table width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" bor=
der=3D"0" role=3D"presentation" valign=3D"" class=3D"r13-i" height=3D"1" st=
yle=3D"border-top-style:solid;background-clip:border-box;border-top-color:#=
b4b4b4;border-top-width:1px;font-size:1px;line-height:1px"><tbody><tr><td h=
eight=3D"0" style=3D"font-size:0px;line-height:0px">=C2=AD</td> </tr></tbod=
y></table></td> </tr></tbody></table></td> </tr><tr class=3D"nl2go-responsi=
ve-hide"><td height=3D"7" style=3D"font-size:7px;line-height:7px">=C2=AD</t=
d> </tr></tbody></table></td> </tr></tbody></table></td> <td class=3D"nl2go=
-responsive-hide" width=3D"15" style=3D"font-size:0px;line-height:1px">=C2=
=AD </td> </tr></tbody></table></th> </tr></tbody></table></td> </tr></tbod=
y></table></td> </tr><tr><td class=3D"r3-c" align=3D"center"> <table cellsp=
acing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"1=
00%" class=3D"r4-o" style=3D"table-layout:fixed;width:100%"><tbody><tr><td =
class=3D"r5-i" style=3D"background-color:#ffffff"> <table width=3D"100%" ce=
llspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"><tbody=
><tr><th width=3D"100%" valign=3D"top" class=3D"r6-c"> <table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" =
class=3D"r7-o" style=3D"table-layout:fixed;width:100%"><tbody><tr><td class=
=3D"nl2go-responsive-hide" width=3D"15" style=3D"font-size:0px;line-height:=
1px">=C2=AD </td> <td valign=3D"top" class=3D"r8-i"> <table width=3D"100%" =
cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"><tbo=
dy><tr><td class=3D"r15-c" align=3D"left"> <table cellspacing=3D"0" cellpad=
ding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" class=3D"r16-o=
" style=3D"table-layout:fixed;width:100%"><tbody><tr class=3D"nl2go-respons=
ive-hide"><td height=3D"15" style=3D"font-size:15px;line-height:15px">=C2=
=AD</td> </tr><tr><td align=3D"center" valign=3D"top" class=3D"r19-i nl2go-=
default-textstyle" style=3D"color:#3b3f44;font-family:arial,helvetica,sans-=
serif;font-size:16px;line-height:1.5;text-align:center"> <div><p style=3D"m=
argin:0"><span style=3D"font-size:18px">Jetzt pflegbar-Fan werden:</span></=
p></div> </td> </tr></tbody></table></td> </tr></tbody></table></td> <td cl=
ass=3D"nl2go-responsive-hide" width=3D"15" style=3D"font-size:0px;line-heig=
ht:1px">=C2=AD </td> </tr></tbody></table></th> </tr></tbody></table></td> =
</tr></tbody></table></td> </tr><tr><td class=3D"r3-c" align=3D"center"> <t=
able cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"=
 width=3D"100%" class=3D"r4-o" style=3D"table-layout:fixed;width:100%"><tbo=
dy><tr><td class=3D"r5-i" style=3D"background-color:#ffffff"> <table width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presenta=
tion"><tbody><tr><th width=3D"100%" valign=3D"top" class=3D"r6-c"> <table c=
ellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=
=3D"100%" class=3D"r7-o" style=3D"table-layout:fixed;width:100%"><tbody><tr=
><td class=3D"nl2go-responsive-hide" width=3D"15" style=3D"font-size:0px;li=
ne-height:1px">=C2=AD </td> <td valign=3D"top" class=3D"r8-i"> <table width=
=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presenta=
tion"><tbody><tr><td class=3D"r25-c"> <table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" role=3D"presentation" width=3D"620" class=3D"r7-o" styl=
e=3D"table-layout:fixed;width:620px"><tbody><tr><td valign=3D"top" class=3D=
""> <table width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" =
role=3D"presentation"><tbody><tr><td class=3D"r26-c"> <table cellspacing=3D=
"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"620" clas=
s=3D"" style=3D"table-layout:fixed;width:620px"><tbody><tr class=3D"nl2go-r=
esponsive-hide"><td height=3D"15" width=3D"250" style=3D"font-size:15px;lin=
e-height:15px">=C2=AD </td> <td height=3D"15" style=3D"font-size:15px;line-=
height:15px">=C2=AD</td> <td height=3D"15" width=3D"250" style=3D"font-size=
:15px;line-height:15px">=C2=AD </td> </tr><tr><td class=3D"nl2go-responsive=
-hide" width=3D"250" style=3D"font-size:0px;line-height:1px">=C2=AD </td> <=
td class=3D""> <table width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" bo=
rder=3D"0" role=3D"presentation"><tbody><tr><th width=3D"40" valign=3D"" cl=
ass=3D"r27-c"> <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=
=3D"presentation" width=3D"100%" class=3D"r28-o" style=3D"table-layout:fixe=
d;width:100%"><tbody><tr class=3D"nl2go-responsive-hide"><td height=3D"5" s=
tyle=3D"font-size:5px;line-height:5px">=C2=AD</td> <td height=3D"5" width=
=3D"8" style=3D"font-size:5px;line-height:5px">=C2=AD </td> </tr><tr><td cl=
ass=3D"r29-i" style=3D"font-size:0px;line-height:0px"> <a href=3D"https://7=
d623.r.a.d.sendibm1.com/mk/cl/f/SpgB10QPwb9dOdTWPaYnp6-_39uY9HEFIgEZ5uEiCqw=
GFctb0_Kn1tDmgTDRgEQfu5AawFe5ZeBXANMQwDAGt5QtbKPvGJuS1AH83_IlHfPVDh-kILDhP6=
3QK6uNRBNGet3RqLo_HH0pQQ-lCRiTpRDHDQzO2TEktUR6VTpyCiw9F8ie2carsBcBhQhPGERYt=
Thre0iSsgSvScKlP-_uIXlYo9bMwcNojCpgkklvx0a4OPNlXgHfOOG5HIMYOiNQaAU8TqDazbwi=
vFKZyemEKYC5eSzeKJqYrCUhCA0CZz0LgnN3vQUnDAYhitc2q6ykHb4JZDhh8fT5No1JXTdV3sG=
Gd58K4eh6D_GbjkqhG_Uh_a-MsDZm5A" target=3D"_blank" style=3D"color:#3b92a8;t=
ext-decoration:underline" sib_link_id=3D"4"> <img src=3D"https://7d623.img.=
a.d.sendibm1.com/im/4187663/d3c8b0ec96a1db65c1da4cee9b25a0acd5b3ee3a906b722=
be3708d0c6bba1080.png?e=3DZAcHB_Ral2vom1c_5hXaoPLZ_gpddXWOUu6AYG7GB1yDzXpvG=
DMi0lSiRpmLUD751-yPhwwo8TfgJ3YqhHazNb5Am9Jr8_FE3aU27JW9c_noqSBC1-Atsc_g_q7J=
Nm-8jZ_AetUzGEjHURuhR8OIwbhceSiFLUqp5q-PA-x9cNxTGzwIYHdSQrMy0ctdbR8gb9gDMl1=
6wBH6JKy9vr4Log55W0aQKYgjoV9PybfM20wLX2UGWw" width=3D"32" border=3D"0" clas=
s=3D"" style=3D"display:block;width:100%" sib_img_id=3D"2"/></a> </td> <td =
class=3D"nl2go-responsive-hide" width=3D"8" style=3D"font-size:0px;line-hei=
ght:1px">=C2=AD </td> </tr><tr class=3D"nl2go-responsive-hide"><td height=
=3D"5" style=3D"font-size:5px;line-height:5px">=C2=AD</td> <td height=3D"5"=
 width=3D"8" style=3D"font-size:5px;line-height:5px">=C2=AD </td> </tr></tb=
ody></table></th> <th width=3D"40" valign=3D"" class=3D"r27-c"> <table cell=
spacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D=
"100%" class=3D"r28-o" style=3D"table-layout:fixed;width:100%"><tbody><tr c=
lass=3D"nl2go-responsive-hide"><td height=3D"5" style=3D"font-size:5px;line=
-height:5px">=C2=AD</td> <td height=3D"5" width=3D"8" style=3D"font-size:5p=
x;line-height:5px">=C2=AD </td> </tr><tr><td class=3D"r29-i" style=3D"font-=
size:0px;line-height:0px"> <a href=3D"https://7d623.r.a.d.sendibm1.com/mk/c=
l/f/EAw7cHF9rzBbzKd1IHBjSPVjh0pdT1G9bFWdYFnbm2utc1oU_ulNGryE_9xBGbYr_KfQeZn=
3zHLCC0yaOcgjQmo8x0QOxf-8KlnPciF6Pfk4PKyigvHOuWxgbJAM-RMhr8cliEvmsIGhD9ayvB=
OecmY63N5r0TW-eqkIGPbtg39Vl-IYKPBBwGHulxCa8hgzNREwFQdtY_AUvE3uFHb4qKjz32V5L=
acvhX9QrF1Rcbk9irb2s-EdpdCmHIkx1Rbg8gJdjnKdWMypSFkbGKWlRGXJ3NKvh5uNk-3XXNLJ=
nBviQTE-jgteTR0nfxjFp5gN5NBLbNGKHUCI5LnPmI_i6K_IbHTEl60ZGT4NT7YesRb-a1fpe3n=
mB4w" target=3D"_blank" style=3D"color:#3b92a8;text-decoration:underline" s=
ib_link_id=3D"5"> <img src=3D"https://7d623.img.a.d.sendibm1.com/im/4187663=
/f55f51748020b73fedcf7aec985420eef7c6de1e208737d85bb305b88053cf5a.png?e=3D8=
1t9A6UJCPM6umm9IVtDpTcqHsDUs6Zj_hDQqQw8IuprjdhMDC2ogmSHBhH5gDSMTR6LirtOd2ON=
DkdWZNsIbvRwVJl7w67W-fY5afq0H7M4wiSELsP2W5ouDlCUgJHhWv3F9pDq1hQLUP4Xv8fmTVs=
ASAktWtIHDQR3Y6escj0tihavzyW4b7GwFITnWUZz72hD0S2q2Wg9GUqDIXndhBjQm0pHFrIqGW=
u0TZpzBh-MoCi3E_g" width=3D"32" border=3D"0" class=3D"" style=3D"display:bl=
ock;width:100%" sib_img_id=3D"3"/></a> </td> <td class=3D"nl2go-responsive-=
hide" width=3D"8" style=3D"font-size:0px;line-height:1px">=C2=AD </td> </tr=
><tr class=3D"nl2go-responsive-hide"><td height=3D"5" style=3D"font-size:5p=
x;line-height:5px">=C2=AD</td> <td height=3D"5" width=3D"8" style=3D"font-s=
ize:5px;line-height:5px">=C2=AD </td> </tr></tbody></table></th> <th width=
=3D"40" valign=3D"" class=3D"r27-c"> <table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" class=3D"r28-o" st=
yle=3D"table-layout:fixed;width:100%"><tbody><tr class=3D"nl2go-responsive-=
hide"><td height=3D"5" style=3D"font-size:5px;line-height:5px">=C2=AD</td> =
<td height=3D"5" width=3D"8" style=3D"font-size:5px;line-height:5px">=C2=AD=
 </td> </tr><tr><td class=3D"r29-i" style=3D"font-size:0px;line-height:0px"=
> <a href=3D"https://7d623.r.a.d.sendibm1.com/mk/cl/f/p2m1Se2WocfleRn5u_8zg=
sl3Pqbw0YS2b2Dc46aNqS56Kp7-pukf7jrrpFEQPS3obPemuirTZKo-dArqtK9zPu4nowmfn8m9=
7hVwWSVNjRoxkO5bS9DdNJV611v6TfQYLyuXISsYpmFaAUA3-eHW2qx_fajCtO_cY0LPlrKQLY8=
Xv-nzK3tLaDH2Uh0hrceuZ5i5NnPrDsFsFynlH-45Tn3juyMjmdr2qLo78LPjKAd4IU27Odbnh5=
jEgwui_uqCJOen1ulGaO3iEMl-8YGR9Vyyng3rPya0XroXPMHfOeWqMA2nd-zl1b7QYa_rcOU4e=
QkyR8Pl3QqsQ_zN8EdG02Rk-DkF0pJZa7Vgh_wJDYcVHNYxkUP-yynX6gCFN9SVlM1RKy8lBUZq=
d3IrFAM" target=3D"_blank" style=3D"color:#3b92a8;text-decoration:underline=
" sib_link_id=3D"6"> <img src=3D"https://7d623.img.a.d.sendibm1.com/im/4187=
663/6884c41b25018e93a939102ab336aee801c9d038eef8c45ac0f766163b094128.png?e=
=3DYF3o7AMytnUjIbfUwZ2QF3_fe_7-Lzd9Azdk_UOQWh7TlflLtP-4LGGR-gD7DA1IxzXFGkyV=
kbyv8RltXxPuw1FZn0-570LgqvXTmVhduM2vEfgQfLNWtQSx5S7sQpD_onZTqZa3K3z19mCpB8i=
LZWwctLGq3u-ip3pe_l9QsXW1xIAd2Q7XTdcXZ3rJPhEpXb29-AHHPqU43gqR4vbWVRIaqGtEdp=
GBQz44HHbUPMQv7pIc" width=3D"32" border=3D"0" class=3D"" style=3D"display:b=
lock;width:100%" sib_img_id=3D"4"/></a> </td> <td class=3D"nl2go-responsive=
-hide" width=3D"8" style=3D"font-size:0px;line-height:1px">=C2=AD </td> </t=
r><tr class=3D"nl2go-responsive-hide"><td height=3D"5" style=3D"font-size:5=
px;line-height:5px">=C2=AD</td> <td height=3D"5" width=3D"8" style=3D"font-=
size:5px;line-height:5px">=C2=AD </td> </tr></tbody></table></th> </tr></tb=
ody></table></td> <td class=3D"nl2go-responsive-hide" width=3D"250" style=
=3D"font-size:0px;line-height:1px">=C2=AD </td> </tr><tr class=3D"nl2go-res=
ponsive-hide"><td height=3D"15" width=3D"250" style=3D"font-size:15px;line-=
height:15px">=C2=AD </td> <td height=3D"15" style=3D"font-size:15px;line-he=
ight:15px">=C2=AD</td> <td height=3D"15" width=3D"250" style=3D"font-size:1=
5px;line-height:15px">=C2=AD </td> </tr></tbody></table></td> </tr><!--[if =
!mso]><!-- --><tr><td class=3D"r30-c"> <table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0" role=3D"presentation" width=3D"620" class=3D"r31-o mobs=
how" style=3D"border:none;display:none;float:none;font-size:0;height:0;line=
-height:0;max-height:0;mso-hide:all;overflow:hidden;table-layout:fixed;visi=
bility:hidden;width:0"><tbody><tr class=3D"nl2go-responsive-hide"><td heigh=
t=3D"15" style=3D"font-size:15px;line-height:15px">=C2=AD</td> </tr><tr><td=
 class=3D"r32-i mobshow resp-table magic-resp" style=3D"border:none;display=
:none;float:none;font-size:0;height:0;line-height:0;max-height:0;mso-hide:a=
ll;overflow:hidden;visibility:hidden;width:0"> <table width=3D"100%" cellsp=
acing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"><tbody><tr=
><th width=3D"40" valign=3D"" class=3D"r33-c mobshow resp-table"> <table ce=
llspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=
=3D"100%" class=3D"r34-o mobshow" style=3D"border:none;display:none;float:n=
one;font-size:0;height:0;line-height:0;max-height:0;mso-hide:all;overflow:h=
idden;table-layout:fixed;visibility:hidden;width:0"><tbody><tr class=3D"nl2=
go-responsive-hide"><td height=3D"5" style=3D"font-size:5px;line-height:5px=
">=C2=AD</td> <td height=3D"5" width=3D"8" style=3D"font-size:5px;line-heig=
ht:5px">=C2=AD </td> </tr><tr><td class=3D"r35-i mobshow resp-table magic-r=
esp" style=3D"border:none;display:none;float:none;font-size:0px;height:0;li=
ne-height:0px;max-height:0;mso-hide:all;overflow:hidden;visibility:hidden;w=
idth:0"> <a href=3D"https://7d623.r.a.d.sendibm1.com/mk/cl/f/kBNP5lM9mMeyS_=
BDZe4pbvHya6lexcexdeb6BPpqxL6j1mpF7o8d4eqzngNsSjUAOfRFK2Gtyjn3fby8xooxbZMzg=
TaN2yDvlcp3gLk9ydPuS4QvGZ7SSR0X16dsdSYe3gf25lTcBwYQKZQpsMhdDe4OZsEROywab257=
R2UCHFqmyaXUmkm1DWV6Kg9dkoEDi4Uicqi-jEvnoEBiDrH2J5pk1-QGEDZHjikP8iaDWkC31pz=
njEfUhyfFfUSYRdrbySIL8ATQrR8ruvokBTybYvM-CzfyFKg11MTSg0FP0tKI4eyd8lQ2KhQVwb=
V49jTy5PiSKmUl_6csXzj6qYm-WKm2GKdUT7hG9S1Ts_ZeEJUTLIejxLK-uw" target=3D"_bl=
ank" style=3D"color:#3b92a8;text-decoration:underline" sib_link_id=3D"7"> <=
img src=3D"https://7d623.img.a.d.sendibm1.com/im/4187663/d3c8b0ec96a1db65c1=
da4cee9b25a0acd5b3ee3a906b722be3708d0c6bba1080.png?e=3DmQSYaxMC2eQ5r_IDmljm=
a8M70aY42MWOgT21jSNMtHDhCkN9HpwceCXERJlCTQWrvUEAdnmqH50I_vNM4GrtRhGmDrRIFX2=
4NwDBtW51TOP1JJlHtjNsKBe9ARaTu6arEm4AYddnGI8vycVKgJHkDCY6exbA7u6aIt6QbwwNCD=
8heAT8N4HfBgkseerYebdlEj7JKk18A0hPqF7Bw0vyzdgS_ignPvfrHa7fmLjWM0sIDucTpQ" w=
idth=3D"32" border=3D"0" class=3D" mobshow resp-table no-show-for-you" styl=
e=3D"border:none;float:none;font-size:0;height:0;line-height:0;max-height:0=
;mso-hide:all;overflow:hidden;table-layout:fixed;visibility:hidden;display:=
block;width:100%" sib_img_id=3D"2"/></a> </td> <td class=3D"nl2go-responsiv=
e-hide" width=3D"8" style=3D"font-size:0px;line-height:1px">=C2=AD </td> </=
tr><tr class=3D"nl2go-responsive-hide"><td height=3D"5" style=3D"font-size:=
5px;line-height:5px">=C2=AD</td> <td height=3D"5" width=3D"8" style=3D"font=
-size:5px;line-height:5px">=C2=AD </td> </tr></tbody></table></th> <th widt=
h=3D"40" valign=3D"" class=3D"r33-c mobshow resp-table"> <table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" =
class=3D"r34-o mobshow" style=3D"border:none;display:none;float:none;font-s=
ize:0;height:0;line-height:0;max-height:0;mso-hide:all;overflow:hidden;tabl=
e-layout:fixed;visibility:hidden;width:0"><tbody><tr class=3D"nl2go-respons=
ive-hide"><td height=3D"5" style=3D"font-size:5px;line-height:5px">=C2=AD</=
td> <td height=3D"5" width=3D"8" style=3D"font-size:5px;line-height:5px">=
=C2=AD </td> </tr><tr><td class=3D"r35-i mobshow resp-table magic-resp" sty=
le=3D"border:none;display:none;float:none;font-size:0px;height:0;line-heigh=
t:0px;max-height:0;mso-hide:all;overflow:hidden;visibility:hidden;width:0">=
 <a href=3D"https://7d623.r.a.d.sendibm1.com/mk/cl/f/Xyzh-1Kb3ED5Fj7Hc9XY60=
huh7VQig7BvwwjysCjqZ0Bj0u4M3efS0lhrNXGvZrHsSKPtyarc6z7gKtmka_Kl1kKGdURsR2sL=
Uw8BdrP7ZaqsLFX9EdJczR-MVtXYde6Rp5VmRKvaeC_fb3Le3pcZwgIIFFRMHtV0O1WdZGgWrqR=
XSRQUqxEvyLDF3gTWcrj-242oZOoikbUGPp2fUId4kBW9V5QVABaTc6KrZuDtPKxdGQrB_VDhmR=
AKgMDKdMIA9ILi86C93gtwkxzJhJEWy4eeARRrG3IaXl83LAvdRJAsaPGW-cohvAkNcv0meOTFL=
bWZCO4yILvq-6rQ8LYJzqF_GhzV1PP3Xpzh-ZSbcw8vn2aXUw2m28" target=3D"_blank" st=
yle=3D"color:#3b92a8;text-decoration:underline" sib_link_id=3D"8"> <img src=
=3D"https://7d623.img.a.d.sendibm1.com/im/4187663/f55f51748020b73fedcf7aec9=
85420eef7c6de1e208737d85bb305b88053cf5a.png?e=3DKqBWBJBcpld2GTPyJ6BhGVb19Wp=
XTxRw0fmKOJXqHoGUi3fh3fy42D4Rm_mFkqokzNts06xVgxWi8_CuWQ6UTXVkTHv1Feo8to50o7=
ySm8QQ_9_jAaCmb2hac0qW0k2CeynrIiyIZb0MNGXx0fTm6W5mGW-RymtqUmuqgHMDOTRNg6Kid=
RZTgbAh6yfk_CaiZbZZ7eKmi8MRsrm2mWzTnKAVftVd1GvdPjH3cl4VrLvMkUk0Jos" width=
=3D"32" border=3D"0" class=3D" mobshow resp-table no-show-for-you" style=3D=
"border:none;float:none;font-size:0;height:0;line-height:0;max-height:0;mso=
-hide:all;overflow:hidden;table-layout:fixed;visibility:hidden;display:bloc=
k;width:100%" sib_img_id=3D"3"/></a> </td> <td class=3D"nl2go-responsive-hi=
de" width=3D"8" style=3D"font-size:0px;line-height:1px">=C2=AD </td> </tr><=
tr class=3D"nl2go-responsive-hide"><td height=3D"5" style=3D"font-size:5px;=
line-height:5px">=C2=AD</td> <td height=3D"5" width=3D"8" style=3D"font-siz=
e:5px;line-height:5px">=C2=AD </td> </tr></tbody></table></th> <th width=3D=
"40" valign=3D"" class=3D"r33-c mobshow resp-table"> <table cellspacing=3D"=
0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" clas=
s=3D"r34-o mobshow" style=3D"border:none;display:none;float:none;font-size:=
0;height:0;line-height:0;max-height:0;mso-hide:all;overflow:hidden;table-la=
yout:fixed;visibility:hidden;width:0"><tbody><tr class=3D"nl2go-responsive-=
hide"><td height=3D"5" style=3D"font-size:5px;line-height:5px">=C2=AD</td> =
<td height=3D"5" width=3D"8" style=3D"font-size:5px;line-height:5px">=C2=AD=
 </td> </tr><tr><td class=3D"r35-i mobshow resp-table magic-resp" style=3D"=
border:none;display:none;float:none;font-size:0px;height:0;line-height:0px;=
max-height:0;mso-hide:all;overflow:hidden;visibility:hidden;width:0"> <a hr=
ef=3D"https://7d623.r.a.d.sendibm1.com/mk/cl/f/wZ9pLyREiqYI90FleNQFTpEjF7G6=
8h8tCBT45mg4ffO3m5MIQcGVxe4qMk5nsLe7OcBCva3ROEpsTLbnKY7WkOmGUKep4XVMgu09Wll=
Du4hF1q8d2fSJ0AtQzNA5c0_Rm5djqxXG0zfdtCZqCNjmMVGZdgKrMzDe7bRw-kG64NJHV2Ja3G=
NqY8zbuWEabxtXjCyLRxWVMq9J7bHjQq0m50e03HYYq9HP8zjLKAZOghBvf_jZbZ5I2He6ZC3uI=
ESSIGIFiJhm1fkIpgKgI3jmFG6dTKLb8IG1I63KZYtPuQRC0PNnjLRLN3L32XNtzeTKpEH_4KcN=
WLKZLbXG6Sa49oMq-nltr3jefSEQGn987wtjTGGbfkVVQJH0Y7aXBJif5TVAzz4a7HhmeLPXJlc=
" target=3D"_blank" style=3D"color:#3b92a8;text-decoration:underline" sib_l=
ink_id=3D"9"> <img src=3D"https://7d623.img.a.d.sendibm1.com/im/4187663/688=
4c41b25018e93a939102ab336aee801c9d038eef8c45ac0f766163b094128.png?e=3DImvUi=
WRN_XBSfx4pXmSccY2vKfNzApOw_dVWUUVXAvZZCkWTc4NKeWAgbSIuNrOsUGttZOhhhZoTe5pw=
7sNKH2qk2BqEfZGmxVx57jLLODYe9s4J1a3ohSsvpOLcBhchwg2oUVqmIDIXwjjS22ZkuGAhg0v=
60ArGLZ2grr6lNNplnfE2dhPeiCWr9p7MlRM31sY42MHqg-WcK9chmrW4OIIsNpZ3pd1NGcZX5Y=
ON1IRkUUjx" width=3D"32" border=3D"0" class=3D" mobshow resp-table no-show-=
for-you" style=3D"border:none;float:none;font-size:0;height:0;line-height:0=
;max-height:0;mso-hide:all;overflow:hidden;table-layout:fixed;visibility:hi=
dden;display:block;width:100%" sib_img_id=3D"4"/></a> </td> <td class=3D"nl=
2go-responsive-hide" width=3D"8" style=3D"font-size:0px;line-height:1px">=
=C2=AD </td> </tr><tr class=3D"nl2go-responsive-hide"><td height=3D"5" styl=
e=3D"font-size:5px;line-height:5px">=C2=AD</td> <td height=3D"5" width=3D"8=
" style=3D"font-size:5px;line-height:5px">=C2=AD </td> </tr></tbody></table=
></th> </tr></tbody></table></td> </tr><tr class=3D"nl2go-responsive-hide">=
<td height=3D"15" style=3D"font-size:15px;line-height:15px">=C2=AD</td> </t=
r></tbody></table></td> </tr><!--<![endif]--></tbody></table></td> </tr></t=
body></table></td> </tr></tbody></table></td> <td class=3D"nl2go-responsive=
-hide" width=3D"15" style=3D"font-size:0px;line-height:1px">=C2=AD </td> </=
tr></tbody></table></th> </tr></tbody></table></td> </tr></tbody></table></=
td> </tr><tr><td class=3D"r3-c" align=3D"center"> <table cellspacing=3D"0" =
cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" class=
=3D"r4-o" style=3D"table-layout:fixed;width:100%"><tbody><tr class=3D"nl2go=
-responsive-hide"><td height=3D"20" style=3D"font-size:20px;line-height:20p=
x;background-color:#3b92a8">=C2=AD</td> </tr><tr><td class=3D"r36-i" style=
=3D"background-color:#3b92a8"> <table width=3D"100%" cellspacing=3D"0" cell=
padding=3D"0" border=3D"0" role=3D"presentation"><tbody><tr><th width=3D"10=
0%" valign=3D"top" class=3D"r6-c"> <table cellspacing=3D"0" cellpadding=3D"=
0" border=3D"0" role=3D"presentation" width=3D"100%" class=3D"r7-o" style=
=3D"table-layout:fixed;width:100%"><tbody><tr><td class=3D"nl2go-responsive=
-hide" width=3D"15" style=3D"font-size:0px;line-height:1px">=C2=AD </td> <t=
d valign=3D"top" class=3D"r8-i"> <table width=3D"100%" cellspacing=3D"0" ce=
llpadding=3D"0" border=3D"0" role=3D"presentation"><tbody><tr><td class=3D"=
r15-c" align=3D"left"> <table cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0" role=3D"presentation" width=3D"100%" class=3D"r16-o" style=3D"table-lay=
out:fixed;width:100%"><tbody><tr class=3D"nl2go-responsive-hide"><td height=
=3D"15" style=3D"font-size:15px;line-height:15px">=C2=AD</td> </tr><tr><td =
align=3D"center" valign=3D"top" class=3D"r37-i nl2go-default-textstyle" sty=
le=3D"color:#3b3f44;font-family:arial,helvetica,sans-serif;font-size:18px;l=
ine-height:1.5;text-align:center"> <div><p style=3D"margin:0"><span style=
=3D"color:#ffffff">pflegbar.ch</span></p></div> </td> </tr></tbody></table>=
</td> </tr><tr><td class=3D"r15-c" align=3D"left"> <table cellspacing=3D"0"=
 cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" class=
=3D"r16-o" style=3D"table-layout:fixed;width:100%"><tbody><tr><td align=3D"=
center" valign=3D"top" class=3D"r38-i nl2go-default-textstyle" style=3D"col=
or:#3b3f44;font-family:arial,helvetica,sans-serif;font-size:18px;line-heigh=
t:1.1;text-align:center"> <div><p style=3D"margin:0;font-size:14px"><span s=
tyle=3D"color:#ffffff;font-size:13px">4052 Basel</span></p><p style=3D"marg=
in:0;font-size:14px">=C2=A0</p><p style=3D"margin:0"><span style=3D"color:#=
ffffff;font-size:13px">061 551 08 88</span><br/><span style=3D"color:#fffff=
f;font-size:13px">info@pflegbar.ch</span><br/><span style=3D"color:#ffffff;=
font-size:13px">https://pflegbar.ch/</span></p></div> </td> </tr></tbody></=
table></td> </tr><tr><td class=3D"r15-c" align=3D"left"> <table cellspacing=
=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation" width=3D"100%" =
class=3D"r16-o" style=3D"table-layout:fixed;width:100%"><tbody><tr class=3D=
"nl2go-responsive-hide"><td height=3D"15" style=3D"font-size:15px;line-heig=
ht:15px">=C2=AD</td> </tr><tr><td align=3D"center" valign=3D"top" class=3D"=
r37-i nl2go-default-textstyle" style=3D"color:#3b3f44;font-family:arial,hel=
vetica,sans-serif;font-size:18px;line-height:1.5;text-align:center"> <div><=
p style=3D"margin:0;font-size:14px"><span style=3D"color:#ffffff">This emai=
l was sent to=C2=A0linux1394-devel@lists.sourceforge.net</span></p></div> <=
/td> </tr></tbody></table></td> </tr><tr><td class=3D"r15-c" align=3D"left"=
> <table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentat=
ion" width=3D"100%" class=3D"r16-o" style=3D"table-layout:fixed;width:100%"=
><tbody><tr><td align=3D"center" valign=3D"top" class=3D"r38-i nl2go-defaul=
t-textstyle" style=3D"color:#3b3f44;font-family:arial,helvetica,sans-serif;=
font-size:18px;line-height:1.5;text-align:center"> <div><p style=3D"margin:=
0;font-size:14px"><span style=3D"color:#ffffff">You&#39;ve received this em=
ail because you&#39;ve subscribed to our newsletter.</span></p></div> </td>=
 </tr></tbody></table></td> </tr><tr><td class=3D"r15-c" align=3D"left"> <t=
able cellspacing=3D"0" cellpadding=3D"0" border=3D"0" role=3D"presentation"=
 width=3D"100%" class=3D"r16-o" style=3D"table-layout:fixed;width:100%"><tb=
ody><tr class=3D"nl2go-responsive-hide"><td height=3D"15" style=3D"font-siz=
e:15px;line-height:15px">=C2=AD</td> </tr><tr><td align=3D"center" valign=
=3D"top" class=3D"r39-i nl2go-default-textstyle" style=3D"color:#3b3f44;fon=
t-family:arial,helvetica,sans-serif;font-size:18px;line-height:1.5;text-ali=
gn:center"> <div><p style=3D"margin:0;font-size:14px"><span condition=3D"ht=
tps://7d623.r.a.d.sendibm1.com/mk/up/ZUHES_QO_lkp0arhd-EaVxG397ZmelCMXEOULw=
" style=3D"display:none"><a href=3D"https://7d623.r.a.d.sendibm1.com/mk/up/=
ZUHES_QO_lkp0arhd-EaVxG397ZmelCMXEOULw?utm_source=3Dsendinblue&utm_campaign=
=3DWeekly Special - LED Maske 10prozent Jelly Cleanser Gratis&utm_medium=3D=
email" target=3D"_blank" style=3D"color:#3b92a8;text-decoration:underline">=
Update your preference</a> | </span><a href=3D"https://7d623.r.a.d.sendibm1=
.com/mk/mr/BOH4TaRzAyzBOi64G0Lddj8SD2tHICT2yTpyzoH0FVPFC9Xlhnvuh_ueiJI7RuPq=
C44o9vnqCBb7yDmgBLrLWD-f_8CPdDGbxAHkYun8gOu2yWNzq3edoFCRQrJ5JLetl48kVzM" st=
yle=3D"color:#3b92a8;text-decoration:underline"><span style=3D"color:#fffff=
f">View in browser</span></a><span style=3D"color:#ffffff"> | </span><a hre=
f=3D"https://7d623.r.a.d.sendibm1.com/mk/un/pOqaM73LXwfd_0jxGRy5TgVdTpLGS2t=
vYenmjyDi3i99exOLK7VsyeQBz60qsykNUGnAWHC34B0DFRfnBLbziI6kPIF7KXogjNc9kAZN6q=
YJOsriOeJfFu0vu2eCXYOZCa8XwGTyM5i719oTcn8-Ff4qkYwh-Aqia6xlCNTkRs7jZRGIEcZeI=
Fn8tlsODtY" target=3D"_blank" style=3D"color:#3b92a8;text-decoration:underl=
ine"><span style=3D"color:#ffffff">Unsubscribe</span></a></p></div> </td> <=
/tr><tr class=3D"nl2go-responsive-hide"><td height=3D"15" style=3D"font-siz=
e:15px;line-height:15px">=C2=AD</td> </tr></tbody></table></td> </tr></tbod=
y></table></td> <td class=3D"nl2go-responsive-hide" width=3D"15" style=3D"f=
ont-size:0px;line-height:1px">=C2=AD </td> </tr></tbody></table></th> </tr>=
</tbody></table></td> </tr><tr class=3D"nl2go-responsive-hide"><td height=
=3D"20" style=3D"font-size:20px;line-height:20px;background-color:#3b92a8">=
=C2=AD</td> </tr></tbody></table></td> </tr></tbody></table></td> </tr></tb=
ody></table></td> </tr></tbody></table> <div><img width=3D"1" height=3D"1" =
src=3D"https://7d623.r.a.d.sendibm1.com/mk/op/U0Jr76TbghCDPFr8lN28oxScbeNnM=
wvd2Kop3ohVTjaMB-VTP1tdmEdIycZPkbhNKAk2UGdKkC7FCdGgz8i4D4IwvGUBAZ46ufilitAD=
0kvbd91LI-PYgidzCQw6sg90u3stLZE"/></div> </body></html>

---------?=_59099-6380132882099--



--===============4132346710261335371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4132346710261335371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4132346710261335371==--


