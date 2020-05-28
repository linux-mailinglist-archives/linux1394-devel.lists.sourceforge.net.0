Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 275141E5DED
	for <lists+linux1394-devel@lfdr.de>; Thu, 28 May 2020 13:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	MIME-Version:To:Subject:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2fWU91PCimUS1taFTHpWzc0zFg+PvBLCsuGg33487M0=; b=mR0cmcmByEI4j4272Y3zUYY1WY
	7HJJ6Vrngs7KbWj58TBqNjfRMKuQsIS0KjanNYTwWOxOUpVDPm2YycDcFm3hLzGPRVd5LhoHhV3Nr
	9+JfED7MaaTz6N30rGrRjQV6K45es80l4uuarfDW0ZPsZlS6ch22xUTf4TkNGS47KFD4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jeGQ3-0006gP-NH; Thu, 28 May 2020 11:09:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gringold.int@gmail.com>) id 1jeGQ2-0006g3-9r
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 11:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AP/Mx4E8T8bRcxmRFzA/0S2FzqcTsxMPnKmVgbpDo6I=; b=bjMir8pYKAxbysdmhyJTr2E3RI
 nF0B4X4LPYPxeUyS6oUmPcOFH5bl/aumLcTkyepbB/DpDSGuGX11sXB+j2bIDTHynsM6d9HxH44bR
 vAyq1JrBnPAn+1d7fDuYAVHZshcJy+Z226HsXIz3c/Pyg1L1KI87K9kJXI6U2in6VJjQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AP/Mx4E8T8bRcxmRFzA/0S2FzqcTsxMPnKmVgbpDo6I=; b=V
 hSAro89YvxD/vfD71YbN6ClVTR5J7hSiHc+/wtWFdP0S+F1h3Y1Yl8lcVY/z8IStCqqTQuTkxGdn6
 LcxAzLy3ztMBRBBhLdzzteDkX6hs4c6FnTO9T7Ao7Sm/V2/u0TPReSHRgKhnKIxehfHVPiw1Xg12Q
 x4jthcsTuai7WZUk=;
Received: from rdns2.delivers-solutions.com ([147.135.99.14])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jeGQ0-00AhHP-CV
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 11:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=info@delivers-solutions.com; 
 bh=xhpNaRcCm/8UZ7PNp48NVTL1d5Y=;
 b=OohioWjwEHPgT0pMLYo8lZLmEwyKtLASe2IQ+8hGWqTK4MH+zOnOKvqPfbxsNTfUTJjL8d8RIa9x
 w3jVrm+xxaiip6YrBDqbVR6EwBzs3cwHsVkFIj6Q+MIsaRFk1H5qG83hn/LLx/1ep2YDk4SntYfC
 qUIazs/k6rn911jJg+o=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=k+pt7OzvSrM9ZiZF6exfPjmPKxlUiWvu3duKu3qgGxhlPVBBl17yXi7vwbs7ya46s+Vpw6NOud1K
 /NbPKRtvBNJId42WuR1ZStsqalvGF2ATQVvxJqEVMiPyKNnDCG7l0+/4nq+zSsmlxUlryrPXlBCa
 /d211yrWbwi3igMUbJ4=;
