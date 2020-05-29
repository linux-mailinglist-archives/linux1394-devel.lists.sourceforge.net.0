Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 985DC1E8683
	for <lists+linux1394-devel@lfdr.de>; Fri, 29 May 2020 20:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:Mime-Version:Date:To:Subject:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=KYQYzgJHo5npBzF+Ehy/Ddz/sEg7ndXu4bNEDHFfuVE=; b=Dnj0fEbLUw4IFIucXCpw5HigAp
	essF3eOVZ7ueFKjw/3m8+POUIFpa/K2TuAU3+7x4hWr7EH4PzjCKYjrGaKIGNayjQEiJ0rsc0d+Je
	KkpFRkrQQ7t4MBzFQgTudAVeQHAwP7JjC7VT5UJXvL0NBZJrevsGNkZALWpTY7s2w4ac=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jejd3-0006ki-P9; Fri, 29 May 2020 18:21:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <0101017261aa4e26-7eb5dc9b-bab3-4fe4-9f60-7ad65e97e679-000000@us-west-2.amazonses.com>)
 id 1jejd2-0006kU-Io
 for linux1394-devel@lists.sourceforge.net; Fri, 29 May 2020 18:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rh/d/2bKoYtcXR3fVtiGYTKSMQqgGxjz+CmlZ6xMNGM=; b=Zx5RFLZQmPxyzLsZKyUlnLCYTU
 N9W/0HemuRgV90LyHj4gYcUdvhY/wGzCn2/KhakM7dLsMKrcWmLMLRN3/Gl1qxuBzQmTISf13nEw1
 oN+rU/PU2zsx0tOBj4+W8oMM9/cuTCooUNO1VBgvl2+NXWfi7QjwfrVijMG4M4tXDBek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Rh/d/2bKoYtcXR3fVtiGYTKSMQqgGxjz+CmlZ6xMNGM=; b=U
 sEZb+wwdJz1kMqJXB5zZL/bL2KVhsmWamI0Aqk771gWLAVKC8gNX9DduYthTqq9CS3gQzQecbjHBK
 hC1Op8F4hjjewamNVgOzsgwcs81Nuq9Z+CLUfhxSYm7k8mJ/ilvqRK/KQsEvEyyPqsRHoIpm/dtwA
 xhBKyz15Hvwuy+nc=;
Received: from a58-61.smtp-out.us-west-2.amazonses.com ([54.240.58.61])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1jejcs-0031J7-5G
 for linux1394-devel@lists.sourceforge.net; Fri, 29 May 2020 18:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1590776450;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=Rh/d/2bKoYtcXR3fVtiGYTKSMQqgGxjz+CmlZ6xMNGM=;
 b=PI8SoyNyX3TWbbtDOaAWbipr+7tGnHqX80moXeF3VhFa3Ri6+qS/12eiclGrYiXr
 4Xwfy3DgrWF4+GR5lFJnfKJTyQX3AqFJ1P1/iihQG9Fio8t8CoNS5ANdP7Xe6eyq2BB
 V76iONZVyv4AM61h0uygsc7PTn8K6qjvuSjHk4MA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1590776450;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=Rh/d/2bKoYtcXR3fVtiGYTKSMQqgGxjz+CmlZ6xMNGM=;
 b=R3Wfa/HUYTvQ7B0QrQM0fJpbXP6/T7mFDypR0zZUewiYsMeMUu8Xn4ylmayIonI9
 0jyD7vuKxCTF4BpBaf1t+MRkV/2z1gOKL+r1uhxUwCnDTVZ8q9arYNHf5O1jjUVFivt
 jYkscdFhb9YYvlZFt4ACwMX6yYProZYCaQnY0Uz4=
Subject: Re: Proposal
To: =?UTF-8?Q?=27linux1394-devel=40lists=2Esourceforge=2Enet=27?=
 <linux1394-devel@lists.sourceforge.net>
Date: Fri, 29 May 2020 18:20:50 +0000
Mime-Version: 1.0
References: <mail.7445b820-c6f0-4500-85fd-a1a86acb7fe6@storage.wm.amazon.com> 
 <mail.7445b820-c6f0-4500-85fd-a1a86acb7fe6@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdY14xDdU8994/WqTHijXBmbO1XGOQ==
