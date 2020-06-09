Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD361F3287
	for <lists+linux1394-devel@lfdr.de>; Tue,  9 Jun 2020 05:17:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jiUku-00022Y-W9; Tue, 09 Jun 2020 03:16:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <contact@shale-techs.com>) id 1jiUkt-00022H-58
 for linux1394-devel@lists.sourceforge.net; Tue, 09 Jun 2020 03:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3eofbK1V8NeTkkqK1lRafuTJQVB5e0oeYPTSmZBIJqo=; b=lkr3hAa0/XTIO+wk/YLIyByD90
 2uIHMAzXLsWlweROv/w1+C32A/KubmhfaqdiGcpmvOc2V147+rW6XMNm2b4kfvzRqcuJglSn3dpfx
 3qt+qsKqNmlqveNn7arnEQYTa9/eTOozXydhFcS0aGXQBOeyKa7QyP5W8luNeTUeXhBw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3eofbK1V8NeTkkqK1lRafuTJQVB5e0oeYPTSmZBIJqo=; b=g
 Z0j8CGdrLWSeLuuxh5UvbpV7K03ati422nJAlafByJlNtEqHM6v1LJJ6u/nlC2xSsQFuaXyzfC2rK
 1zneIhABiwfAweNBcXawHszi+BEU/2WSm/QUvBmxW0JT3810W44aIHWTNUnEAUcj9G1nNS9fOB3Xw
 sSlCLDUNf2k7D2p4=;
Received: from mail0.fazini.co ([192.236.162.62])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jiUkr-00H8y0-Qx
 for linux1394-devel@lists.sourceforge.net; Tue, 09 Jun 2020 03:16:51 +0000
From: contact<contact@shale-techs.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Quote
Date: 08 Jun 2020 20:01:33 -0700
Message-ID: <20200608194748.7F4061B9451AFE6B@shale-techs.com>
MIME-Version: 1.0
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1jiUkr-00H8y0-Qx
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
Reply-To: eihigginss@hotmail.com
Content-Type: multipart/mixed; boundary="===============2199733596347981136=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2199733596347981136==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.19003"></HEAD>
<body style=3D"MARGIN: 0.5em">
<DIV>
<DIV>
<DIV>
<DIV dir=3Dltr>
<DIV style=3D"COLOR: black">
<DIV>
<DIV>
<DIV>
<DIV>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><B><SPAN style=3D"BORDER-TOP: windowtext 1pt; FONT-F=
AMILY: Calibri,sans-serif; BORDER-RIGHT: windowtext 1pt; BORDER-BOTTOM: win=
dowtext 1pt; COLOR: #323130; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING=
-LEFT: 0px; BORDER-LEFT: windowtext 1pt; PADDING-RIGHT: 0px">Hello,<BR></SP=
AN></B></P>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><B><SPAN style=3D"BORDER-TOP: windowtext 1pt; FONT-F=
AMILY: Calibri,sans-serif; BORDER-RIGHT: windowtext 1pt; BORDER-BOTTOM: win=
dowtext 1pt; COLOR: #323130; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING=
-LEFT: 0px; BORDER-LEFT: windowtext 1pt; PADDING-RIGHT: 0px"><BR></SPAN></B=
><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif; COLOR: #323130"></SPAN></P=
></DIV>
<DIV>
<DIV>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif; COLO=
R: #323130"></SPAN>&nbsp;</P></DIV>
<DIV>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif; COLO=
R: #323130"></SPAN>&nbsp;</P></DIV>
<DIV>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><B><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif; C=
OLOR: #323130">I want a quote&nbsp; and i would like&nbsp; to know your ava=
ilability so that we can send you necessary documents as well as drawings a=
nd specification.</SPAN></B><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif;=
 COLOR: #323130"></SPAN></P></DIV>
<DIV>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif; COLO=
R: #323130"></SPAN>&nbsp;</P></DIV>
<DIV>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif; COLO=
R: #323130"></SPAN>&nbsp;</P></DIV>
<DIV>
<P style=3D"FONT-FAMILY: Times New Roman,serif; MARGIN: 0px 0px 0px 6pt; BA=
CKGROUND-COLOR: white"><B><SPAN style=3D"FONT-FAMILY: Calibri,sans-serif; C=
OLOR: #323130">Thank you,</SPAN></B></P></DIV></DIV></DIV></DIV></DIV></DIV=
></DIV></DIV></DIV></DIV>Eileen <BR>Purchasing Manager.</BODY></HTML>


--===============2199733596347981136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2199733596347981136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2199733596347981136==--
