Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2711E4B9E
	for <lists+linux1394-devel@lfdr.de>; Wed, 27 May 2020 19:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:Mime-Version:Date:To:Subject:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=HXNs1TRuC5dfB2BEbYiBoFfWgi0jo2YAgjC3/I4h9jM=; b=gCvYXDKXQv3/hzXRThKVuutZL9
	4bv9JE6TUDImG8gdyfgC1rgK58LKJJooVBCZLHAfX92HFGMp1jdnqBECihSAIY036whjolCU1H+34
	F6zrVVklpD3BVrSWNDSBlDNIqYicIEJl4KMoEplMcay7lMb+3CW6vVjANCwk6raZ4D1c=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jdzdM-00064m-R1; Wed, 27 May 2020 17:14:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <0101017257208650-af60a954-29a1-48ae-b250-d70fb0a49b17-000000@us-west-2.amazonses.com>)
 id 1jdzdM-00064g-4e
 for linux1394-devel@lists.sourceforge.net; Wed, 27 May 2020 17:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:Content-Type:Mime-Version:
 Date:To:From:Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P0gXzZLTRA83ut1vRChEDdq9LqcZitU2WtWRyrfzxes=; b=gdaw+n1LVOWxC8uRkmNkVc2KmV
 YuNtdc02GA7N1t3Ub7rFA6pojRChZoGugKVxpUfU9i66lYAy8zKYJCxsPWosMbQyQm890IfB4ve/E
 qXdIOMK2700hG+C/D46n5QqfJHtUCxLunXhVsoAl36dWDVUCNI9bGlvXWJ0xV2ZKV6lw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:References:Content-Type:Mime-Version:Date:To:From:Subject:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=P0gXzZLTRA83ut1vRChEDdq9LqcZitU2WtWRyrfzxes=; b=i
 kWZGjNcBNx7kga1OrSljknY/FSgXpZKJSLsBG9glSOKyn1jhCyjpREjzUrQDpN0v4a6E231fz+zfh
 ugNPTJb7AKfbZK8BUL+36szyGaLB0VOwkGZXQU/b3IyUgQ4okcutgvw1qf6oHAooKV+lX5qwyo75q
 HCHo/iwe4CtMskiA=;
Received: from a27-212.smtp-out.us-west-2.amazonses.com ([54.240.27.212])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.2)
 id 1jdzdE-00F4b6-6N
 for linux1394-devel@lists.sourceforge.net; Wed, 27 May 2020 17:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=sknkt525wmvsd5qrslvt4aisaznnhvir; d=konnectglobalmarketing.com;
 t=1590599648;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id;
 bh=P0gXzZLTRA83ut1vRChEDdq9LqcZitU2WtWRyrfzxes=;
 b=eTor1OTlbIBX3m6nlyvxzSqcK3icivE0ovhfVQGm380Eqe7QHlhup/k5CgQ5Ir1E
 Do0JlgMYBtvQHwLsnrLkt59kQKmaFBHyHmus/0CSXkKYa6wryA9MInjSwZYoh/OflQd
 nNbjD1E9bgFNY+Lj+ZH/eSQH63VqLf1bnx1FiiGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=hsbnp7p3ensaochzwyq5wwmceodymuwv; d=amazonses.com; t=1590599648;
 h=Subject:From:To:Date:Mime-Version:Content-Type:References:Message-Id:Feedback-ID;
 bh=P0gXzZLTRA83ut1vRChEDdq9LqcZitU2WtWRyrfzxes=;
 b=ItVAZ8EOAzz08AAtD+8Mp2pRfLiVar4qVZYhQAUhVxptTjvMycT/AEWH2EhfWKzv
 WXYdR6r/T+SFswQGRr9d/Rebi1swvoKa2C2O7HcByL8GX0QSQi0+Qz0MxA3b3bloN2a
 zHwiztU2HYPsxtYDXe8T8+9Oxdfkq25axMQHWeng=
Subject: Proposal
To: =?UTF-8?Q?linux1394-devel=40lists=2Esourceforge=2Enet?=
 <linux1394-devel@lists.sourceforge.net>
Date: Wed, 27 May 2020 17:14:08 +0000
Mime-Version: 1.0
References: <mail.340e35b6-a5da-4bfa-beed-6717387ed923@storage.wm.amazon.com> 
 <mail.340e35b6-a5da-4bfa-beed-6717387ed923@storage.wm.amazon.com>
