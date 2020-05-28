Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E84911E67A6
	for <lists+linux1394-devel@lfdr.de>; Thu, 28 May 2020 18:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:Mime-Version:Date:To:Subject:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=+oWYSUG3y7mVzVeBiDvNgVUw2iDPapEON7QQ1WxtxrY=; b=MI+MAKZ9Ep6HIKt//gilVoVE4J
	cVth5xfPEs1XpdMBq0vRqcAZYLdCml19kKVUH0Vg1NfcKrHhLoxIMspy157W8vfCZ30zPeyUwsl64
	maFsAP8MDX8K9AH/pXrfq3An/L9t58Hog0gEWaeZfjkNrnzHiIVI9EpWzkQhfZ1mrAa4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jeLds-0005qV-8S; Thu, 28 May 2020 16:44:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <010101725c2b9501-4cd584f2-8339-4881-8a28-16703fd84b3f-000000@us-west-2.amazonses.com>)
 id 1jeLdq-0005qC-Q3
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 16:44:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lNhFd61W5c2i3/8Tnlv6vN3eiZgcMorTZDbkJo1xf+Q=; b=UAU2aMWuKj63ZTLwo2BYOtsd/M
 zLO7d7Wn8B92eVrzCAnVbmP2oP/CbvNVbfcJUvWWFtYLpsiA6ov0SLRZd1v3pbpGToRvaARTOg/k+
 TrJQM/VMQiNQ1ijc1oU6dCylBz5pZvvnTmxONiq9+ToU3rlNJr8tvPjBWdWcZbKyMJ/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lNhFd61W5c2i3/8Tnlv6vN3eiZgcMorTZDbkJo1xf+Q=; b=E
 ulZSygjxUWoSC9oz7jM9SI08oZBnBOwzJWvyV4CNWLToW17q5NF7kDSz/GxksmTqSn9tPw2B3U12p
 6J6HlrEtXjzGmmQZ+ZGTMGono0Mwa2TfkF6ryWaZHZmnidB2vUjQ+pkiLLD/qmCHvLM8luFTEzslc
 gcFLGFUS5iUYMa/8=;
Received: from a58-62.smtp-out.us-west-2.amazonses.com ([54.240.58.62])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1jeLdp-00GHgH-B5
 for linux1394-devel@lists.sourceforge.net; Thu, 28 May 2020 16:44:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1590684259;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=lNhFd61W5c2i3/8Tnlv6vN3eiZgcMorTZDbkJo1xf+Q=;
 b=HQNSjJhFBPFJ59Jl5SrMtr9BNbep5+U8dR0hiSsHWIZrcXYtH56Mt6QqJ/JuaL36
 Y2t6RMzTVfjZLfDUI0kaW2uCdT31Ij+rfMP/8eFHDcyxhnPMeLldjU9+IXjFw+eiT4r
 hIA84QVInIrCI7l2YG5yByMyt3iTolRbD+yjhvUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1590684259;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=lNhFd61W5c2i3/8Tnlv6vN3eiZgcMorTZDbkJo1xf+Q=;
 b=F5fmepWxe/aTqJUZRx5F5HgNTLVy41ikH2aljbii3X+sC9o3jrzKP/e9A3nV6VlD
 HC0BvIWuekwkNPu/DtqbVE1AuA3aWNdhGDxWtC8w3nhiP+sqyKtS5EAxqvKJdZIS8Xl
 YcG2rLz6O8hPNdsWtdRxrUp3qG/ceSdav239lI/g=
Subject: RE: Proposal
To: =?UTF-8?Q?linux1394-devel=40lists=2Esourceforge=2Enet?=
 <linux1394-devel@lists.sourceforge.net>
Date: Thu, 28 May 2020 16:44:19 +0000
Mime-Version: 1.0
References: <mail.f043ca8f-f052-43ea-98d4-bb5bc5d82092@storage.wm.amazon.com> 
 <mail.f043ca8f-f052-43ea-98d4-bb5bc5d82092@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdY1CR7nWPs2nha2R9a1bEP67O+5RA==
