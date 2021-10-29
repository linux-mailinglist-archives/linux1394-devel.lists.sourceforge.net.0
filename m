Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AD8440177
	for <lists+linux1394-devel@lfdr.de>; Fri, 29 Oct 2021 19:51:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mgW25-0000fU-DE; Fri, 29 Oct 2021 17:51:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <khloe.jordan@speedprolist.com>) id 1mgW23-0000fO-8G
 for linux1394-devel@lists.sourceforge.net; Fri, 29 Oct 2021 17:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gspn80yrbQGlMIAunRh4UnNy5kblF9dUUYQmxHyrxdI=; b=N9N94Janxx51/IiVxoXoY9oY7K
 CxU/4DYq92ZpXHv36+xuEW8BlXC0OBRgt1ccTF9F+yOBWlCcgBhv2Fb5EYGYrXfgwsqyVe0GwuOXA
 cZAMDiiLNZyn2bUjh9RVTumNJa/Gp1YF41b4sQBauTos/vsfRezxT4UP4qJUmILr5P/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gspn80yrbQGlMIAunRh4UnNy5kblF9dUUYQmxHyrxdI=; b=JhE+NKlBR2xgKE+qawLBbwQSBM
 w+DHDylVX/J7H5Kl521fyA0gY9nQob3BePO2iztUSJ+ZjhwGP2Ejdd1xoHo2btjbMu5UNlf7+grhh
 9ldIDMWYUty1v0Hqk2vfSOLjPAz3excRlHjlQV4Puvhh5l76Ewxi28WN5UrSKcVPjWbw=;
