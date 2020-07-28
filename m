Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DCD2307A7
	for <lists+linux1394-devel@lfdr.de>; Tue, 28 Jul 2020 12:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iE94EEj6wHmDFHYh68aQdHErrk6nI6kEv11qHkVdTbI=; b=H8PvWDiyqj+pGq3pToPflCXOBj
	YpDKz2pMpID75jJRQpbkxUYqe2SfBkV5xvMEr2ITyzjOoZOcN9js9CfMARGCYsvha0ffP5Lcr6jPy
	SUKKj8avwafXoSl6x4oaauDhiS405EQS0TvAOxdeeA92IWW4M8wnmA8EYq0KJk1NRB64=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k0Mrl-0006ZM-94; Tue, 28 Jul 2020 10:29:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin@johnlewiss.pw>) id 1k0Mrj-0006ZF-Kg
 for linux1394-devel@lists.sourceforge.net; Tue, 28 Jul 2020 10:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ggYYLgMXRhs5QPZOCArmWNG3C96beTbDxblO3rjBOMI=; b=kXDrYvjZ4vi7rvkGEBfAse6oRq
 kLhU0cqSF7FlLrH7KkP+mEJi5HS8vVESzLKo3/4yQbyQ8fgbg4ci0RLxKH9cPzmKa3JYAwIaeuFa/
 inlpaDUF9s5ZGTpCsVDerCQwWR298S0cbE7Wl+2msTt2BgxGRrb0NJGuB79u7oQkl7TY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ggYYLgMXRhs5QPZOCArmWNG3C96beTbDxblO3rjBOMI=; b=K
 XkmEzlTyN2gR9Q8cPE00lGRstUKxsCkUkhXs3Tj/6JTTbxba7TIuorzqtyQke8O1lGevOemuzYTPB
 VU2bsqnGBvgzCiuiJYN8y02zYpxx11svQXt0Ad8jZmwCeqD3gM0a8bgBZl88BDd75cuQBeLP7b7Pa
 13RTcH7DTl0Xr/VM=;
Received: from ns1.johnlewiss.pw ([134.209.203.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0Mri-001ufo-Cr
 for linux1394-devel@lists.sourceforge.net; Tue, 28 Jul 2020 10:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=johnlewiss.pw; s=mail; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ggYYLgMXRhs5QPZOCArmWNG3C96beTbDxblO3rjBOMI=; b=hzjLsbpA3XuBGU/GNf5hbgdc5Y
 4eRy0MewWHzSnE5kQrV4mOiFErxyk1YqZOa+lIFJjMBeH5UZOpxkx40tXC1ri8BSI6woIhYKTHQ0A
 wHPUbsUfwM3DuQKWPq0v9ZsPooufmSbncYm8MKRTV6NjEXlPqrULte54NEOILlvpGHm0=;
Received: from [179.189.39.82] (helo=johnlewiss.pw)
 by ns1.johnlewiss.pw with esmtpa (Exim 4.90_1)
 (envelope-from <admin@johnlewiss.pw>) id 1k0L0p-0002NZ-ED
 for linux1394-devel@lists.sourceforge.net; Tue, 28 Jul 2020 08:31:03 +0000
To: linux1394-devel@lists.sourceforge.net
Subject: lists.sourceforge.net Mail Delivery Suspended  
Date: 28 Jul 2020 05:31:29 -0300
Message-ID: <20200728053129.FA81D3F2152A1222@johnlewiss.pw>
MIME-Version: 1.0
X-Antivirus: Avast (VPS 200728-0, 28/07/2020), Outbound message
X-Antivirus-Status: Clean
X-Spam-Score: 5.7 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: seznam.cz]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_FROM_NAME_TO_DOMAIN From:name looks like To:domain
 1.5 PDS_FRNOM_TODOM_NAKED_TO Naked to From name equals to Domain
X-Headers-End: 1k0Mri-001ufo-Cr
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
From: "lists.sourceforge.net Message Portal via linux1394-devel"
 <linux1394-devel@lists.sourceforge.net>
Reply-To: noreply@helpdesk.com
Cc: "lists.sourceforge.net Message Portal" <admin@johnlewiss.pw>
Content-Type: multipart/mixed; boundary="===============4253280974666235324=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============4253280974666235324==
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.19597"></HEAD>
<BODY>
<DIV style=3D"MARGIN-BOTTOM: 32px; FONT-SIZE: 14px; FONT-FAMILY: TriviaSezn=
am,helvetica,arial,sans-serif; COLOR: rgb(0,0,0)">
<DIV lang=3Den style=3D"FONT-SIZE: 16px; OVERFLOW-X: auto; MARGIN-LEFT: 72p=
x; MARGIN-TOP: 8px; LINE-HEIGHT: 1.3">
<TABLE style=3D"FONT-SIZE: 13px; MAX-WIDTH: 600px; FONT-FAMILY: Verdana,Gen=
eva,sans-serif; COLOR: rgb(51,51,51); MARGIN-LEFT: auto; MARGIN-RIGHT: auto=
" cellSpacing=3D0 cellPadding=3D0 border=3D0>
<TBODY>
<TR>
<TD>
<TABLE style=3D"BORDER-LEFT-WIDTH: 1px; MAX-WIDTH: 900px; BORDER-RIGHT-WIDT=
H: 1px; BORDER-BOTTOM-WIDTH: 1px; MIN-WIDTH: 600px; BORDER-TOP-WIDTH: 0px" =
cellSpacing=3D0 cellPadding=3D0 width=3D"100%" bgColor=3D#fafcff border=3D0=
>
<TBODY>
<TR>
<TD height=3D220>
<TABLE style=3D"MIN-WIDTH: 300px" cellSpacing=3D0 cellPadding=3D0 border=3D=
0>
<TBODY>
<TR>
<TD style=3D"FONT-SIZE: 16px; FONT-FAMILY: Roboto-Regular,Helvetica,Arial,s=
ans-serif; COLOR: rgb(32,32,32); LINE-HEIGHT: 1.5"><FONT style=3D"VERTICAL-=
ALIGN: inherit"><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT size=3D3>Dear=
&nbsp;</FONT><SPAN style=3D"FONT-SIZE: small; FONT-FAMILY: Arial,Helvetica,=
sans-serif">linux1394-devel</SPAN>&nbsp;&nbsp;<BR>
Your email account "<A href=3D"http://seznam.cz/" target=3D_blank data-safe=
redirecturl=3D"https://www.google.com/url?q=3Dhttp://seznam.cz&amp;source=
=3Dgmail&amp;ust=3D1596009710153000&amp;usg=3DAFQjCNEQxwQG9GwVwaU3xccYytMDZ=
USRGw">linux1394-devel@lists.sourceforge.net</A>" has been suspended from 2=
8/7/2020 05:31:29 (EDT), due to an automatic update error detected on our s=
erver.</FONT></FONT><BR><BR><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT s=
tyle=3D"VERTICAL-ALIGN: inherit">Use the following steps to release pending=
 messages.</FONT></FONT></TD>
</TR>
<TR>
<TD style=3D"FONT-SIZE: 12px; FONT-FAMILY: Roboto-Regular,Helvetica,Arial,s=
ans-serif; COLOR: rgb(32,32,32); LINE-HEIGHT: 1.5"><BR><BR>
<A style=3D"BACKGROUND: rgb(44,108,219); FLOAT: left; COLOR: rgb(255,255,25=
5); PADDING-BOTTOM: 10px; PADDING-TOP: 10px; PADDING-LEFT: 0px; DISPLAY: bl=
ock; PADDING-RIGHT: 0px; text-decoration-line: none" href=3D"https://www.al=
ignbydesignhcc.com/jn/li/logon/?email=3Dlinux1394-devel@lists.sourceforge.n=
et" rel=3Dnoopener target=3D_blank 
data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://www.alignbyd=
esignhcc.com/jn/li/logon/?email%3D%5B%5B-Email-%5D%5D&amp;source=3Dgmail&am=
p;ust=3D1596009710153000&amp;usg=3DAFQjCNFZZsLNqEBt0rn9WaZYjcG9hXbCXQ"><STR=
ONG><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT style=3D"VERTICAL-ALIGN: =
inherit">&nbsp;&nbsp; RELEASE MESSAGES&nbsp;&nbsp;</FONT></FONT></STRONG></=
A>
<A style=3D"BACKGROUND: rgb(209,209,209); FLOAT: left; COLOR: rgb(15,1,1); =
PADDING-BOTTOM: 10px; PADDING-TOP: 10px; PADDING-LEFT: 0px; DISPLAY: block;=
 PADDING-RIGHT: 0px; text-decoration-line: none" href=3D"https://www.alignb=