Thread-Topic: Re: Proposal
Message-ID: <0101017261aa4e26-7eb5dc9b-bab3-4fe4-9f60-7ad65e97e679-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.05.29-54.240.58.61
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [54.240.58.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.58.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jejcs-0031J7-5G
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
Content-Type: multipart/mixed; boundary="===============7344330270861122464=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--===============7344330270861122464==
Content-Type: multipart/alternative; 
 boundary="=_2alQDcVvOluBuZF2ihdp+dRHprHAg2C8MToYguoDNXLbU0Uo"

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--=_2alQDcVvOluBuZF2ihdp+dRHprHAg2C8MToYguoDNXLbU0Uo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

=C2=A0
I have been trying to get in touch with you to see if there is a mutual f=
it between our company=E2=80=99s expertise and your goals around.

=C2=A0
Please review my previous emails and let me know your thoughts.

=C2=A0
Await your response.

=C2=A0
Thanks,

Hailey Jones - Marketing Executive

=C2=A0
=C2=A0
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

--=_2alQDcVvOluBuZF2ihdp+dRHprHAg2C8MToYguoDNXLbU0Uo
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
WordSection1><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:1=
2.0pt;color:black;background:white;mso-fareast-language:EN-IN'>Hi,<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size=
:12.0pt;color:black;background:white;mso-fareast-language:EN-IN'><o:p>&nb=
sp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font=
-size:12.0pt;color:black;background:white;mso-fareast-language:EN-IN'>I h=
ave been trying to get in touch with you to see if there is a mutual fit =
between our company&#8217;s expertise and your goals around.<o:p></o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:12.0p=
t;color:black;background:white;mso-fareast-language:EN-IN'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:=
12.0pt;color:black;background:white;mso-fareast-language:EN-IN'>Please re=
view my previous emails and let me know your thoughts.<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:12.0pt;colo=
r:black;background:white;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:12.0pt=
;color:black;background:white;mso-fareast-language:EN-IN'>Await your resp=
onse.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D=
'font-size:12.0pt;color:black;background:white;mso-fareast-language:EN-IN=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><i><span lang=3DEN-=
IN style=3D'font-size:12.0pt;color:black;background:white;mso-fareast-lan=
guage:EN-IN'>Thanks,</span></i></b><i><span lang=3DEN-IN><o:p></o:p></spa=
n></i></p><p class=3DMsoNormal><b><i><span lang=3DEN-IN style=3D'font-siz=
e:12.0pt;color:black'>Hailey Jones - Marketing Executive</span></i></b><i=
><span lang=3DEN-IN><o:p></o:p></span></i></p><div style=3D'mso-element:p=
ara-border-div;border:none;border-bottom:solid windowtext 1.5pt;padding:0=
in 0in 1.0pt 0in'><p class=3DMsoNormal style=3D'border:none;padding:0in'>=
<span style=3D'font-size:12.0pt;color:black;background:white;mso-fareast-=
language:EN-IN'><o:p>&nbsp;</o:p></span></p></div><p class=3DMsoNormal><s=
pan style=3D'font-size:12.0pt;color:black;background:white;mso-fareast-la=
nguage:EN-IN'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:12.0pt;color:black;background:white;mso-fareast-language:E=
N-IN'>Hi,</span></p><p class=3DMsoNormal><span style=3D'font-size:12.0pt;=
color:black;background:white;mso-fareast-language:EN-IN'><br>Did you get =
a chance to go through my previous email=3F </span></p><p class=3DMsoNorm=
al><span style=3D'font-size:12.0pt;color:black;background:white;mso-farea=
st-language:EN-IN'><br>Kindly let me know your target audience (</span><b=
><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:whit=
e;mso-fareast-language:EN-IN'>Sectors, Job Titles &amp; Geography</span><=
/b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:wh=
ite;mso-fareast-language:EN-IN'>) </span><span style=3D'font-size:12.0pt;=
color:black;background:white;mso-fareast-language:EN-IN'>that you wish to=
 target, so that I can get back with the <u>counts, samples and pricing</=
u> details for your review. </span></p><p class=3DMsoNormal><span style=3D=
'font-size:12.0pt;color:black;background:white;mso-fareast-language:EN-IN=
'>&nbsp;</span></p><p class=3DMsoNormal><span style=3D'font-size:12.0pt;c=
olor:black;background:white;mso-fareast-language:EN-IN'>Appreciate your r=
esponse.</span></p><p class=3DMsoNormal><span style=3D'font-size:12.0pt;c=
olor:black;background:white;mso-fareast-language:EN-IN'>&nbsp;</span></p>=
<p class=3DMsoNormal><b><i><span lang=3DEN-IN style=3D'font-size:12.0pt;c=
olor:black;background:white;mso-fareast-language:EN-IN'>Thanks,</span></i=
></b><i><span lang=3DEN-IN><o:p></o:p></span></i></p><p class=3DMsoNormal=
><b><i><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black'>Hailey J=
ones - Marketing Executive</span></i></b><i><span lang=3DEN-IN><o:p></o:p=
></span></i></p><div style=3D'mso-element:para-border-div;border:none;bor=
der-bottom:solid windowtext 1.5pt;padding:0in 0in 1.0pt 0in;background:wh=
ite'><p class=3DMsoNormal style=3D'background:white;border:none;padding:0=
in'><span style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span>=
</p></div><p class=3DMsoNormal style=3D'background:white'><span style=3D'=
font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal style=3D'background:white'><span style=3D'font-size:12.0pt;color:bl=
ack'>Hi,</span><span lang=3DIT><o:p></o:p></span></p><p class=3DMsoNormal=
 style=3D'background:white'><span lang=3DIT><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal style=3D'background:white'><span style=3D'font-size:1=
2.0pt;color:black'>Would you like to connect with key decision makers fro=
m<b> </b>the below sectors<b>;<o:p></o:p></b></span></p><p class=3DMsoNor=
mal style=3D'background:white'><b><span style=3D'font-size:12.0pt;color:b=
lack'><o:p>&nbsp;</o:p></span></b></p><p class=3DMsoNormal style=3D'backg=
round:white'><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;=
background:white'>Manufacturing, </span></b><b><span style=3D'font-size:1=
2.0pt;color:black;background:white'>Construction</span></b><b><span lang=3D=
EN-IN style=3D'font-size:12.0pt;color:black;background:white'>, </span></=
b><b><span style=3D'font-size:12.0pt;color:black;background:white'>Educat=
ion</span></b><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black=
;background:white'>, </span></b><b><span style=3D'font-size:12.0pt;color:=
black;background:white'>Retail</span></b><b><span lang=3DEN-IN style=3D'f=
ont-size:12.0pt;color:black;background:white'>, </span></b><b><span style=
=3D'font-size:12.0pt;color:black;background:white'>Healthcare, Energy, Ut=
ilities &amp; Waste Treatment, Transportation, Banking &amp; Finance,</sp=
an></b><span style=3D'font-size:10.5pt;font-family:"Arial",sans-serif;col=
or:#797D86;background:white'> </span><b><span style=3D'font-size:12.0pt;c=
olor:black;background:white'>Media &amp; Internet, Hospitality, </span></=
b><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:=
white'>etc. <o:p></o:p></span></b></p><p class=3DMsoNormal style=3D'backg=
round:white'><span style=3D'font-size:12.0pt;color:black'>&nbsp;</span><s=
pan lang=3DIT><o:p></o:p></span></p><p class=3DMsoNormal style=3D'backgro=
und:white'><span style=3D'font-size:12.0pt;color:black'>You can contact t=
hem via direct&nbsp;<u>business emails or phone numbers</u>&nbsp;for your=
 sales and marketing initiatives. <o:p></o:p></span></p><p class=3DMsoNor=
mal style=3D'background:white'><span style=3D'font-size:12.0pt;color:blac=
k'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'background:w=
hite'><span style=3D'font-size:12.0pt;color:black'>We can also provide yo=
u contacts </span><span style=3D'font-size:12.0pt;color:black;background:=
white;mso-fareast-language:EN-IN'>from companies currently using <b>Altiu=
m</b></span><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;b=
ackground:white;mso-fareast-language:EN-IN'><o:p></o:p></span></b></p><p =
class=3DMsoNormal style=3D'background:white'><b><span style=3D'font-size:=
12.0pt;color:black;background:white;mso-fareast-language:EN-IN'>Software.=
</span></b><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;ba=
ckground:white;mso-fareast-language:EN-IN'><o:p></o:p></span></b></p><p c=
lass=3DMsoNormal style=3D'background:white'><span lang=3DIT><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNoSpacing><span lang=3DEN-IN style=3D'font-s=
ize:12.0pt;color:black;background:white;mso-fareast-language:EN-IN'>Kindl=
y let me know the <b>Sectors,</b> <b>Job Titles &amp; Geography</b> that =
you wish to target, so that I can get back with the <u>samples, counts </=
u>and more details for your review. <o:p></o:p></span></p><p class=3DMsoN=
ormal style=3D'background:white'><span lang=3DIT><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoNormal style=3D'background:white'><span style=3D'font-s=
ize:12.0pt'>Looking forward to your response.<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:12.0pt;mso-fareast-l=
anguage:EN-IN'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><i><sp=
an lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white;ms=
o-fareast-language:EN-IN'>Thanks,</span></i></b><i><span lang=3DEN-IN><o:=
p></o:p></span></i></p><p class=3DMsoNormal><b><i><span lang=3DEN-IN styl=
e=3D'font-size:12.0pt;color:black'>Hailey Jones - Marketing Executive</sp=
an></i></b><i><span lang=3DEN-IN><o:p></o:p></span></i></p><p class=3Dxms=
onormal><b><i><span lang=3DEN-IN style=3D'font-family:"Calibri",sans-seri=
f;color:black'>&nbsp;</span></i></b><span style=3D'font-size:11.0pt;font-=
family:"Calibri",sans-serif'><o:p></o:p></span></p><p class=3Dxmsonormal>=
<b><span lang=3DEN-IN style=3D'font-family:"Calibri",sans-serif;color:#A6=
A6A6'>Stay safe.</span></b><span style=3D'font-size:11.0pt;font-family:"C=
alibri",sans-serif'><o:p></o:p></span></p><p class=3Dxmsonormal><span lan=
g=3DEN-IN style=3D'font-size:8.0pt;font-family:"Calibri",sans-serif;color=
:gray'>Reply back &#8220;Pass&#8221; for no further emails.</span><span s=
tyle=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><o:p></o:p></s=
pan></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
--=_2alQDcVvOluBuZF2ihdp+dRHprHAg2C8MToYguoDNXLbU0Uo--


--===============7344330270861122464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7344330270861122464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7344330270861122464==--