Received: from mail-qv1-f65.google.com ([209.85.219.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mgW1r-0064jZ-O1
 for linux1394-devel@lists.sourceforge.net; Fri, 29 Oct 2021 17:51:09 +0000
Received: by mail-qv1-f65.google.com with SMTP id u16so1921550qvk.4
 for <linux1394-devel@lists.sourceforge.net>;
 Fri, 29 Oct 2021 10:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=speedprolist.com; s=google;
 h=return-receipt-to:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:content-language
 :disposition-notification-to;
 bh=gspn80yrbQGlMIAunRh4UnNy5kblF9dUUYQmxHyrxdI=;
 b=RqSlRw3vjqklsHqsjsUyBgvV3FoCF2Rd0gzrviBm8TKHwiS/97z+prYSybV/oGm/l6
 pCa8W7yjFCKIHsiuFAwa0/eff+Ps/GNv+hqEMjb3r4rAwH9EhiWJVvSKpfdFQPEj1MhM
 qFMuQvIwTlzOaNkrwrKIgtcOgr3U+AOXdTfYxUtGUbLmtlgAzqSZhkQ1Ixw/a2kk+N8K
 UiAXS9H00hZwLuPBG1TIquzIlpNSp8WyoW0zvU4CSOrpdyaiyC3Y9EZyNFK/OceYOrnR
 n0+Yp8U7AO3siXMsaI8Pl6+ks2UxpbHSiOGW/rt/ZyJMWTTodGveAbrUI5wXFX0wgGMP
 wGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:return-receipt-to:from:to:references:in-reply-to
 :subject:date:message-id:mime-version:thread-index:content-language
 :disposition-notification-to;
 bh=gspn80yrbQGlMIAunRh4UnNy5kblF9dUUYQmxHyrxdI=;
 b=53JkCJorWHmmBkWZuoE/HYi3HMaL0wePyVt8Ux2XYSzvwToXvGI3mjUtEvONlTTPsR
 fIsKEb328D+Dw/MOjCr/2dVVrJey6mizC9neKE2JSxuQOuqGeTGSmx2puubu1MkoR3++
 h2AJ5dyefRixeeSNv40ZV/tF7HEebG+11L38vbAHXocg2IV8lHDaQXkkIL8Ggs7KcvnR
 WiNrB2VoHQU0ua+CVQnYnnC1FHDUMNOOXOM906ORv70jC++YO4rsk9U0aMfNvxYCKE2I
 zbQhE/IWjwWb3y0zqeuK/85XzJLlpwOOOYDvRMBVjhmmlBnCEfcJ/7XPB56iSxsOwoxQ
 p1TA==
X-Gm-Message-State: AOAM5319Bp6eNesslGe2BmEuFD2Ie7QgDylGzA5VcKuYKHkY2hu0coRc
 Qfsq49pVyKchK6GvrMZyQ9H2GZORFYsnKA==
X-Google-Smtp-Source: ABdhPJws6/fGM0dA2GceGYC684ExMR+w65MKwnmruwH+KpNgFkj4RuCYcRGTaYJcBpXYX5CSh/42qg==
X-Received: by 2002:a17:903:189:b0:140:5f35:437 with SMTP id
 z9-20020a170903018900b001405f350437mr10773937plg.56.1635526263727; 
 Fri, 29 Oct 2021 09:51:03 -0700 (PDT)
Received: from DESKTOPEQ4C2O8 ([223.231.184.89])
 by smtp.gmail.com with ESMTPSA id i2sm7051637pfa.34.2021.10.29.09.51.02
 for <linux1394-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Oct 2021 09:51:03 -0700 (PDT)
To: <linux1394-devel@lists.sourceforge.net>
References: 
In-Reply-To: 
Subject: RE: Medical Design & Manufacturing - 2021 Attendees list
Date: Fri, 29 Oct 2021 12:50:32 -0400
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAK4fbKyEz+5HouOZvcGd6HHCgAAAEAAAAJbs5JHv2b5AljIsuWE6EPgBAAAAAA==@speedprolist.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdfL86uY9U6ulCPwQled8Gw5h4WA3AAAM0/AAAAAE1AAAAAMgAAAAAxAAAAAC0AAAAAOcAAAAAvQAAAADGAAAAAKMAAAAAzAAAAADTAAAAAMYAAAAA7AAAAADPAAAAALsAAAAAuwAAAADIAAAAAMcAAAAAxAAAAADXAAAAANQAAAAA5wAAAADgAAAAAPwAAAAA7AADtMrnA=
Content-Language: en-us
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Is there any update to my previous email Please let me
 know your thoughts, so that i can get back to you with complete details 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: speedprolist.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.65 listed in list.dnswl.org]
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1mgW1r-0064jZ-O1
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
From: Khloe Jordan via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: Khloe Jordan <khloe.jordan@speedprolist.com>
Content-Type: multipart/mixed; boundary="===============6381289017438509043=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multipart message in MIME format.

--===============6381289017438509043==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1593_01D7CCC3.A1650440"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_1593_01D7CCC3.A1650440
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

Hi,

Is there any update to my previous email

Please let me know your thoughts, so that i can get back to you with
complete details

Waiting for your earliest response,

Regards,

Khloe Jordan

 

From: Khloe Jordan [mailto:khloe.jordan@speedprolist.com] 
Sent: Thursday, October 28, 2021 8:11 AM
To: 'linux1394-devel@lists.sourceforge.net'
Subject: Medical Design & Manufacturing - 2021 Attendees list
Importance: High

 

 

HI

 

This is regarding Medical Design & Manufacturing - MD&M East 2021 Attendees
Email Contact List.

 

List includes:- Contact Name, Job Title, Company/Business Name, email,
Website/URL, Revenue, Employee Size, SIC Code etc.,

 

If you are interested just reply back as "Send Counts and Cost"

 

Regards,

Khloe Jordan

Head of Sales and Marketing

 

 


------=_NextPart_000_1593_01D7CCC3.A1650440
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
class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;color:black'> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'>Is there any update to my =
previous email<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'> <o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;color:black'>Please =
let me know your thoughts, so that i can get back to you with complete =
details<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'> <o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;color:black'>Waiting =
for your earliest response,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;color:black'> =
<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:12.0pt;color:black'>Regards,<o:p></o:p></span></b></p>=
<p class=3DMsoNormal><b><span =
style=3D'font-size:12.0pt;color:black'>Khloe =
Jordan<o:p></o:p></span></b></p></div><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
Khloe Jordan [mailto:khloe.jordan@speedprolist.com] <br><b>Sent:</b> =
Thursday, October 28, 2021 8:11 AM<br><b>To:</b> =
'linux1394-devel@lists.sourceforge.net'<br><b>Subject:</b> Medical =
Design &amp; Manufacturing - 2021 Attendees list<br><b>Importance:</b> =
High<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>HI<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>This is =
regarding <b><span style=3D'font-size:14.0pt'>Medical Design &amp; =
Manufacturing - MD&amp;M East 2021 </span></b>Attendees Email Contact =
List.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b>List includes</b>:- Contact Name, Job Title, =
Company/Business Name, email, Website/URL, Revenue, Employee Size, SIC =
Code etc.,<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>If you are interested just reply back as <span =
style=3D'font-size:14.0pt'>&#8220;</span><b><span =
style=3D'font-size:12.0pt'>Send Counts and Cost</span></b><span =
style=3D'font-size:14.0pt'>&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b>Regards,<o:p></o:p></b></p><p =
class=3DMsoNormal><b><span style=3D'font-size:12.0pt;color:black'>Khloe =
Jordan<o:p></o:p></span></b></p><p class=3DMsoNormal><b>Head of Sales =
and Marketing<o:p></o:p></b></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_1593_01D7CCC3.A1650440--



--===============6381289017438509043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6381289017438509043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6381289017438509043==--


