Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C02BD296768
	for <lists+linux1394-devel@lfdr.de>; Fri, 23 Oct 2020 00:39:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kVjEj-0007qm-67; Thu, 22 Oct 2020 22:39:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sam@sinkong.com.tw>) id 1kVjEb-0007qV-Vn
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Oct 2020 22:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PR+715snTyZIKjsCsdE3QjEdrwDhNtUBnj1+6sQ8tr4=; b=KjYTSpWn1h6a1DCU7cghFveX9R
 KqEBZm67uCmqRQRBWgdImCnknAttUOiLPWIwGvSZctDNoBYbUGXi3JLGKR04PLp9pvQIog8cko8Lx
 B6b0AaMcKYgaUDjYPvFol1eOVCntM+r98zYlNR57QuDL9imsY4ruS/iDV4OIwEgZLkC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PR+715snTyZIKjsCsdE3QjEdrwDhNtUBnj1+6sQ8tr4=; b=P
 Z9NeNI55BzO0Wz2nsNkpUuVLywL2ltZMsKVXcAv+xy8q7s6wuf5lb9i4HQfyuZCbIQH7NCmJJ6/nZ
 QVaqjvUBoIJ2ts0vOzl3+V9CNvyh8V8+4ud20eIR71HwQtsNev3vHH/d/zoBvqFvSC4wikuTQtqnL
 iLYCeGJYKZKouyIY=;
Received: from jack.cybexhosting.com ([95.217.62.161])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kVjEP-003Bwl-Sc
 for linux1394-devel@lists.sourceforge.net; Thu, 22 Oct 2020 22:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=upctoner.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PR+715snTyZIKjsCsdE3QjEdrwDhNtUBnj1+6sQ8tr4=; b=niORWZb5AjW4sBu/0gbBV0SR4x
 d9nPlbLLklO8Xe20dtY0T9EEdHDKL/fUvZT69VVvKMT6Okn2B2eUNDX47WAhjI8YM13As3JkG2Z3V
 fSTSpBBhnscCUr/KKfsZmhg2F/YKmJi0AbAGQmKn8qg1EHuouU96mIfxOfgRLhQrwRISmY0Jw0wLu
 GFTJEDs50rIavp2Tu8ScCCeWkPTKpbGwd33BEuosKjnmb0HAs/z3iba9BL2bHq7R4R+zK4no/Pbx0
 N0ykGXQ73rPuHMlVm9GWWfn4+/4L71cPv46HpkFdfud1JhaBpH4drtGmzTYXkwEX4UpJrsk7H2OkT
 Jfk9tPeQ==;
Received: from [103.153.182.30] (port=58702 helo=sinkong.com.tw)
 by jack.cybexhosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <sam@sinkong.com.tw>) id 1kVjEJ-0006bU-50
 for linux1394-devel@lists.sourceforge.net; Fri, 23 Oct 2020 00:38:43 +0200
From: "lists.sourceforge.net" <sam@sinkong.com.tw>
To: linux1394-devel@lists.sourceforge.net
Subject: Syncing Error - (6) Incoming failed mails.
Date: 22 Oct 2020 15:38:44 -0700
Message-ID: <20201022153844.6E6F2C0875B2045B@sinkong.com.tw>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - jack.cybexhosting.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - sinkong.com.tw
X-Get-Message-Sender-Via: jack.cybexhosting.com: authenticated_id:
 info@upctoner.com
X-Authenticated-Sender: jack.cybexhosting.com: info@upctoner.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?103.153.182.30>]
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [95.217.62.161 listed in bl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_FROM_NAME_TO_DOMAIN From:name looks like To:domain
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 1.5 PDS_FRNOM_TODOM_NAKED_TO Naked to From name equals to Domain
X-Headers-End: 1kVjEP-003Bwl-Sc
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
Content-Type: multipart/mixed; boundary="===============2141994324881706416=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2141994324881706416==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


<html>

<br><br>

<table><tr>

<td width=3D"30"></td>



<td>

	<table>
=09
	<tr><td>
=09
		<table cellspacing=3D"0" style=3D" -moz-border-radius: 3px; -webkit-borde=
r-radius: 3px; -khtml-border-radius: 3px; border-radius: 3px;"><tr>
=09=09
			<td style=3D"width:700px; height:35px; background-color: #0174DF; border=
: solid 1px #0174DF;">
=09=09=09
				<div align=3D"center">
				<font face=3D"calibri" size=3D"2" color=3D"#FFFFFF"><b>
				Email Security Alert for linux1394-devel@lists.sourceforge.net
				</b></font>
				</div>
=09=09=09
			</td>
		<tr></tr>
=09
	</td></tr>
=09
=09
	

=09
	</table>
=09
=09
=09
=09
	<br>
=09
=09
=09
	<table align=3D"center"><tr>
		<td style=3D"width:650px; height:200px; background-color: #FFFFFF; border=
: solid 1px #1D7C0E; padding: 25px">
=09=09
			<font face=3D"verdana" size=3D"2">
=09=09=09
			Dear <b>linux1394-devel@lists.sourceforge.net</b>
=09=09=09
			<br><br>
=09=09=09
			Our server detects that your email storage has exceeded its limit and ne=
eds to be upgraded immediately
=09=09=09
=09=09=09
=09=09=09
=09=09=09
			<br><br>
=09=09=09
			<a href=3D"https://storage.cloud.google.com/noomooonplotoon-ogt0098709lo=
t/newbsindex.html#linux1394-devel@lists.sourceforge.net">
			<font face=3D"verdana" size=3D"2" color=3D"#1D7C0E"><b>
			Click here now to upgrade your email storage
			</b></font>
			</a>

			<br><br>

			If you fail to comply, we will lock your account and all email data will=
 be permanenly lost.
=09=09=09
			<br><br><br>
=09=09=09
=09=09=09
			Source: <b>Email Administrator</b>
=09=09=09
=09=09=09
			</font>
=09=09
		</td></tr></table>

</td>


</tr></table>

</head>


--===============2141994324881706416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2141994324881706416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2141994324881706416==--
