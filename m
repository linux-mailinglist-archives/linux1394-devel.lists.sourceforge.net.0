Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AD743C32A
	for <lists+linux1394-devel@lfdr.de>; Wed, 27 Oct 2021 08:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rlJ0jK9W7AhLwW+1j0//TnrosKK7Rd+BmIElTgHt668=; b=WI/lWqOlzVlPYPoRShwb0xWQXN
	mP0blu9OwMkTLIHgXl42xpQHlqjmlEQGV4qYP+A+MGSgZa2kFNi7laczorBbXDBBovbhnhY9XHWU9
	44cH1TtI7Z7KFd8yg+9RIZvxkBiKfbd9jESoEGq8k3MFeBver9hyDLlJmRxWGRYU+rZI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mfcgF-0002Bh-E9; Wed, 27 Oct 2021 06:44:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <contacts@robertwalters.co.jp>) id 1mfcfy-0002A0-LK
 for linux1394-devel@lists.sourceforge.net; Wed, 27 Oct 2021 06:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=egYFMRivqdpvWC6lTzfbk0wiD5BplBs2hvElcMhvohQ=; b=EvQ36PuOmmsfAonRHFovppXEvc
 hRmKGyMVtbXUkaRGHF0POyUACCm8Lrg9oXr9OXXU+vs3vRXqEZuQWQfW46W4D4yyNq+ie+nMlBGb9
 99XbjV+njxwMpyhtgkPTf4ODzMEbq66JjXhMSSuBgDteny/xwvcrha1BO63t3Ofrgc+A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=egYFMRivqdpvWC6lTzfbk0wiD5BplBs2hvElcMhvohQ=; b=J
 at+KMUo/uohsRulECR3qymtBl8unV02loExj+zuB1RQj4jGpQMOHLb6ikvQY8aiLXht9UFp9lsddk
 ST994ZU55Abr2SPMvSxGGdUMbDPPSzxK3A27SOIMfwlxlyGbqKRkxcEPib5ZqPLYJO8RGGE0//HD0
 8uu6stqLtioGxOIk=;
