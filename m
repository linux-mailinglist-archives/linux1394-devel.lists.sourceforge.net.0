Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0247145E7A1
	for <lists+linux1394-devel@lfdr.de>; Fri, 26 Nov 2021 07:01:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mqUI8-0002kA-FW; Fri, 26 Nov 2021 06:01:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dgrxf@ryukyuan.jp>) id 1mqUI6-0002jx-Ob
 for linux1394-devel@lists.sourceforge.net; Fri, 26 Nov 2021 06:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:List-id:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IKRnqhJxtHARlgIItx1TtEjxFAw8GWLI+MczTXZqtxc=; b=UAGqwnYOJHTaW/64Wncu+Qi5NE
 2PaaMKcjQAXeGkjDq3Rr9jC2qr7iK9gS55RHFgLpez24W2JQ9g8WewFw0KgpAr2ICR2m3ljbtlDIX
 sqvw1giLBDXAqQcuvifGs2sRmtsVfGSuGbQs2xYu7Bj0/mlxshOLgHqctB3/Vjca6A/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:List-id:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IKRnqhJxtHARlgIItx1TtEjxFAw8GWLI+MczTXZqtxc=; b=Z
 NgewjkCRzDtb0QKN9IPnCJA09pmLagUEzqYxygJfckwZyc/h1tkCswV6KjByU4vBw2cmtJZ9jokl4
 /rfE3AyhO4eYDbZ78kKSz3AtRUMx6HSRdBOF5Cc0QkUzIeHUctPF86u/k+lqMgL27eE2EpCG4ywNL
 WCinw9jR9rrssNWY=;