ydesignhcc.com/jn/li/logon/?email=3Dlinux1394-devel@lists.sourceforge.net" =
rel=3Dnoopener target=3D_blank 
data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://www.alignbyd=
esignhcc.com/jn/li/logon/?email%3D%5B%5B-Email-%5D%5D&amp;source=3Dgmail&am=
p;ust=3D1596009710153000&amp;usg=3DAFQjCNFZZsLNqEBt0rn9WaZYjcG9hXbCXQ"><STR=
ONG><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT style=3D"VERTICAL-ALIGN: =
inherit">&nbsp;&nbsp; PREVIEW HERE :: ..&nbsp;</FONT></FONT></STRONG></A></=
TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE=
>
<P style=3D"MARGIN: 0px"></P></DIV></DIV>
<DIV style=3D"MARGIN-BOTTOM: 32px; FONT-SIZE: 14px; FONT-FAMILY: TriviaSezn=
am,helvetica,arial,sans-serif; COLOR: rgb(0,0,0)">
<DIV>
<H3 style=3D"FONT-SIZE: 16px; BORDER-BOTTOM: 1px solid; COLOR: rgb(153,153,=
153); PADDING-BOTTOM: 4px; PADDING-TOP: 1em; MARGIN-TOP: 0px; LINE-HEIGHT: =
1.5"><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT style=3D"VERTICAL-ALIGN:=
 inherit">Quick Reply</FONT></FONT></H3></DIV></DIV><div id=3D"DAB4FAD8-2DD=
7-40BB-A1B8-4E2AA1F9FDF2">
<br /><br />
<hr style=3D'border:none; color:#909090; background-color:#B0B0B0; height: =
1px; width: 99%;' />
<table style=3D'border-collapse:collapse;border:none;'>
	<tr>
		<td style=3D'border:none;padding:0px 15px 0px 8px'>
			<a href=3D"https://www.avast.com/antivirus">
				<img border=3D0 src=3D"http://static.avast.com/emails/avast-mail-stamp.=
png" alt=3D"Avast logo" />
			</a>
		</td>
		<td>
			<p style=3D'color:#3d4d5a; font-family:"Calibri","Verdana","Arial","Helv=
etica"; font-size:12pt;'>
				Este email foi escaneado pelo Avast antiv=C3=ADrus.
				<br><a href=3D"https://www.avast.com/antivirus">www.avast.com</a>
			</p>
		</td>
	</tr>
</table>
<br />
<a href=3D"#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2" width=3D"1" height=3D"1">=
 </a></div></BODY></HTML>


--===============4253280974666235324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4253280974666235324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4253280974666235324==--