X-Priority: 3 (Normal)
X-Mailer: Amazon WorkMail
Thread-Index: AdY0R0NUi9UxGUG6SSOIxpFPa6nEGQ==
Thread-Topic: Proposal
Message-ID: <0101017257208650-af60a954-29a1-48ae-b250-d70fb0a49b17-000000@us-west-2.amazonses.com>
X-SES-Outgoing: 2020.05.27-54.240.27.212
Feedback-ID: 1.us-west-2.An468LAV0jCjQDrDLvlZjeAthld7qrhZr+vow8irkvU=:AmazonSES
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [54.240.27.212 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [54.240.27.212 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jdzdE-00F4b6-6N
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
Content-Type: multipart/mixed; boundary="===============0276250956782988370=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--===============0276250956782988370==
Content-Type: multipart/alternative; 
 boundary="=_w+FPVBuoMrM9gq7eNv-XTY7pxf+S7z3qh3VpnB8l1Xa1D3gr"

This is a multi-part message in MIME format. Your mail reader does not
understand MIME message format.
--=_w+FPVBuoMrM9gq7eNv-XTY7pxf+S7z3qh3VpnB8l1Xa1D3gr
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

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

--=_w+FPVBuoMrM9gq7eNv-XTY7pxf+S7z3qh3VpnB8l1Xa1D3gr
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
=09{mso-style-type:export-only;}
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
WordSection1><p class=3DMsoNormal style=3D'background:white'><span style=3D=
'font-size:12.0pt;color:black'>Hi,</span><span lang=3DIT><o:p></o:p></spa=
n></p><p class=3DMsoNormal style=3D'background:white'><span lang=3DIT><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'background:white'>=
<span style=3D'font-size:12.0pt;color:black'>Would you like to connect wi=
th key decision makers from<b> </b>the below sectors<b>;<o:p></o:p></b></=
span></p><p class=3DMsoNormal style=3D'background:white'><b><span style=3D=
'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></b></p><p class=3D=
MsoNormal style=3D'background:white'><b><span lang=3DEN-IN style=3D'font-=
size:12.0pt;color:black;background:white'>Manufacturing, </span></b><b><s=
pan style=3D'font-size:12.0pt;color:black;background:white'>Construction<=
/span></b><b><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black;bac=
kground:white'>, </span></b><b><span style=3D'font-size:12.0pt;color:blac=
k;background:white'>Education</span></b><b><span lang=3DEN-IN style=3D'fo=
nt-size:12.0pt;color:black;background:white'>, </span></b><b><span style=3D=
'font-size:12.0pt;color:black;background:white'>Retail</span></b><b><span=
 lang=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white'>, <=
/span></b><b><span style=3D'font-size:12.0pt;color:black;background:white=
'>Healthcare, Energy, Utilities &amp; Waste Treatment, Transportation, Ba=
nking &amp; Finance,</span></b><span style=3D'font-size:10.5pt;font-famil=
y:"Arial",sans-serif;color:#797D86;background:white'> </span><b><span sty=
le=3D'font-size:12.0pt;color:black;background:white'>Media &amp; Internet=
, Hospitality, </span></b><b><span lang=3DEN-IN style=3D'font-size:12.0pt=
;color:black;background:white'>etc. <o:p></o:p></span></b></p><p class=3D=
MsoNormal style=3D'background:white'><span style=3D'font-size:12.0pt;colo=
r:black'>&nbsp;</span><span lang=3DIT><o:p></o:p></span></p><p class=3DMs=
oNormal style=3D'background:white'><span style=3D'font-size:12.0pt;color:=
black'>You can contact them via direct&nbsp;<u>business emails or phone n=
umbers</u>&nbsp;for your sales and marketing initiatives. <o:p></o:p></sp=
an></p><p class=3DMsoNormal style=3D'background:white'><span style=3D'fon=
t-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorm=
al style=3D'background:white'><span style=3D'font-size:12.0pt;color:black=
'>We can also provide you contacts </span><span style=3D'font-size:12.0pt=
;color:black;background:white;mso-fareast-language:EN-IN'>from companies =
currently using <b>Altium</b></span><b><span lang=3DEN-IN style=3D'font-s=
ize:12.0pt;color:black;background:white;mso-fareast-language:EN-IN'><o:p>=
</o:p></span></b></p><p class=3DMsoNormal style=3D'background:white'><b><=
span style=3D'font-size:12.0pt;color:black;background:white;mso-fareast-l=
anguage:EN-IN'>Software.</span></b><b><span lang=3DEN-IN style=3D'font-si=
ze:12.0pt;color:black;background:white;mso-fareast-language:EN-IN'><o:p><=
/o:p></span></b></p><p class=3DMsoNormal style=3D'background:white'><span=
 lang=3DIT><o:p>&nbsp;</o:p></span></p><p class=3DMsoNoSpacing><span lang=
=3DEN-IN style=3D'font-size:12.0pt;color:black;background:white;mso-farea=
st-language:EN-IN'>Kindly let me know the <b>Sectors,</b> <b>Job Titles &=
amp; Geography</b> that you wish to target, so that I can get back with t=
he <u>samples, counts </u>and more details for your review. <o:p></o:p></=
span></p><p class=3DMsoNormal style=3D'background:white'><span lang=3DIT>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'background:whit=
e'><span style=3D'font-size:12.0pt'>Looking forward to your response.<o:p=
></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-s=
ize:12.0pt;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><b><i><span lang=3DEN-IN style=3D'font-size:12.0pt;color:b=
lack;background:white;mso-fareast-language:EN-IN'>Thanks,</span></i></b><=
i><span lang=3DEN-IN><o:p></o:p></span></i></p><p class=3DMsoNormal><b><i=
><span lang=3DEN-IN style=3D'font-size:12.0pt;color:black'>Hailey Jones -=
 Marketing Executive</span></i></b><i><span lang=3DEN-IN><o:p></o:p></spa=
n></i></p><p class=3Dxmsonormal><b><i><span lang=3DEN-IN style=3D'font-fa=
mily:"Calibri",sans-serif;color:black'>&nbsp;</span></i></b><span style=3D=
'font-size:11.0pt;font-family:"Calibri",sans-serif'><o:p></o:p></span></p=
><p class=3Dxmsonormal><b><span lang=3DEN-IN style=3D'font-family:"Calibr=
i",sans-serif;color:#A6A6A6'>Stay safe.</span></b><span style=3D'font-siz=
e:11.0pt;font-family:"Calibri",sans-serif'><o:p></o:p></span></p><p class=
=3Dxmsonormal><span lang=3DEN-IN style=3D'font-size:8.0pt;font-family:"Ca=
libri",sans-serif;color:gray'>Reply back &#8220;Pass&#8221; for no furthe=
r emails.</span><span style=3D'font-size:11.0pt;font-family:"Calibri",san=
s-serif'><o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
</div></body></html>
--=_w+FPVBuoMrM9gq7eNv-XTY7pxf+S7z3qh3VpnB8l1Xa1D3gr--


--===============0276250956782988370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0276250956782988370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0276250956782988370==--

