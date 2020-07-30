Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2D6233913
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Jul 2020 21:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:Mime-Version:Date:To:Subject:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=REQihthhYw011WaiF6qds2RjMeu1s4BqZlhnoNN4rrg=; b=Viw375ikQIihy/Ywgg/T4/ygr8
	6hjrTUdiVSu6A1BrrRmO6edUOL3nKkBx0dNviCXpMRoLte1M22kioAeXPuzSxvx8ZC97MeSxEu0v8
	IgtrzeGvjnij8ztzGd51xywmzPUCsygrqlgupAszGNb1TEJyGj6gGHssMkLmkMd2OsG4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k1EGN-0004Bx-HF; Thu, 30 Jul 2020 19:30:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <01010173a1347e9a-e3de9b47-7b32-4b3b-b7be-76f9f3f9f2c7-000000@us-west-2.amazonses.com>)
 id 1k1EGL-0004BT-V9
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 19:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BLh1Gdg2YoNKrDRVrNc4yV7MzIxieehAQk0g+3cpGMU=; b=IvR+9+GfhAWD4/0Cjob12iiwAs
 EU5N1OGp+iY2ft5+Sqmsn9USB91rW/woorecGHU5KnIWECRTKmye94LDvMTwVTx8nOb+GMa/8tyIM
 psQSQAT1gcixlw8PeqFijzzcx6mqatDiXy0/bvIhYmCOO+IYjJ5TkiWtoGhD+in1dZXE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BLh1Gdg2YoNKrDRVrNc4yV7MzIxieehAQk0g+3cpGMU=; b=i
 V3skaj2QFgOJDy5C7Fu3pdVyTTL/FMOGbZFKBtxdJQdXxYduS1xxsFRZwF4bAZ4ARAUbJTLzejCja
 3nnQk67rQNTdvNhAP+vJ3jtQdBM2CQh/8oUimFpjN9VVmMDb0w4EcXxw585qIbbCFHd/2uYb6HFmC
 i58WhPoQ3+0fSCXI=;
