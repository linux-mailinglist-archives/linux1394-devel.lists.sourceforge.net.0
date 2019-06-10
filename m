Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D693B419
	for <lists+linux1394-devel@lfdr.de>; Mon, 10 Jun 2019 13:37:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1haIcG-0004g5-Mb; Mon, 10 Jun 2019 11:37:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <contactzleads3@contactzleads.com>)
 id 1haIcE-0004fa-RR
 for linux1394-devel@lists.sourceforge.net; Mon, 10 Jun 2019 11:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ndUEDPvPw8Bx4DsEMRe6CBq9sLAuiY5YrvKH55WAsXY=; b=THHeIN8bCAiRJzu8+pfereMhQT
 64NwB2S4OLGuAu3SlQc+TEp4y4GZDy1YsPT6Ei3K5ytlw1KwhOFsnbeESq3xNJyP/DElDjLMV6d2o
 sXzQ3T8kRpruWCvvS4mB7UmbDSYXA/fypQk1Hpx8XfGR6GVd/eC0hjCez60URPrpU5wc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ndUEDPvPw8Bx4DsEMRe6CBq9sLAuiY5YrvKH55WAsXY=; b=nQIG5lquZe6x19VruKfynjGe1B
 CCuX69QJU1TziByO1NjHTDrwQTqkY4Uwr1uhKtBpXi0q/fczrC5bpldCNxTAUKSEznfZQxn2Fp/Hu
 /fKRtpZj/QHN2AffzgSvsDi8Fg57PxRy/8rZAC9/hS6rqAkGIkeRPS5Uo2QjSnbadDcg=;
Received: from sonic305-25.consmr.mail.sg3.yahoo.com ([106.10.241.88])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1haIcC-005zSh-Hi
 for linux1394-devel@lists.sourceforge.net; Mon, 10 Jun 2019 11:37:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1560166639; bh=ndUEDPvPw8Bx4DsEMRe6CBq9sLAuiY5YrvKH55WAsXY=;
 h=From:To:References:In-Reply-To:Subject:Date:From:Subject;
 b=g8t0PiHBaqRmofnI19hm+fInqB8D3dqqBMAdxjIbOqxmx+vlHYWxvhgqPXM46gw3s1jgHjoQ8ZRTJSw6i6YZrywxPUYv/HdZn20UtPQhBIPRJz0bro05nJGg3sJnqJfoI2jsYyiL3Y3zJtEnqiCCKcgcQdZjvgc8CgJhnCFU9TLjdWICLuvMtXlwuEcP60sEkyHut3OkMvopUEi8YWN4C9meQnW6SnrE7MccRIoXqaWWdQE0YsDPQYVPqJYNdDCtNjMkzbzKwBYtttGsZgFlS2yrp+y13Q9NgxjkHDO8l57wDMi/lxRJNHQMPTqfFGQTXAVVq10dL8GpeSJ5Ftw+rA==
X-YMail-OSG: xDgRKjMVM1nLHz2QtCk5VkqqkHvTdUuFs7bnQO7.GPzRRfMsovkTKuVq149.iBq
 ctRbPEdy1pPx4n5zeg9Ef6Ihx1poHSAmaz2LSKh0hSuU1ZHWdAvdOD3Wa0j1PyaEdw8r7nMCFabv
 nxCL2WU6ceYIEk6Z38FAeLFre.4F4bGKQZhiW0IuQndKDpTrFEZjj.fuS9RDXBJd8sasWhD2Z4GU
 3dnFEwv.NwLP1AD.YBoSk59NDUBRrRJAVDe7IAyQyfJ2i5rlRNqVKfQxk.jK0BkFR1M9lkBi88lM
 V9M2Exz_0kfw8eQiUKE36EWN8qe.xHNrIr_iIG7oVKDT1SdXoU6.QuJy4cqUUahtROJrKvjzTM9S
 w8q2pPPBklp4YHBtfiAtB_qvOqHNkwq_k0RWPirHvZ3fPjtZEhlbSrYYbGl_wRMTECo8KTvgFCai
 MpNVAiOdmnRpYfMjW9T1ob9Ria3Qkp4tpEdmFkZ0wOLXbVjsfSPxdrbOdTrH741oJEcahZEIfPM_
 oSYH0Uox5tSFM2JS7Gq7JnZM00nYB8Tk4RFbf_zaz6FSZfcfRyr4pyud2ID6Gb0j1hRqvoKn_8tC
 K9MQOG2oMqE5HxhnRkq.GTsnLaS.CQz4xliE0ph_zIvVZ3Hxaj_w9oJ3KWQEdPY15X8Cb44tW1a5
 LaLH6us9oHCujIhlTFpUJpxAY3slJbvVWzWoLJdRUION_AVbsavvGATUZUyAMd1vIECN.9XG5JyT
 SW.oYg9PpJAEPJ80VdxivETSG8qy..nzz485hm1G3_hZpdWSY4QdkCgtwtuPJN_w2wKS5B_ElkKq
 bge_ltQbHsaEwHl3ZPsciOJvvac1tpsAI7PhIHgTdMD9y1N5qC2ujDV.J4VXbNZXFX1vld2yEp7P
 othCntNFzC2z4u9G444t2w.AqWoV2nnmMnsyQxmsSidh77QQTGYvkYf4lSBiQBaDSocu7BWyXCL0
 PVEcYMygUyNLhM5Xmsf3VghZa.Jiyicuwc0SkBfsNMLsQylgitgM4BgdsgEwZdbPPzH__Z66TGub
 crQDo6FQ83zVsY6pRyT.a3Wi0.mGLK3E5XmtuQNM_4fjTXxnEu4wd4wwHHcFk0_.RayyjzW6WaJz
 QiTKEmYSH1xkPhsTzMCFi2Ichy.tCt3Ij.LDPRVVnZXYLTpVBFanUIhVOUc2MoDqmvTbZ_8U1TWW
 JYFmRi0SAjOhIXH_kmdf0Fl3tsv3c6XzC.13P5lTEN3bQGumiimtYrV5MgofH9CWpx6gtxlHqPDJ
 baiVeRX5qkIV_No0rBxLp7pL9D.A-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.sg3.yahoo.com with HTTP; Mon, 10 Jun 2019 11:37:19 +0000