Received: from [104.248.1.211] (helo=mail0.robertwalters.co.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mfcfR-000s7p-8e
 for linux1394-devel@lists.sourceforge.net; Wed, 27 Oct 2021 06:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default;
 d=robertwalters.co.jp; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=contacts@robertwalters.co.jp;
 bh=egYFMRivqdpvWC6lTzfbk0wiD5BplBs2hvElcMhvohQ=;
 b=yxY846SrjR768jEtVOnS9YHRqdSssA8h1T473SDfBlsfWEUNXU08u4f3HjyfJhlK5tIX6h0nxbw7
 eosyGwQkp1BEjIHV8DQRxgoiYEI7CPnrEclCvc4mcYWfmcQSwOhkji8BxkyHh0IVD4/2v7E28P6D
 pxCTBc7gbzMQzdU6dyE=
To: linux1394-devel@lists.sourceforge.net
Subject: Authentication error in linux1394-devel@lists.sourceforge.net on
 10/26/2021 10:25:21 p.m.
Date: 26 Oct 2021 22:25:21 -0700
Message-ID: <20211026222521.BE8A009C859AEF1B@robertwalters.co.jp>
MIME-Version: 1.0
X-Headers-End: 1mfcfR-000s7p-8e
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
From: "lists.sourceforge.net via linux1394-devel"
 <linux1394-devel@lists.sourceforge.net>
Reply-To: "lists.sourceforge.net" <contacts@robertwalters.co.jp>
Content-Type: multipart/mixed; boundary="===============2645135093463017822=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2645135093463017822==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.19699"></HEAD>
<body>
<table style=3D"FONT-SIZE: 11px; FONT-FAMILY: &quot;Open Sans&quot;, Verdan=
a, Arial, Helvetica, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TE=
XT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(51,51,51); FONT-STYLE: nor=
mal; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; BACKGROUND-COLOR: rgb(2=
45,246,246); font-variant-ligatures: normal; font-variant-caps: normal; -we=
bkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoratio=
n-color: initial; text-decoration-thickness: initial" cellspacing=3D"0" cel=
lpadding=3D"0" width=3D"100%" bgcolor=3D"#f5f6f6" border=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-LEFT: 0px; PADDING-RIGHT: 0px" align=3D"center">
<table class=3D"w100percent" cellspacing=3D"0" cellpadding=3D"0" width=3D"6=
08" border=3D"0">
<TBODY>
<TR>
<td style=3D"PADDING-BOTTOM: 25px; PADDING-TOP: 29px" align=3D"center"><BR>=
</TD></TR>
<TR>
<td>
<table cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 2px; HEIGHT: 2px; LINE-HEIGHT: 2px" height=3D"2"><i=
mg class=3D"w100percent" style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDT=
H: 0px; BORDER-BOTTOM-WIDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; bo=
rder-image: none" src=3D"https://api.identityguard.com/cms/notifications/em=
ail/chrome/shadow-top.jpg?brand=3Didguard&amp;=3Dnull" width=3D"608" height=
=3D"2"></TD></TR>
<TR>
<td>
<table class=3D"w100percent" style=3D"WIDTH: 608px" cellspacing=3D"0" cellp=
adding=3D"0" width=3D"608" border=3D"0">
<TBODY>
<TR>
<td style=3D"WIDTH: 1px" bgcolor=3D"#f1f2f3" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD>
<td style=3D"WIDTH: 1px" bgcolor=3D"#eeeff0" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD>
<td style=3D"WIDTH: 1px" bgcolor=3D"#e9e9ea" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD>
<td style=3D"WIDTH: 1px" bgcolor=3D"#e0e1e2" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD>
<td class=3D"w100percent" style=3D"WIDTH: 600px" bgcolor=3D"#ffffff" valign=
=3D"top" width=3D"600">
<table cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 18px; FONT-FAMILY: Hind, sans-serif; FONT-WEIGHT: 7=
00; COLOR: rgb(233,149,104); PADDING-TOP: 25px; PADDING-LEFT: 30px; LINE-HE=
IGHT: 28px; PADDING-RIGHT: 30px" align=3D"left">Login Session Authenticatio=
n<BR></TD></TR>
<TR>
<td style=3D"FONT-SIZE: 14px; FONT-FAMILY: Hind, sans-serif; COLOR: rgb(54,=
68,73); PADDING-BOTTOM: 30px; PADDING-TOP: 30px; PADDING-LEFT: 30px; LINE-H=
EIGHT: 16px; PADDING-RIGHT: 30px" align=3D"left">
<P class=3DsalutationText style=3D"FONT-SIZE: 14px; FONT-FAMILY: Hind, sans=
-serif; FONT-WEIGHT: 500 !important; PADDING-BOTTOM: 0px !important; PADDIN=
G-TOP: 0px !important; PADDING-LEFT: 0px !important; MARGIN: 0px; PADDING-R=
IGHT: 0px !important">This notification is addressed to your e-mail linux13=
94-devel@lists.sourceforge.net</P>
<P class=3DsalutationText style=3D"FONT-SIZE: 14px; FONT-FAMILY: Hind, sans=
-serif; FONT-WEIGHT: 500 !important; PADDING-BOTTOM: 0px !important; PADDIN=
G-TOP: 0px !important; PADDING-LEFT: 0px !important; MARGIN: 0px; PADDING-R=
IGHT: 0px !important"><BR></P><BR>
<P style=3D"FONT-SIZE: 14px; FONT-FAMILY: Hind, sans-serif; PADDING-BOTTOM:=
 0px !important; PADDING-TOP: 0px !important; PADDING-LEFT: 0px !important;=
 MARGIN: 0px; PADDING-RIGHT: 0px !important" align=3Djustify>You have pendi=
ng e-mails, (9) stuck on the server.</P>
<P style=3D"FONT-SIZE: 14px; FONT-FAMILY: Hind, sans-serif; PADDING-BOTTOM:=
 0px !important; PADDING-TOP: 0px !important; PADDING-LEFT: 0px !important;=
 MARGIN: 0px; PADDING-RIGHT: 0px !important" align=3Djustify><BR></P>
<P style=3D"FONT-SIZE: 14px; FONT-FAMILY: Hind, sans-serif; PADDING-BOTTOM:=
 0px !important; PADDING-TOP: 0px !important; PADDING-LEFT: 0px !important;=
 MARGIN: 0px; PADDING-RIGHT: 0px !important" align=3Djustify>An error occur=