Received: from a27-12.smtp-out.us-west-2.amazonses.com ([54.240.27.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1k1EGK-00F5Rs-IZ
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 19:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1596137439;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=BLh1Gdg2YoNKrDRVrNc4yV7MzIxieehAQk0g+3cpGMU=;
 b=Au3R+Zsyl+mfP93+XEhuM9cKNbHQ1BKPFPWx7BF1SGC0pK0sIX34BP2PWifsam8R
 F0z6Neb/Kri3F++nr3VSuUoq56+rHeVLEnX8rCmNSpNOZYtq0cgry/X8O4hhDHWwnJC
 iiwzjbRy8mxChwO/6187XIRcYVMnEGPrl79GUHCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1596137439;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=BLh1Gdg2YoNKrDRVrNc4yV7MzIxieehAQk0g+3cpGMU=;
 b=b/tqjthUr532u7A3d8SAEE/y+DNO00ZEt+G5VlKrBdyZk3aQXRpb2cmYiGLpvtc5
 8aV6IofwpTgk4H2CAvZagPTRg1OwhWl2fqz9Be83/o3V3RCuYytuQ6fyeuGQLQwXjsd
 Hnn5zY0hQ+8ttqHuMwQyQTPBwVpdnaanzak+BKbM=
Subject: RE: Altium - Proposal
To: =?UTF-8?Q?=27linux1394-devel=40lists=2Esourceforge=2Enet=27?=
 <linux1394-devel@lists.sourceforge.net>
Date: Thu, 30 Jul 2020 19:30:38 +0000
Mime-Version: 1.0
References: <mail.fd0a139f-5b9e-4af0-8d18-8239de032cf6@storage.wm.amazon.com> 
 <mail.fd0a139f-5b9e-4af0-8d18-8239de032cf6@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdZmpqiu6SRffoTtTF2Z3atRaH/YTA==
Thread-Topic: RE: Altium - Proposal
X-Wm-Sent-Timestamp: 1596137437
Message-ID: <01010173a1347e9a-e3de9b47-7b32-4b3b-b7be-76f9f3f9f2c7-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.07.30-54.240.27.12
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.27.12 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.240.27.12 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k1EGK-00F5Rs-IZ
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
From: =?UTF-8?Q?Kelsey_Cooper?= via linux1394-devel
 <linux1394-devel@lists.sourceforge.net>
Reply-To: =?UTF-8?Q?Kelsey_Cooper?= <kelsey@konnectglobalmarketing.com>
Content-Type: multipart/mixed; boundary="===============8995632957328563846=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--===============8995632957328563846==
Content-Type: multipart/alternative; 
 boundary="=_u+N85ia03vhcScM3XUYC-d80PkcK6tFCHingdqEkXbV+ZOF2"

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--=_u+N85ia03vhcScM3XUYC-d80PkcK6tFCHingdqEkXbV+ZOF2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,


Did you get a chance to go through my previous email=3F=20


Kindly let me know your target audience Job Titles & Geography that you w=
ish to target, so that I can get back with the counts, pricing and all th=
e details for your review.

=C2=A0
Appreciate your response.

=C2=A0
Regards,

Kelsey Cooper - Marketing Executive

=C2=A0
=C2=A0
Hi,

=C2=A0
Would you like to send in your Business Proposals/Newsletter to key decis=
ion Makers from companies currently using Altium Software=3F

=C2=A0
Titles Like:=C2=A0 IT Decision Makers, C-level, Managers and other job ti=
tles as per your requirement.=20

=C2=A0
Kindly let me know the Job Titles & Geography that you wish to target, so=
 that I can get back with the samples, counts and more details for your r=
eview.=20

=C2=A0
We cater other Industry contacts such as: Manufacturing,=C2=A0Constructio=
n,=C2=A0Education,=C2=A0Retail,=C2=A0Healthcare, Energy, Utilities & Wast=
e Treatment, Transportation, etc.=20

=C2=A0
Looking forward to your response.

=C2=A0
Regards,

Kelsey Cooper - Marketing Executive

=C2=A0
Stay safe.

Reply back =E2=80=9CPass=E2=80=9D for no further emails.

=C2=A0

--=_u+N85ia03vhcScM3XUYC-d80PkcK6tFCHingdqEkXbV+ZOF2
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
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;}
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
WordSection1><p class=3DMsoNoSpacing><span style=3D'font-size:12.0pt;colo=
r:black;background:white;mso-fareast-language:EN-IN'>Hi,<o:p></o:p></span=
></p><p class=3DMsoNoSpacing><span style=3D'font-size:12.0pt;color:black;=
background:white;mso-fareast-language:EN-IN'><br>Did you get a chance to =
go through my previous email=3F <o:p></o:p></span></p><p class=3DMsoNoSpa=
cing><span style=3D'font-size:12.0pt;color:black;background:white;mso-far=
east-language:EN-IN'><br>Kindly let me know your target audience</span><s=
pan style=3D'font-size:12.0pt;color:black;background:white'> </span><b><s=
pan lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white'>=
Job Titles &amp; Geography</span></b><span lang=3DEN-IN style=3D'font-siz=
e:12.0pt;color:black;background:white'> </span><span style=3D'font-size:1=
2.0pt;color:black;background:white;mso-fareast-language:EN-IN'>that you w=
ish to target, so that I can get back with the <u>counts, pricing</u> and=
 all the details for your review.<o:p></o:p></span></p><p class=3DMsoNoSp=
acing><span style=3D'font-size:12.0pt;color:black;background:white;mso-fa=
reast-language:EN-IN'>&nbsp;<o:p></o:p></span></p><p class=3DMsoNoSpacing=
><span style=3D'font-size:12.0pt;color:black;background:white;mso-fareast=
-language:EN-IN'>Appreciate your response.<o:p></o:p></span></p><p class=3D=
MsoNoSpacing><span style=3D'font-size:12.0pt;color:black;background:white=
;mso-fareast-language:EN-IN'>&nbsp;<o:p></o:p></span></p><p class=3Dxmson=
ormal><b><i><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black'>Reg=
ards,<o:p></o:p></span></i></b></p><p class=3Dxmsonormal><b><i><span styl=
e=3D'font-size:12.0pt;color:black'>Kelsey Cooper </span></i></b><b><i><sp=
an lang=3DEN-IN style=3D'font-size:12.0pt;color:black'>- Marketing Execut=
ive<o:p></o:p></span></i></b></p><div style=3D'mso-element:para-border-di=
v;border:none;border-bottom:solid windowtext 1.5pt;padding:0in 0in 1.0pt =
0in'><p class=3DMsoNormal style=3D'border:none;padding:0in'><span lang=3D=
EN-IN style=3D'font-size:12.0pt;color:black;background:white'><o:p>&nbsp;=
</o:p></span></p></div><p class=3DMsoNormal><span lang=3DEN-IN style=3D'f=
ont-size:12.0pt;color:black;background:white'><o:p>&nbsp;</o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:12.0pt;color:=
black;background:white'>Hi,</span></p><p class=3DMsoNormal><span lang=3DE=
N-IN style=3D'font-size:12.0pt;color:black;background:white'>&nbsp;</span=
></p><p class=3DMsoNormal><span style=3D'font-size:12.0pt'>Would you like=
 to send in your Business Proposals/Newsletter to key decision Makers<spa=
n style=3D'color:black;background:white'> </span></span><span lang=3DEN-I=
N style=3D'font-size:12.0pt;color:black;background:white'>from companies =
currently using<b> </b></span><b><span style=3D'font-size:12.0pt;color:bl=
ack;background:white'>Altium Software</span></b><b><span lang=3DEN-IN sty=
le=3D'font-size:12.0pt;color:black;background:white'>=3F</span></b><b><sp=
an style=3D'font-size:12.0pt;color:black;background:white'><o:p></o:p></s=
pan></b></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:12=
=2E0pt;color:black'>&nbsp;</span></p><p class=3DMsoNormal><u><span lang=3D=
EN-IN style=3D'font-size:12.0pt;color:black'>Titles Like:</span></u><b><s=
pan lang=3DEN-IN style=3D'font-size:12.0pt;color:black'>&nbsp;</span></b>=
<b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:wh=
ite;mso-fareast-language:EN-IN'> </span></b><span lang=3DEN-IN style=3D'f=
ont-size:12.0pt;color:black;background:white'>IT Decision Makers, C-level=
, Managers and other job titles as per your requirement. </span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;=
background:white'>&nbsp;</span></p><p class=3DMsoNoSpacing><span lang=3DE=
N-IN style=3D'font-size:12.0pt;color:black;background:white;mso-fareast-l=
anguage:EN-IN'>Kindly let me know the <b>Job Titles &amp; Geography</b> t=
hat you wish to target, so that I can get back with the <u>samples, count=
s </u>and more details for your review. </span></p><p class=3DMsoNormal><=
span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white'=
>&nbsp;</span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-s=
ize:12.0pt;color:black;background:white'>We cater other Industry contacts=
 such as: <b>Manufacturing,&nbsp;</b></span><b><span style=3D'font-size:1=
2.0pt;color:black;background:white'>Construction</span></b><b><span lang=3D=
EN-IN style=3D'font-size:12.0pt;color:black;background:white'>,&nbsp;</sp=
an></b><b><span style=3D'font-size:12.0pt;color:black;background:white'>E=
ducation</span></b><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:=
black;background:white'>,&nbsp;</span></b><b><span style=3D'font-size:12.=
0pt;color:black;background:white'>Retail</span></b><b><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black;background:white'>,&nbsp;</span></b=
><b><span style=3D'font-size:12.0pt;color:black;background:white'>Healthc=
are, Energy, Utilities &amp; Waste Treatment, Transportation, </span></b>=
<b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:wh=
ite'>etc. </span></b></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D=
'font-size:12.0pt;color:black;background:white'>&nbsp;</span></p><p class=
=3DMsoNormal style=3D'background:white'><span style=3D'font-size:12.0pt'>=
Looking forward to your response.</span></p><p class=3DMsoNormal><span la=
ng=3DEN-IN style=3D'font-size:12.0pt;mso-fareast-language:EN-IN'>&nbsp;</=
span></p><p class=3Dxmsonormal><b><i><span lang=3DEN-IN style=3D'font-siz=
e:12.0pt;color:black'>Regards,<o:p></o:p></span></i></b></p><p class=3Dxm=
sonormal><b><i><span style=3D'font-size:12.0pt;color:black'>Kelsey Cooper=
 </span></i></b><b><i><span lang=3DEN-IN style=3D'font-size:12.0pt;color:=
black'>- Marketing Executive<o:p></o:p></span></i></b></p><p class=3Dxmso=
normal><b><i><span lang=3DEN-IN style=3D'color:black'>&nbsp;</span></i></=
b><span style=3D'font-family:"Times New Roman",serif'><o:p></o:p></span><=
/p><p class=3Dxmsonormal><b><span lang=3DEN-IN style=3D'color:#BFBFBF'>St=
ay safe.</span></b><span lang=3DEN-AU><o:p></o:p></span></p><p class=3Dxm=
sonormal><span lang=3DEN-IN style=3D'font-size:8.0pt;color:#D9D9D9'>Reply=
 back &#8220;Pass&#8221; for no further emails.<o:p></o:p></span></p><p c=
lass=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
--=_u+N85ia03vhcScM3XUYC-d80PkcK6tFCHingdqEkXbV+ZOF2--


--===============8995632957328563846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8995632957328563846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8995632957328563846==--

