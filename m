Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDDA3BA129
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Jul 2021 15:20:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lzJ5m-0004PH-1x; Fri, 02 Jul 2021 13:20:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <infoteam@metamarketsearch.online>)
 id 1lzJ5k-0004Or-89
 for linux1394-devel@lists.sourceforge.net; Fri, 02 Jul 2021 13:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xwx2g5IhSzHQiqqN7s6ynFTZqV/+3w3uAQXE4aKNRQ4=; b=WXOY3UwkRu9bUwNuKvQik4Z6j5
 2vdHJ/pO0Ql5X28+8atbpypKe9u5RWdrFAjuV/ejfZrqDnPFIZxf42rCRjpolGvJuZl7P0jtlb/VN
 3P9ixJcbErGymIv38CIRrwR8ljT/0EJsIZYjxrRbICJ27fLs8zhqJL+kAXcDBUl9iVVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xwx2g5IhSzHQiqqN7s6ynFTZqV/+3w3uAQXE4aKNRQ4=; b=n
 S+ConA0XB5mOjoMGObwfwPVINO12KiQqMscZQWIGpexL7/hd9Vc6T7E4Ysu1xdbHNH54C0D+eD67u
 yZW4lNl1h/GEDcMqTCAA3/LKtO8RWMgWI/ybtbLTV0bEvBFf47RZxSocYAQ/zy9hL6jTa5r0ICQXm
 yREDW5Vij03TRFd8=;
