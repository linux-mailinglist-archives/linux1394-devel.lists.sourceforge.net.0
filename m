Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BED43E1DE
	for <lists+linux1394-devel@lfdr.de>; Thu, 28 Oct 2021 15:16:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mg5GE-0000tS-Uj; Thu, 28 Oct 2021 13:16:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <khloe.jordan@speedprolist.com>) id 1mg5GC-0000tD-Av
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Oct 2021 13:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/nc6udOYNvW55Mlz4JUCWWw7NBV5E/Eeeh9TFhBJDVs=; b=U8lZlpwSF9Ebtrjm7SHUXatg3H
 gHS3JN2+9Q4ZXLDEKdnnICFc/LFuS+3zqoyv9L3vPA04TOu7Hlnm1g043tm5U5pvwGoyHqSvtc09r
 t2SFlH96j+YXAaGW50POr8JK2+DR4L9Pxxe+jak0B3FmN4hXJ62fGIJSA0aremJw3dAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/nc6udOYNvW55Mlz4JUCWWw7NBV5E/Eeeh9TFhBJDVs=; b=JLvApyqE6vrNYGVhreKLdhTzpY
 NTjhF6F0nGAoyZzr871stdaE7PcEj/ltZbZ9rzWRmQKm/pfGi+Qpg6d8QGCHrVR7Bh3++Lw9mPoeV
 jTjQj84fkHefcyT6ZhyfpVkEy/swR/g5VEYtITRZ8WeQJ+tkX5JHttcEqzj/gR1hNp5E=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mg5G2-0001LK-SC
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Oct 2021 13:16:00 +0000
Received: by mail-pl1-f195.google.com with SMTP id v16so4387805ple.9
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 28 Oct 2021 06:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=speedprolist.com; s=google;
 h=return-receipt-to:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:thread-index:importance:content-language
 :disposition-notification-to;
 bh=/nc6udOYNvW55Mlz4JUCWWw7NBV5E/Eeeh9TFhBJDVs=;
 b=fIlKxmewJqTkXhDHlH+fqXY0F8te2ezoyAEwURDkieX88OXS89q0bcMGnqeL3R1/Lg
 ywl4/Kx7rhnDh4OrZRZlDYIAYFIr0KllP3gvPth5gtyyBK1UzdeTF3/HCnOUA1f0z2Fm
 beWBnqKd4KcDXnzzdfaEYu5Tth/fpPHBupXvInUaK/Xmb4VEy/RHHI9xk8LY0YLHdSk6
 RBXSY48nUmxPCtsM61OZ4U7RZEfrhR8eiu7H0Ev2BD/TzhYDVR7DssFSW6LBo72upHgW
 JVA9YwlG/wO3uVFYxl/EfEH6pW+67eJcoiVtW46L/FcQ34Um41hWpa8awIcKqiv4E3xh
 u82Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:return-receipt-to:from:to:references:in-reply-to
 :subject:date:message-id:mime-version:thread-index:importance
 :content-language:disposition-notification-to;
 bh=/nc6udOYNvW55Mlz4JUCWWw7NBV5E/Eeeh9TFhBJDVs=;
 b=lEOnjS6RXwL6hQKw435V5TUUwI3StXyQ6TEt5UUr1KtoJfny3x/PJRaBtXOExMSUNU
 irT/skl6a09iH5FGxzoSaWjK4WBEBG5nvF28xYjplqWKYCee+pNyU5aSZ7jJrZLFRSOA
 QGNCcH5dWHzuVtWbUwjO5dF0Sf4T48N5yknXJeW5wnMyOmmEvqGZ01oWPqvPVaRGpmDK
 xSnH3Biry5nra98jJDH0Nb4CispeUzIZ3+A2Oad4Hy+GKU2gWv067MQibtzZqphffKIG
 DyymzY8b1xj9dJtfTsRO8tbbE02yVKtI2dSwd1SV1aFNQssDjP0jDMghvBJ52ecvGXUi
 0Pbg==
X-Gm-Message-State: AOAM531D3jTpHoUYz6oxBnad7BdiV2KGZy5taPIKWGyo4eoyM0rxM0B+
 5WigGKfatYYEKvrHGHPl4FjnXjfy3sf3bA==
X-Google-Smtp-Source: ABdhPJw7GPGfr+F2JzKHR/h7VKOdGXWb2EM2xnOQKC0mqitpy+VxesDIXMor/jHPQTj6/uOhSn3tpQ==
X-Received: by 2002:aa7:8b0d:0:b0:44c:89ca:7844 with SMTP id
 f13-20020aa78b0d000000b0044c89ca7844mr3879423pfd.19.1635423047938; 
 Thu, 28 Oct 2021 05:10:47 -0700 (PDT)
Received: from DESKTOPEQ4C2O8 ([103.214.62.219])
 by smtp.gmail.com with ESMTPSA id qe17sm3361203pjb.39.2021.10.28.05.10.46
 for <linux1394-devel@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Oct 2021 05:10:47 -0700 (PDT)
To: <linux1394-devel@lists.sourceforge.net>
References: 
In-Reply-To: 
Subject: Medical Design & Manufacturing - 2021 Attendees list
Date: Thu, 28 Oct 2021 08:10:42 -0400
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAK4fbKyEz+5HouOZvcGd6HHCgAAAEAAAAGQdl5DyOkJEtMkl5BnTEPgBAAAAAA==@speedprolist.com>
MIME-Version: 1.0
X-Priority: 1 (Highest)
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdfL86uY9U6ulCPwQled8Gw5h4WA3AAAM0/AAAAAE1AAAAAMgAAAAAxAAAAAC0AAAAAOcAAAAAvQAAAADGAAAAAKMAAAAAzAAAAADTAAAAAMYAAAAA7AAAAADPAAAAALsAAAAAuwAAAADIAAAAAMcAAAAAxAAAAADXAAAAANQAAAAA5wAAAADgAAAAAPwAAAAA7A
Importance: High
Content-Language: en-us
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  HI This is regarding Medical Design & Manufacturing - MD&M
 East 2021 Attendees Email Contact List. List includes:- Contact Name, Job
 Title, Company/Business Name, email, Website/URL, Revenue, Employee Size,
 SIC Code etc., 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: speedprolist.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-Headers-End: 1mg5G2-0001LK-SC
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
Content-Type: multipart/mixed; boundary="===============8247686279141359709=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This is a multipart message in MIME format.

--===============8247686279141359709==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0E77_01D7CBD3.4FFA9840"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0E77_01D7CBD3.4FFA9840
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

HI

 

This is regarding Medical Design & Manufacturing - MD&M East 2021 Attendees
Email Contact List.

 

List includes:- Contact Name, Job Title, Company/Business Name, email,
Website/URL, Revenue, Employee Size, SIC Code etc.,

 

If you are interested just reply back as "Send Counts and Cost"

 

Regards,

Khloe Jordan

Head of Sales and Marketing

 

 


------=_NextPart_000_0E77_01D7CBD3.4FFA9840
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri","sans-serif";}
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
vlink=3Dpurple><div class=3DWordSection1><p =
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
------=_NextPart_000_0E77_01D7CBD3.4FFA9840--



--===============8247686279141359709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8247686279141359709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8247686279141359709==--