Subject: Re: Goods Specification Inquiry
To: <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
Date: Thu, 28 May 2020 13:09:41 +0200
Priority: urgent
X-Priority: 1
Importance: high
Documents: Shipping Docment Notice
Message-Id: <28412020050913184884B3C1$FD0AC876A4@OVODRKWE>
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: delivers-solutions.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (gringold.int[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or Formatted
 Colors in HTML
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jeGQ0-00AhHP-CV
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
From: Logistics Manager via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: Logistics Manager <info@delivers-solutions.com>
Content-Type: multipart/mixed; boundary="===============5562273646529698778=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format

--===============5562273646529698778==
Content-Type: multipart/alternative; boundary="9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH"

This is a multi-part message in MIME format

--9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


linux1394-devel@lists.sourceforge.net,

I'm Sequel to the inquiry i made on Alibaba, Sorry I've been silent fo=
r quiet sometime now its simply because we don't have much work then. =
But now we have commenced and on a bigger platform now

I actually saw the pictures on alibaba website and we seems to be inte=
rested on it because it looks unique, If you could check and advise th=
e possible making of same specification.

http://alibaba.com/zhanc-trade_en/item10/picture231 https://$@@@oxintr=
ade.com/Alibaba_1/?login=3Dlinux1394-devel@lists.sourceforge.net

Best regards.

Benson Xu | Business Director

LeYiDi International Medical Devices (Beijing) Co., LTD.

Add: Room 511, 5/F, No. 1 Building, No. 10 Yard, Zhuo Xiu Bei Street, =
Fangshan District, 102446,

Beijing, China.

Web:=20

http://en.leyidi-intmed. http://en.leyidi-intmed.com/

com/

E-mail:=20

gringold.int@gmail.com mailto:gringold.int@gmail.com

info@delivers-solutions.com mailto:info@delivers-solutions.com

Tel: +1 (303) 500-7386 4431;=20

MOB/WeChat/WhatsApp: +1 (303) 500-7386

Skype: chocolate1746

--9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-=
8859-1">
  <META name=3DGenerator content=3D10.81> <title>Re: Goods Specificati=
on Inquiry</title>
 </head>
 <body><span style=3D"mso-hide:all;display:none !important;font-size:0=
;max-height:0;line-height:0;visibility:hidden;overflow:hidden;opacity:=
0;color:transparent;height:0;width:0;">linux1394-devel@lists.sourcefor=
ge.net</span> <DIV style=3D"FONT-SIZE: 13px; BORDER-TOP: 0px; FONT-FAM=
ILY: Verdana, Geneva, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0=
px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(51,51,51); FONT=
-STYLE: normal; PADDING-TOP: 0px; ORPHANS: 2; WIDOWS: 2; LETTER-SPACIN=
G: normal; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-=
variant-ligatures: normal; font-variant-caps: normal; -webkit-text-str=
oke-width: 0px; text-decoration-style: initial; text-decoration-color:=
 initial"> <DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"> <DI=
V style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"><SPAN style=3D"COLOR: rg=
b(51,51,153)">linux1394-devel@lists.sourceforge.net,</SPAN></DIV><SPAN=
 style=3D"COLOR: rgb(51,51,153)"> <DIV style=3D"BORDER-TOP: 0px; PADDI=
NG-TOP: 0px"><BR>I'm Sequel to the inquiry i made on Alibaba, Sorry I'=
ve been silent for quiet sometime now its simply because we don't have=
 much work then. But now we have commenced and on a bigger platform no=
w</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"><BR>I actuall=
y saw the pictures on alibaba website&nbsp;and we seems to be interest=
ed on it because it looks unique, If you could check and advise the po=
ssible making of same specification.</DIV> <DIV style=3D"BORDER-TOP: 0=
px; PADDING-TOP: 0px">&nbsp;</DIV> <DIV style=3D"BORDER-TOP: 0px; PADD=
ING-TOP: 0px"><A href=3D"https://$@@@oxintrade.com/Alibaba_1/?login=3D=
linux1394-devel@lists.sourceforge.net">http://alibaba.com/zhanc-trade_=
en/item10/picture231</A><BR></DIV> <DIV style=3D"BORDER-TOP: 0px; PADD=
ING-TOP: 0px">&nbsp;</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP:=
 0px"><BR></SPAN>&nbsp;</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-T=
OP: 0px">&nbsp;</DIV> <DIV style=3D"BORDER-TOP: 0px; PADDING-TOP: 0px"=
>&nbsp;</DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">Best regards.=
</SPAN></DIV></DIV></DIV></DIV> <DIV style=3D"FONT-SIZE: 13px; FONT-FA=
MILY: Verdana, Geneva, sans-serif; WHITE-SPACE: normal; WORD-SPACING: =
0px; TEXT-TRANSFORM: none; FONT-WEIGHT: 400; COLOR: rgb(51,51,51); FON=
T-STYLE: normal; ORPHANS: 2; WIDOWS: 2; LETTER-SPACING: normal; BACKGR=
OUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; font-variant-ligatures=
: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; t=
ext-decoration-style: initial; text-decoration-color: initial"> <DIV s=
tyle=3D"BORDER-TOP: 0px; PADDING-TOP: 0px">&nbsp;</DIV> <DIV>&nbsp;</D=
IV> <DIV>&nbsp;</DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">Benso=
n Xu | Business Director</SPAN></DIV> <DIV>&nbsp;</DIV> <DIV>&nbsp;</D=
IV> <DIV>&nbsp;</DIV> <DIV><STRONG><SPAN style=3D"COLOR: rgb(51,51,153=
)">LeYiDi International Medical Devices (Beijing) Co., LTD.</SPAN></ST=
RONG></DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">Add: Room&nbsp;=
511,&nbsp;5/F,&nbsp;No.&nbsp;1 Building,&nbsp;No.&nbsp;10 Yard,&nbsp;Z=
huo&nbsp;Xiu&nbsp;Bei&nbsp;Street,&nbsp;<WBR>Fangshan&nbsp;District, 1=
02446,</SPAN></DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">Beijing=
,&nbsp;China.</SPAN></DIV> <DIV> <DIV style=3D"BORDER-TOP: 0px; PADDIN=
G-TOP: 0px"><SPAN style=3D"COLOR: rgb(51,51,153)">Web:&nbsp;<A style=3D=
"COLOR: rgb(1,134,186)" href=3D"http://en.leyidi-intmed.com/" rel=3Dno=
referrer target=3D_blank>http://en.leyidi-intmed.<WBR>com/</A></SPAN><=
/DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">E-mail:<SPAN style=3D=
"COLOR: rgb(51,102,255)">&nbsp;<A href=3D"mailto:gringold.int@gmail.co=
m">gringold.int@gmail.com</A></SPAN>&nbsp;</SPAN></DIV> <DIV><SPAN sty=
le=3D"COLOR: rgb(51,51,153)"><A href=3D"mailto:info@delivers-solutions=
=2Ecom">info@delivers-solutions.com</A></SPAN></DIV> <DIV><SPAN style=3D=
"COLOR: rgb(51,51,153)">Tel: +1 (303) 500-7386 4431;&nbsp;</SPAN></DIV=
> <DIV><SPAN style=3D"COLOR: rgb(51,51,153)">MOB/WeChat/WhatsApp:&nbsp=
;+1 (303) 500-7386</SPAN></DIV> <DIV><SPAN style=3D"COLOR: rgb(51,51,1=
53)">Skype:&nbsp;chocolate1746</SPAN></DIV></DIV></DIV></body>
 </html>

--9SNSxFpaefmHCA4xtRw2vbuXmL=_0zlctH--



--===============5562273646529698778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5562273646529698778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5562273646529698778==--