red while authenticating the current session.</P><BR>
<P class=3DsignatureText style=3D"FONT-SIZE: 14px; FONT-FAMILY: Hind, sans-=
serif; FONT-WEIGHT: 500 !important; PADDING-BOTTOM: 0px !important; PADDING=
-TOP: 0px !important; PADDING-LEFT: 0px !important; MARGIN: 0px; PADDING-RI=
GHT: 0px !important">Authenticate your session below to receive pending ema=
ils (9).<BR><BR></P></TD></TR>
<TR>
<td style=3D"PADDING-BOTTOM: 30px" align=3D"center">
<table height=3D"34" cellpadding=3D"0" width=3D"227" border=3D"0">
<TBODY>
<TR>
<td style=3D"FONT-SIZE: 12px; HEIGHT: 30px; FONT-FAMILY: Hind, sans-serif; =
WHITE-SPACE: nowrap; PADDING-LEFT: 50px; LINE-HEIGHT: 16px; PADDING-RIGHT: =
50px" bgcolor=3D"#e99568" height=3D"30" valign=3D"middle" align=3D"center">=
<FONT color=3D#ffffff><B><A style=3D"COLOR: rgb(0,105,166)" href=3D"https:/=
/rebrand.ly/8d520bfvaqujw/?email=3Dlinux1394-devel@lists.sourceforge.net" r=
el=3Dnoreferrer target=3D_blank>SESSION AUTHENTICATION</A> </B></FONT></TD>=
</TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
<td style=3D"WIDTH: 1px" bgcolor=3D"#e0e1e2" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD>
<td style=3D"WIDTH: 1px" bgcolor=3D"#e9e9ea" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD>
<td style=3D"WIDTH: 1px" bgcolor=3D"#eeeff0" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD>
<td style=3D"WIDTH: 1px" bgcolor=3D"#f1f2f3" valign=3D"top" width=3D"1"><im=
g style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-W=
IDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; border-image: none" src=
=3D"https://api.identityguard.com/cms/notifications/email/chrome/spacer.gif=
?brand=3Didguard&amp;=3Dnull" width=3D"1"></TD></TR></TBODY></TABLE></TD></=
TR>
<TR>
<td style=3D"FONT-SIZE: 5px; HEIGHT: 5px; LINE-HEIGHT: 5px" height=3D"5"><i=
mg class=3D"w100percent" style=3D"BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDT=
H: 0px; BORDER-BOTTOM-WIDTH: 0px; DISPLAY: block; BORDER-TOP-WIDTH: 0px; bo=
rder-image: none" src=3D"https://api.identityguard.com/cms/notifications/em=
ail/chrome/shadow-bottom.jpg?brand=3Didguard&amp;=3Dnull" width=3D"608" hei=
ght=3D"5"></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<td style=3D"FONT-SIZE: 11px; FONT-FAMILY: Hind, sans-serif; COLOR: rgb(160=
,171,175); PADDING-BOTTOM: 10px; PADDING-TOP: 30px; PADDING-LEFT: 5px; PADD=
ING-RIGHT: 5px" align=3D"left">
<P><SPAN style=3D"FONT-FAMILY: Hind, sans-serif; FONT-WEIGHT: normal; COLOR=
: rgb(160,171,175); TEXT-ALIGN: left">
This email has been sent to linux1394-devel@lists.sourceforge.net because i=
t contains important information about your account. If you previously unsu=
bscribed from Identity Guard&reg;&#65039; marketing emails, you will no lon=
ger receive special offers, but will continue to receive emails related to =
your account. If you believe you received this email in error, please send =
it to our customer service team at linux1394-devel@lists.sourceforge.net</S=
PAN></P>
<P><SPAN style=3D"FONT-FAMILY: Hind, sans-serif; FONT-WEIGHT: normal; COLOR=
: rgb(160,171,175); TEXT-ALIGN: left">We will never ask you for personal in=
formation in an e-mail. We respect your privacy. If you no longer wish to r=
eceive Identity Guard&reg;&#65039; marketing emails, you can unsubscribe at=
 any time.</SPAN></P>
<P><SPAN style=3D"FONT-FAMILY: Hind, sans-serif; FONT-WEIGHT: normal; COLOR=
: rgb(160,171,175); TEXT-ALIGN: left">&copy;&#65039; 2021&nbsp;<A href=3D"m=
ailto:anna.piotrowska@wtorsteel.pl">linux1394-devel@lists.sourceforge.net</=
A> Inc.</SPAN></P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<P><BR></P></BODY></HTML>


--===============2645135093463017822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2645135093463017822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2645135093463017822==--