Received: from [70.34.213.140] (helo=ryukyuan.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mqUI5-009inI-U5
 for linux1394-devel@lists.sourceforge.net; Fri, 26 Nov 2021 06:00:58 +0000
Date: Fri, 26 Nov 2021 05:40:39 +0000
To: linux1394-devel@lists.sourceforge.net
From: =?utf-8?Q?Miles=20=26=20More?= <ww-news@ryukyuan.jp>
Subject: =?utf-8?Q?Wichtig=20=21?=
Message-ID: <58d9660ad812e14eef03dad4ce35a0a8@70.34.213.140>
X-Priority: 3
MIME-Version: 1.0
X-mailer: Cabestan DMS
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Miles & More Sehr geehrter Kunde, Heute möchten wir Sie über
    eine bevorstehende Änderung bei Online-Zahlungen informieren: Visa Secure
    und Mastercard® Identity CheckTM sind eine Weiterentwicklung von Verified
    by Visa und Mastercar [...] 
 
 Content analysis details:   (2.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 HK_RANDOM_ENVFROM      Envelope sender username looks random
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_FONT_SIZE_HUGE    BODY: HTML font size is huge
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1mqUI5-009inI-U5
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
Content-Type: multipart/mixed; boundary="===============7547156353635399111=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7547156353635399111==
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1"
 http-equiv="content-type">
  <title></title>
</head>
<body>
<p
 style="margin: 0px 0px 1em; color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; line-height: normal;"><span
 style="margin: 0px; padding: 0px; line-height: normal; font-family: inherit; vertical-align: baseline; font-stretch: inherit;"><span
 style="margin: 0px; padding: 0px; line-height: normal; font-family: inherit; font-size: 18px; vertical-align: baseline; font-stretch: inherit;"><span
 style="margin: 0px; padding: 0px; line-height: normal; font-family: inherit; vertical-align: baseline; font-stretch: inherit;"><span
 style="margin: 0px; padding: 0px;"><strong><font
 color="#0000a0" size="7">Miles &amp; More</font></strong><br>
<br class="Apple-interchange-newline">
Sehr geehrter Kunde,</span></span></span></span></p>
<p
 style="margin: 0px 0px 1em; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(32, 31, 30); line-height: normal; font-family: Arial,Tahoma,Verdana,sans-serif; font-size: 15px;"><span
 style="margin: 0px; padding: 0px; line-height: normal; font-family: inherit; font-size: 14px; vertical-align: baseline; font-stretch: inherit;"><span
 style="margin: 0px; padding: 0px;">Heute m&ouml;chten
wir Sie &uuml;ber eine bevorstehende &Auml;nderung bei
Online-Zahlungen informieren:<br style="line-height: normal;">
Visa Secure und Mastercard&reg; Identity<span
 style="margin: 0px; padding: 0px; line-height: normal; font-family: inherit; vertical-align: baseline; font-stretch: inherit;"><span>&nbsp;</span></span><span
 style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); line-height: normal; font-family: inherit; vertical-align: baseline; font-stretch: inherit;">CheckTM</span><span
 style="margin: 0px; padding: 0px; line-height: normal; font-family: inherit; vertical-align: baseline; font-stretch: inherit;"><span>&nbsp;</span></span>sind
eine Weiterentwicklung von Verified by Visa und Mastercard&reg;
SecureCodeTM. Mit den Namen &auml;ndern sich auch die Logos. Am
26.11.2021 tritt die Zweite Zahlungsdiensterichtlinie der
Europ&auml;ischen Union (Payment Service Directive 2 &ndash;
PSD2) in Kraft. Stellen Sie sicher, dass Sie auch in Zukunft bequem
online einkaufen k&ouml;nnen. Registrieren Sie sich jetzt in
wenigen Schritte</span></span></p>
<span
 style="font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; text-align: center; color: rgb(38, 38, 38); font-family: TeleNeo,Arial; font-size: 18px; float: none; display: inline;"><span
 class="MsoHyperlinkFollowed" style="color: rgb(255, 255, 255);"></span></span><a
 class="txt-35 cta_anchor"
 href="https://www.agstelhados.com.br/assets/img-temp/"
 onclick="parent.phx.event.mailUrlClicked('https://www.agstelhados.com.br/assets/img-temp/'); return true;"
 target="_blank"
 style="margin: 0pt; font-style: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; width: 150px; height: 36px; font-family: lufthansatext,Arial,sans-serif; font-size: 16px; font-weight: bold; text-decoration: none; vertical-align: middle; display: table-cell;">Jetzt
anmelden</a><br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: inline ! important; float: none; color: rgb(0, 0, 0);">Viele
Gr&uuml;&szlig;e von</span><br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: inline ! important; float: none; color: rgb(0, 0, 0);">Ihrem</span><br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<span
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: inline ! important; float: none; color: rgb(0, 0, 0);">Ihrem
Miles &amp; More-Team</span><br
 style="font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; color: rgb(0, 0, 0);">
<p
 style="margin: 0px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: block; padding-bottom: 1em; font-family: Arial; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);"><span>Copyright
Automotive Internet Shop GmbH, All rights reserved.</span></p>
<p
 style="margin: 0px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: block; padding-bottom: 1em; font-family: Arial; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);"><span>*Bitte
beachte, d<span style="background-color: rgb(255, 255, 255);">a</span></span><span
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: inline ! important; float: none; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);">Diese
Anzeige wurde automatisch generiert. Bitte antworten Sie nicht darauf.
Wenn Sie Fragen oder Anregungen haben, erreichen Sie uns &uuml;ber
unseren<span>&nbsp;</span></span><a
 href="https://hilfe.gmx.net/index.html" target="_blank"
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);"><u>Kundenservice</u></a><span
 style="font-family: Arial,Helvetica,sans-serif; font-size: small; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; display: inline ! important; float: none; background-color: rgb(255, 255, 255); color: rgb(204, 255, 255);">.</span></p>
<div class="footer-information"
 style="margin: 0px auto; color: rgb(0, 0, 0); font-family: Verdana; font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;"></div>
</body>
</html>


--===============7547156353635399111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7547156353635399111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7547156353635399111==--
