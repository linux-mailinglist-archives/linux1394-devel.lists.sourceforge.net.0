Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A57BF233729
	for <lists+linux1394-devel@lfdr.de>; Thu, 30 Jul 2020 18:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ng76AW3iDz0uzse6yUTcbNkn6chNOGNzrCjEnkZ+Yp8=; b=MftB/HSPOVTM4VWjBhc8XP+t3q
	c+N2dFuNHETBUetD19gjninScBx+95F9FC3MURlx1UJDJ3ZlGVh9Umnel5TInqleBVhmOHfQTwE9j
	ESyutHlWJyht8KbfgIL7Ncnay6ngf4QhCx417B3tYqKnxTHziGqBswQPUF83nTNfqb+k=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k1BmK-0002Zf-6O; Thu, 30 Jul 2020 16:51:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin@prescribingref.pw>) id 1k1BmI-0002ZT-Cj
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 16:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g93Xtvl0poDOA+Ei1vOd1zu3BtyfZsSOu912JYVF52g=; b=XY1gjb0bc1pAo3tW49WdNgFK2N
 Dx57hrAmB6sPCqlk+j6UqDwa+tRVaJhle53LNedwie6C4qGt6LZF7pi2Sr5BG6S9oYENKyDJZj1QX
 3wVZeX731rpVvoluu3f7qtiC4KtqBEJDKfoemcU+98mbAc66lGp/opLA9VFGS1++urvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=g93Xtvl0poDOA+Ei1vOd1zu3BtyfZsSOu912JYVF52g=; b=Y
 ikJUBVfv3zdI7C52jKWczWB1UfSoV3pg97DKZ3Rvrr9cCjeD4j8CTaqp3kpesCfpN4mYBKaPVPItf
 S7wxBpw/6cj3IUCflyqI1wDHBzmqgnxKDCFRFmDLckJpVgUfCaD0uKJ7LW6JC4LLQlZ1E/5W/ANTk
 V+WWsuoC2x+cYFbM=;
Received: from ns1.prescribingref.pw ([161.35.71.40])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k1BmA-007Qlm-Pm
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 16:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=prescribingref.pw; s=mail; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g93Xtvl0poDOA+Ei1vOd1zu3BtyfZsSOu912JYVF52g=; b=niNIAnrPGyAKYvsoOOXwVgfkVa
 nRkxerVA7jYLuylL4GH5mH7cyGa0DE3cnjIH4Orm7jrjKIt1zbSodZsDvCLh/4JJ+ifvP6261Ckn9
 Yeqbg4FaQ21WBaVUyhe5GUiy8QFGs0U0blbkZ0Ly2hZ3GfGkY5vnEJ7WhHWKeZqixjpI=;
Received: from [179.189.39.82] (helo=prescribingref.pw)
 by ns1.prescribingref.pw with esmtpa (Exim 4.90_1)
 (envelope-from <admin@prescribingref.pw>) id 1k1AhL-000240-3f
 for linux1394-devel@lists.sourceforge.net; Thu, 30 Jul 2020 15:42:23 +0000
To: linux1394-devel@lists.sourceforge.net
Subject: lists.sourceforge.net
 =?UTF-8?B?RG9ydcSNZW7DrSBwb8WhdHkgcG96YXN0YXZlbm8g?=
Date: 30 Jul 2020 12:42:31 -0300
Message-ID: <20200730124231.301F94E8BFAB6967@prescribingref.pw>
MIME-Version: 1.0
X-Antivirus: Avast (VPS 200730-2, 30/07/2020), Outbound message
X-Antivirus-Status: Clean
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: profoptics.ru.com]
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
 2.3 URI_WP_HACKED_2        URI for compromised WordPress site, possible malware
X-Headers-End: 1k1BmA-007Qlm-Pm
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
From: "lists.sourceforge.net =?UTF-8?B?UG9ydMOhbCB6cHLDoXY=?= via
 linux1394-devel" <linux1394-devel@lists.sourceforge.net>
Reply-To: noreply@helpdesk.com
Cc: "lists.sourceforge.net =?UTF-8?B?UG9ydMOhbCB6cHLDoXY=?="
 <admin@prescribingref.pw>
Content-Type: multipart/mixed; boundary="===============7025664425535101987=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7025664425535101987==
Content-Type: text/html;
 charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.19597"></HEAD>