Received: from mail.metamarketsearch.online ([147.182.166.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lzJ5b-0000w4-5m
 for linux1394-devel@lists.sourceforge.net; Fri, 02 Jul 2021 13:20:24 +0000
Authentication-Results: mail.metamarketsearch.online; auth=pass (login)
From: DHL Express <infoteam@metamarketsearch.online>
To: linux1394-devel@lists.sourceforge.net
Subject: DHL Shipment Arrival Notice AWB: 5579224884
Date: 2 Jul 2021 13:01:49 +0000
MIME-Version: 1.0
Received: from localhost (Unknown [127.0.0.1])
 by mail.metamarketsearch.online (Haraka) with ESMTPSA id
 D5DE2953-490C-4900-8194-B39F5D2E1B41.1
 envelope-from <infoteam@metamarketsearch.online> (authenticated bits=0)
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 02 Jul 2021 13:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256;
 bh=xwx2g5IhSzHQiqqN7s6ynFTZqV/+3w3uAQXE4aKNRQ4=; c=relaxed/simple;
 d=metamarketsearch.online; h=from:subject:date:to:mime-version; s=s20210630850;
 b=fr9m2mgzwO9Z7hjIZ3F1ryWk8s43jtyIOPT0QlG9i420sOyI4eq/QSMLd/Kl/cjG6I4/b1gZ3l0+KnuXvUOPgpAa64pRk6NaJ9WistEjnPVKfp8VjuNKA10ChPsakX7v9bowp78/8UCAkyT5ejdct6rlutFtItU33PXcrk/tfCxBhOv/nGkgcv7i3MFG9g9+bmg0Q6KzHzDEFo/O5AfDmh5PPXTrOkIfo4yNUWEVR/NQ/otqJRACV/7paLtB9TnNB9ylyiTAQJa0lqB6QRtB/QAzbGKB+2wXD87WD+wSAR3u9Iy479DuK26yrHSSxL4qSM/FntVKBW0la0M/yloAHw==
Message-Id: <D5DE2953-490C-4900-8194-B39F5D2E1B41.1@mail.metamarketsearch.online>
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [147.182.166.141 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dynamics.com]
X-Headers-End: 1lzJ5b-0000w4-5m
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
Content-Type: multipart/mixed; boundary="===============7826161256098877080=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7826161256098877080==
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<BODY><BR>
<P></P>
<TABLE cellSpacing=3D0 width=3D"100%">
<TBODY>
<TR>
<TD bgColor=3D#ffbf00 height=3D"15%">
<TABLE width=3D"90%" align=3Dcenter>
<TBODY>
<TR>
<TD><SPAN style=3D"FONT-SIZE: large; FONT-FAMILY: impact, serif, EmojiFont;=
 COLOR: rgb(223,1,1)"><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN style=
=3D"VERTICAL-ALIGN: inherit">DHL Express </SPAN></SPAN></SPAN></TD></TR></T=
BODY></TABLE></TD></TR>
<TR>
<TD height=3D"75%">
<TABLE width=3D"90%" align=3Dcenter>
<TBODY>
<TR>
<TD><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: verdana, serif, EmojiFont=
; COLOR: rgb(180,4,4)"><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN style=
=3D"VERTICAL-ALIGN: inherit">Incoming Package Notification! </SPAN></SPAN><=
/SPAN><BR><BR><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: verdana, serif,=
 EmojiFont; COLOR: rgb(0,0,0)"><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPA=
N style=3D"VERTICAL-ALIGN: inherit">Attention&nbsp;</SPAN></SPAN></SPAN><SP=
AN style=3D"VERTICAL-ALIGN: inherit">
<SPAN style=3D"VERTICAL-ALIGN: inherit"> linux1394-devel@lists.sourceforge.=
net,&nbsp;&nbsp; </SPAN></SPAN><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY=
: verdana, serif, EmojiFont; COLOR: rgb(0,0,0)"><BR><BR><SPAN style=3D"VERT=
ICAL-ALIGN: inherit"><SPAN style=3D"VERTICAL-ALIGN: inherit">This is to not=
ify you that you have an incoming shipment registered in your email (</SPAN=
></SPAN></SPAN><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN style=3D"VERTI=
CAL-ALIGN: inherit"> linux1394-devel@lists.sourceforge.net). </SPAN></SPAN>=

<SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: verdana, serif, EmojiFont; CO=
LOR: rgb(0,0,0)"><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: verdana, ser=
if, EmojiFont; COLOR: rgb(0,0,0)"><BR><SPAN style=3D"VERTICAL-ALIGN: inheri=
t"><SPAN style=3D"VERTICAL-ALIGN: inherit">Please follow the URL below to t=
rack your shipment.</SPAN></SPAN><BR><BR></SPAN></SPAN>
<TABLE>
<TBODY>
<TR>
<TD style=3D"HEIGHT: 45px; WIDTH: 250px; BACKGROUND-COLOR: #b40404">
<DIV align=3Dcenter><A style=3D"text-decoration-line: none" href=3D"https:/=
/82bd1a68d1d446e185a90c172eafdf01.svc.dynamics.com/t/r/mZOIA6nMh3TU_lsPZdh7=
O9Z_R6OAhWZ7OnWdDpdtGng#linux1394-devel@lists.sourceforge.net:00=3D75" rel=
=3D"noopener noreferrer" target=3D_blank data-linkindex=3D"0" data-auth=3D"=
NotApplicable"><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: verdana, serif=
, EmojiFont; COLOR: rgb(255,255,255)"><SPAN style=3D"VERTICAL-ALIGN: inheri=
t"><SPAN style=3D"VERTICAL-ALIGN: inherit">Track my shipment Now! </SPAN></=
SPAN></SPAN></A></DIV>
</TD></TR></TBODY></TABLE><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: ver=
dana, serif, EmojiFont; COLOR: rgb(0,0,0)"><BR><SPAN style=3D"VERTICAL-ALIG=
N: inherit"><SPAN style=3D"VERTICAL-ALIGN: inherit">Thank you for letting u=
s serve you better. </SPAN></SPAN><BR><BR><SPAN style=3D"VERTICAL-ALIGN: in=
herit"><SPAN style=3D"VERTICAL-ALIGN: inherit">Regards, </SPAN></SPAN><BR><=
STRONG><SPAN style=3D"COLOR: #b40404"><SPAN style=3D"VERTICAL-ALIGN: inheri=
t"><SPAN style=3D"VERTICAL-ALIGN: inherit">DHL CustomerCare</SPAN>
</SPAN></SPAN></STRONG> </SPAN><BR><BR>
<HR align=3Dleft width=3D"50%">
<BR><SPAN style=3D"FONT-SIZE: xx-small; FONT-FAMILY: verdana, serif, EmojiF=
ont"><STRONG><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN style=3D"VERTICA=
L-ALIGN: inherit">Excellency. </SPAN><SPAN style=3D"VERTICAL-ALIGN: inherit=
">Simply delivered. </SPAN></SPAN></STRONG><BR><SPAN style=3D"VERTICAL-ALIG=
N: inherit"><SPAN style=3D"VERTICAL-ALIGN: inherit">International express d=
eliveries; </SPAN><SPAN style=3D"VERTICAL-ALIGN: inherit">global freight fo=
rwarding by air, sea, road and rail; </SPAN></SPAN><BR>
<SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN style=3D"VERTICAL-ALIGN: inhe=
rit">warehousing solutions from packaging, to repairs, to storage; </SPAN><=
SPAN style=3D"VERTICAL-ALIGN: inherit">mail deliveries worldwide; </SPAN></=
SPAN><BR><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN style=3D"VERTICAL-AL=
IGN: inherit">and other customized logistic services? </SPAN><SPAN style=3D=
"VERTICAL-ALIGN: inherit">with everything DHL does, we help connect people =
and improve their lives. </SPAN></SPAN><BR><BR>
<SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN style=3D"VERTICAL-ALIGN: inhe=
rit">With a global network in over 220 countries and territories across the=
 globe, </SPAN></SPAN><BR><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN sty=
le=3D"VERTICAL-ALIGN: inherit">DHL is the most international company in the=
 world and can offer solutions for an almost infinite number of logistics n=
eeds.</SPAN></SPAN></SPAN></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD bgColor=3D#b40404 height=3D"10%">
<TABLE width=3D"90%" align=3Dcenter>
<TBODY>
<TR>
<TD><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: verdana, serif, EmojiFont=
; COLOR: rgb(255,255,255)"><SPAN style=3D"VERTICAL-ALIGN: inherit"><SPAN st=
yle=3D"VERTICAL-ALIGN: inherit">DHL Global &copy; 2021 | </SPAN><SPAN style=
=3D"VERTICAL-ALIGN: inherit">All rights reserved.&nbsp;</SPAN></SPAN></SPAN=
></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<DIV></DIV>
<DIV></DIV>
<DIV></DIV>
<DIV></DIV></BODY></HTML>


--===============7826161256098877080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7826161256098877080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7826161256098877080==--