Received: from 175.100.147.55 (EHLO Admin18PC) ([175.100.147.55])
 by smtp414.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 2ab0392034cb733ee6a7373da947339d
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 10 Jun 2019 11:37:17 +0000 (UTC)
From: "Mary Brown" <contactzleads3@contactzleads.com>
To: <linux1394-devel@lists.sourceforge.net>
References: 
In-Reply-To: 
Subject: RE: Lists - Edie Show 2019
Date: Mon, 10 Jun 2019 07:37:17 -0400
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAK5LuwczXKJJstHPzUk4u5jCgAAAEAAAAKOtt9lGY0ZGqCTqdBa2ogsBAAAAAA==@contactzleads.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdUbm68pFE5bIEeCSPiV1fAbRck4PwD5SvfQ
Content-Language: en-us
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [106.10.241.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
 0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1haIcC-005zSh-Hi
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
Content-Type: multipart/mixed; boundary="===============0769250713066148621=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multipart message in MIME format.

--===============0769250713066148621==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_18C2_01D51F5F.54592460"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_18C2_01D51F5F.54592460
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

Hi,

 

I am just doing a follow up with my previous email to check whether you are
interested in our Contact Lists.

 

Could you please let me know your thoughts?

 

In turn, I'll get back with precise counts and pricing details for your
consideration. 

 

Thank you and I Look forward to hearing from you.

 

 

Regards,

Mary Brown

 

 

From: Mary Brown [mailto:contactzleads3@contactzleads.com] 
Sent: Wednesday, June 05, 2019 8:39 AM
To: 'linux1394-devel@lists.sourceforge.net'
Subject: Lists - Edie Show 2019

 

 

 

Dear Exhibitors,

 

Thanks for participating in Edie - Energy/Sustainability/Resource Efficiency
Show 2019

 

Edie - Energy/Sustainability/Resource Efficiency Show May 21-22, 2019
updated attendees List is Now Available! Which enables you to showcase your
company's post-show marketing efforts with unlimited usage on the contact
list (No restriction on usage).

  

Qualified Data Field includes: Company Name, Web Address, Contact Name, Job
Title, Mailing Address, Phone Number, and Industry, SIC Code, Company
Mailing address with Zip Code, Fax Number, Industry Classification, and
Website URL along with verified business email address.

 

These contact lists will be delivered in Excel format which can be used for
telemarketing, direct marketing, and email marketing initiatives etc.

 

Please let me know your thoughts, as it will be my pleasure to share you the
counts and pricing of the lists.

 

Looking back to hearing from you.

 

Regards

Mary Brown

Edie - Energy/Sustainability/Resource Efficiency Show -Event Specialist.

May 21-22, 2019|Birmingham, UK

 


------=_NextPart_000_18C2_01D51F5F.54592460
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'>I am just doing a follow up with my =
previous email to check whether you are interested in our Contact =
Lists.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'>Could you please let me know your =
thoughts?<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'>In turn, I'll get back with precise counts =
and pricing details for your consideration. <o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'>Thank you and I Look forward to hearing =
from you.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'>Regards,<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-autospace:none'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif";color:#1F497D=
;mso-fareast-language:EN-IN'>Mary Brown<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p></div><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Mary Brown [mailto:contactzleads3@contactzleads.com] <br><b>Sent:</b> =
Wednesday, June 05, 2019 8:39 AM<br><b>To:</b> =
'linux1394-devel@lists.sourceforge.net'<br><b>Subject:</b> Lists - Edie =
Show 2019<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Dear =
Exhibitors,<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Thanks for participating in&nbsp;<b><u><span =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>Edie =
&#8211; Energy/Sustainability/Resource Efficiency Show =
</span></u></b><b><span =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>2019</span><=
/b><o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal><b><u><span =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>Edie =
&#8211; Energy/Sustainability/Resource Efficiency Show =
</span></u></b>May 21-22, 2019 updated attendees List is&nbsp;<b><u>Now =
Available</u></b>! Which enables you to showcase your company&#8217;s =
post-show marketing efforts with unlimited usage on the contact list (No =
restriction on usage).<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal><b><u>Qualified Data Field includes</u></b>: Company =
Name, Web Address, Contact Name, Job Title, Mailing Address, Phone =
Number, and Industry, SIC Code, Company Mailing address with Zip Code, =
Fax Number, Industry Classification, and Website URL along with verified =
business email address.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>These =
contact lists will be delivered in Excel format which can be used for =
telemarketing, direct marketing, and email marketing initiatives =
etc.<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal><b>Please let me know your thoughts, as it will be my =
pleasure to share you the counts and pricing of the =
lists.</b><o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Looking back to hearing from you.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Regards<o:p></o:p></p><p class=3DMsoNormal><b>Mary =
Brown</b><o:p></o:p></p><p class=3DMsoNormal><b><u><span =
style=3D'font-size:9.0pt;font-family:"Verdana","sans-serif"'>Edie =
&#8211; Energy/Sustainability/Resource Efficiency Show =
</span>-</u></b>Event Specialist.<o:p></o:p></p><p class=3DMsoNormal>May =
21-22, 2019|Birmingham, UK<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_18C2_01D51F5F.54592460--



--===============0769250713066148621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0769250713066148621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0769250713066148621==--