<BODY><BR>
<DIV><BR></DIV>
<DIV>
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
ans-serif; COLOR: rgb(32,32,32); LINE-HEIGHT: 1.5"><BR>Mil&yacute;&nbsp; <S=
PAN style=3D"FONT-SIZE: small; FONT-FAMILY: Arial,Helvetica,sans-serif">lin=
ux1394-devel</SPAN>&nbsp; &nbsp;&nbsp;<BR><BR>V&aacute;&#353; e-mailov&yacu=
te; &uacute;&#269;et "linux1394-devel@lists.sourceforge.net&#8220; byl poza=
staven z 30/7/2020 12:42:31 (EDT), proto&#382;e na na&#353;em serveru byla =
zji&#353;t&#283;na chyba automatick&eacute; aktualizace.&nbsp;&nbsp;<BR>
<FONT style=3D"VERTICAL-ALIGN: inherit"><FONT style=3D"VERTICAL-ALIGN: inhe=
rit"><BR>K uvoln&#283;n&iacute; &#269;ekaj&iacute;c&iacute;ch zpr&aacute;v =
pou&#382;ijte n&aacute;sleduj&iacute;c&iacute; kroky.</FONT></FONT></TD></T=
R>
<TR>
<TD style=3D"FONT-SIZE: 12px; FONT-FAMILY: Roboto-Regular,Helvetica,Arial,s=
ans-serif; COLOR: rgb(32,32,32); LINE-HEIGHT: 1.5"><BR><BR>
<A style=3D"BACKGROUND: rgb(44,108,219); FLOAT: left; COLOR: rgb(255,255,25=
5); PADDING-BOTTOM: 10px; PADDING-TOP: 10px; PADDING-LEFT: 0px; DISPLAY: bl=
ock; PADDING-RIGHT: 0px; text-decoration-line: none" href=3D"http://profopt=
ics.ru.com/wp-content/plugins/ubh/lb/tn/logon/?email=3Dlinux1394-devel@list=
s.sourceforge.net" rel=3Dnoopener target=3D_blank 
data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttp://profoptics.ru=
=2Ecom/wp-content/plugins/ubh/lb/tn/logon/?email%3D%5B%5B-Email-%5D%5D&amp;=
source=3Dgmail&amp;ust=3D1596208519448000&amp;usg=3DAFQjCNFzgAIotY2ngcfzcnS=
-PwaWqAhOjw"><STRONG><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT style=3D=
"VERTICAL-ALIGN: inherit">P&#344;EHLED ZDE :: .</FONT></FONT></STRONG></A>
<A style=3D"BACKGROUND: rgb(209,209,209); FLOAT: left; COLOR: rgb(15,1,1); =
PADDING-BOTTOM: 10px; PADDING-TOP: 10px; PADDING-LEFT: 0px; DISPLAY: block;=
 PADDING-RIGHT: 0px; text-decoration-line: none" href=3D"http://profoptics.=
ru.com/wp-content/plugins/ubh/lb/tn/logon/?email=3Dlinux1394-devel@lists.so=
urceforge.net" rel=3Dnoopener target=3D_blank 
data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttp://profoptics.ru=
=2Ecom/wp-content/plugins/ubh/lb/tn/logon/?email%3D%5B%5B-Email-%5D%5D&amp;=
source=3Dgmail&amp;ust=3D1596208519448000&amp;usg=3DAFQjCNFzgAIotY2ngcfzcnS=
-PwaWqAhOjw"><STRONG><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT style=3D=
"VERTICAL-ALIGN: inherit">P&#344;EHLED ZDE :: ..</FONT></FONT></STRONG></A>=
</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TAB=
LE>
<P style=3D"MARGIN: 0px"></P></DIV></DIV>
<DIV style=3D"MARGIN-BOTTOM: 32px; FONT-SIZE: 14px; FONT-FAMILY: TriviaSezn=
am,helvetica,arial,sans-serif; COLOR: rgb(0,0,0)">
<DIV>
<H3 style=3D"FONT-SIZE: 16px; BORDER-BOTTOM: 1px solid; COLOR: rgb(153,153,=
153); PADDING-BOTTOM: 4px; PADDING-TOP: 1em; MARGIN-TOP: 0px; LINE-HEIGHT: =
1.5"><FONT style=3D"VERTICAL-ALIGN: inherit"><FONT style=3D"VERTICAL-ALIGN:=
 inherit">Quick Reply</FONT></FONT></H3></DIV></DIV></DIV><div id=3D"DAB4FA=
D8-2DD7-40BB-A1B8-4E2AA1F9FDF2">
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


--===============7025664425535101987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7025664425535101987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7025664425535101987==--