Thread-Topic: RE: Proposal
Message-ID: <010101725c2b9501-4cd584f2-8339-4881-8a28-16703fd84b3f-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.05.28-54.240.58.62
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.58.62 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [54.240.58.62 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jeLdp-00GHgH-B5
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
From: =?UTF-8?Q?Hailey_Jones?= via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?Hailey_Jones?= <hailey@konnectglobalmarketing.com>
Content-Type: multipart/mixed; boundary="===============1314506046147584628=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--===============1314506046147584628==
Content-Type: multipart/alternative; 
 boundary="=_zF-PLvc9GLxMD-FJOPUGufCIjfEKB699AuuRY+HmABzYYgtB"

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--=_zF-PLvc9GLxMD-FJOPUGufCIjfEKB699AuuRY+HmABzYYgtB
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,


Did you get a chance to go through my previous email=3F=20


Kindly let me know your target audience (Sectors, Job Titles & Geography)=
 that you wish to target, so that I can get back with the counts, samples=
 and pricing details for your review.=20

=C2=A0
Appreciate your response.

=C2=A0
Thanks,

Hailey Jones - Marketing Executive

=C2=A0
=C2=A0
Hi,

=C2=A0
Would you like to connect with key decision makers from the below sectors=
;

=C2=A0
Manufacturing, Construction, Education, Retail, Healthcare, Energy, Utili=
ties & Waste Treatment, Transportation, Banking & Finance, Media & Intern=
et, Hospitality, etc.=20

=C2=A0
You can contact them via direct=C2=A0business emails or phone numbers=C2=A0=
for your sales and marketing initiatives.=20

=C2=A0
We can also provide you contacts from companies currently using Altium

Software.

=C2=A0
Kindly let me know the Sectors, Job Titles & Geography that you wish to t=
arget, so that I can get back with the samples, counts and more details f=
or your review.=20

=C2=A0
Looking forward to your response.

=C2=A0
Thanks,

Hailey Jones - Marketing Executive

=C2=A0
Stay safe.

Reply back =E2=80=9CPass=E2=80=9D for no further emails.

=C2=A0

--=_zF-PLvc9GLxMD-FJOPUGufCIjfEKB699AuuRY+HmABzYYgtB
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-mi=
crosoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:wo=
rd" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D=
"http://www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type"=
 CONTENT=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=
=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0in;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
=09{mso-style-priority:1;
=09margin:0in;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;}
p.xmsonormal, li.xmsonormal, div.xmsonormal
=09{mso-style-name:x_msonormal;
=09margin:0in;
=09margin-bottom:.0001pt;
=09font-size:12.0pt;
=09font-family:"Times New Roman",serif;}
=2EMsoChpDefault
=09{mso-style-type:export-only;
=09font-family:"Calibri",sans-serif;}
=2EMsoPapDefault
=09{mso-style-type:export-only;
=09margin-bottom:8.0pt;
=09line-height:107%;}
@page WordSection1
=09{size:8.5in 11.0in;
=09margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US><div class=3D=
WordSection1><p class=3DMsoNormal><span style=3D'font-size:12.0pt;color:b=
lack;background:white;mso-fareast-language:EN-IN'>Hi,</span></p><p class=3D=
MsoNormal><span style=3D'font-size:12.0pt;color:black;background:white;ms=
o-fareast-language:EN-IN'><br>Did you get a chance to go through my previ=
ous email=3F </span></p><p class=3DMsoNormal><span style=3D'font-size:12.=
0pt;color:black;background:white;mso-fareast-language:EN-IN'><br>Kindly l=
et me know your target audience (</span><b><span lang=3DEN-IN style=3D'fo=
nt-size:12.0pt;color:black;background:white;mso-fareast-language:EN-IN'>S=
ectors,</span></b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:blac=
k;background:white;mso-fareast-language:EN-IN'> <b>Job Titles &amp; Geogr=
aphy</b>) </span><span style=3D'font-size:12.0pt;color:black;background:w=
hite;mso-fareast-language:EN-IN'>that you wish to target, so that I can g=
et back with the <u>counts, samples and pricing</u> details for your revi=
ew. </span></p><p class=3DMsoNormal><span style=3D'font-size:12.0pt;color=
:black;background:white;mso-fareast-language:EN-IN'>&nbsp;</span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:12.0pt;color:black;background:w=
hite;mso-fareast-language:EN-IN'>Appreciate your response.</span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:12.0pt;color:black;background:w=
hite;mso-fareast-language:EN-IN'>&nbsp;</span></p><p class=3DMsoNormal><b=
><i><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:w=
hite;mso-fareast-language:EN-IN'>Thanks,</span></i></b><i><span lang=3DEN=
-IN><o:p></o:p></span></i></p><p class=3DMsoNormal><b><i><span lang=3DEN-=
IN style=3D'font-size:12.0pt;color:black'>Hailey Jones - Marketing Execut=
ive</span></i></b><i><span lang=3DEN-IN><o:p></o:p></span></i></p><div st=
yle=3D'mso-element:para-border-div;border:none;border-bottom:solid window=
text 1.5pt;padding:0in 0in 1.0pt 0in;background:white'><p class=3DMsoNorm=
al style=3D'background:white;border:none;padding:0in'><span style=3D'font=
-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p></div><p class=3DMs=
oNormal style=3D'background:white'><span style=3D'font-size:12.0pt;color:=
black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'backgrou=
nd:white'><span style=3D'font-size:12.0pt;color:black'>Hi,</span><span la=
ng=3DIT><o:p></o:p></span></p><p class=3DMsoNormal style=3D'background:wh=
ite'><span lang=3DIT><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal sty=
le=3D'background:white'><span style=3D'font-size:12.0pt;color:black'>Woul=
d you like to connect with key decision makers from<b> </b>the below sect=
ors<b>;<o:p></o:p></b></span></p><p class=3DMsoNormal style=3D'background=
:white'><b><span style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p>=
</span></b></p><p class=3DMsoNormal style=3D'background:white'><b><span l=
ang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white'>Manuf=
acturing, </span></b><b><span style=3D'font-size:12.0pt;color:black;backg=
round:white'>Construction</span></b><b><span lang=3DEN-IN style=3D'font-s=
ize:12.0pt;color:black;background:white'>, </span></b><b><span style=3D'f=
ont-size:12.0pt;color:black;background:white'>Education</span></b><b><spa=
n lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white'>, =
</span></b><b><span style=3D'font-size:12.0pt;color:black;background:whit=
e'>Retail</span></b><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color=
:black;background:white'>, </span></b><b><span style=3D'font-size:12.0pt;=
color:black;background:white'>Healthcare, Energy, Utilities &amp; Waste T=
reatment, Transportation, Banking &amp; Finance,</span></b><span style=3D=
'font-size:10.5pt;font-family:"Arial",sans-serif;color:#797D86;background=
:white'> </span><b><span style=3D'font-size:12.0pt;color:black;background=
:white'>Media &amp; Internet, Hospitality, </span></b><b><span lang=3DEN-=
IN style=3D'font-size:12.0pt;color:black;background:white'>etc. <o:p></o:=
p></span></b></p><p class=3DMsoNormal style=3D'background:white'><span st=
yle=3D'font-size:12.0pt;color:black'>&nbsp;</span><span lang=3DIT><o:p></=
o:p></span></p><p class=3DMsoNormal style=3D'background:white'><span styl=
e=3D'font-size:12.0pt;color:black'>You can contact them via direct&nbsp;<=
u>business emails or phone numbers</u>&nbsp;for your sales and marketing =
initiatives. <o:p></o:p></span></p><p class=3DMsoNormal style=3D'backgrou=
nd:white'><span style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal style=3D'background:white'><span style=3D'=
font-size:12.0pt;color:black'>We can also provide you contacts </span><sp=
an style=3D'font-size:12.0pt;color:black;background:white;mso-fareast-lan=
guage:EN-IN'>from companies currently using <b>Altium</b></span><b><span =
lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white;mso-f=
areast-language:EN-IN'><o:p></o:p></span></b></p><p class=3DMsoNormal sty=
le=3D'background:white'><b><span style=3D'font-size:12.0pt;color:black;ba=
ckground:white;mso-fareast-language:EN-IN'>Software.</span></b><b><span l=
ang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white;mso-fa=
reast-language:EN-IN'><o:p></o:p></span></b></p><p class=3DMsoNormal styl=
e=3D'background:white'><span lang=3DIT><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNoSpacing><span lang=3DEN-IN style=3D'font-size:12.0pt;color:blac=
k;background:white;mso-fareast-language:EN-IN'>Kindly let me know the <b>=
Sectors,</b> <b>Job Titles &amp; Geography</b> that you wish to target, s=
o that I can get back with the <u>samples, counts </u>and more details fo=
r your review. <o:p></o:p></span></p><p class=3DMsoNormal style=3D'backgr=
ound:white'><span lang=3DIT><o:p>&nbsp;</o:p></span></p><p class=3DMsoNor=
mal style=3D'background:white'><span style=3D'font-size:12.0pt'>Looking f=
orward to your response.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-IN style=3D'font-size:12.0pt;mso-fareast-language:EN-IN'><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><b><i><span lang=3DEN-IN style=
=3D'font-size:12.0pt;color:black;background:white;mso-fareast-language:EN=
-IN'>Thanks,</span></i></b><i><span lang=3DEN-IN><o:p></o:p></span></i></=
p><p class=3DMsoNormal><b><i><span lang=3DEN-IN style=3D'font-size:12.0pt=
;color:black'>Hailey Jones - Marketing Executive</span></i></b><i><span l=
ang=3DEN-IN><o:p></o:p></span></i></p><p class=3Dxmsonormal><b><i><span l=
ang=3DEN-IN style=3D'font-family:"Calibri",sans-serif;color:black'>&nbsp;=
</span></i></b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans=
-serif'><o:p></o:p></span></p><p class=3Dxmsonormal><b><span lang=3DEN-IN=
 style=3D'font-family:"Calibri",sans-serif;color:#A6A6A6'>Stay safe.</spa=
n></b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><=
o:p></o:p></span></p><p class=3Dxmsonormal><span lang=3DEN-IN style=3D'fo=
nt-size:8.0pt;font-family:"Calibri",sans-serif;color:gray'>Reply back &#8=
220;Pass&#8221; for no further emails.</span><span style=3D'font-size:11.=
0pt;font-family:"Calibri",sans-serif'><o:p></o:p></span></p><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p></div></body></html>
--=_zF-PLvc9GLxMD-FJOPUGufCIjfEKB699AuuRY+HmABzYYgtB--


--===============1314506046147584628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1314506046147584628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1314506046147584628==--

