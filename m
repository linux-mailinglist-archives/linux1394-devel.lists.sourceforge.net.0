Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6994662EF
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 Dec 2021 12:58:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mskjf-0003WK-VW; Thu, 02 Dec 2021 11:58:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dul.pip@pspwan.com>) id 1mskjZ-0003W2-5a
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xLKFrTc++5vykmgRwQkkj5R4nIilPIYotItp/4LfjTI=; b=PI83Bo4+EXMM73K+TuAsOrxgjb
 bFuukfBxYLIZT1aOb30WPwumlIKr4YjLYmqw5US76nGA4+fNaG8nvugMQAkAQVkPwaRkgYA2D13gJ
 DUDAQBZ8wt3nO2jBLt3ypFKwDwtQzQskSzn8eN842bIjMpzwamWuOKyrXWAsdftItXeM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xLKFrTc++5vykmgRwQkkj5R4nIilPIYotItp/4LfjTI=; b=l
 5U4n4lGDyOF0oiRc/i6qWdnFCn1niXIXRuVEtk+s3Tg3LXtOLPTu41uh0a8am7YFTX1zMIkVO7n1p
 c5VkwUx/s2EjCQ8BaJllcM3ITr6d4cP5XW+gnrHc90FWkmwcgkLSpiyrABdP3wfP9KbfCFao8E2zw
 oC+o1cIegw+2pjRo=;
Received: from slot0.pspwan.com ([194.99.46.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mskjW-0002gN-8z
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=pspwan.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=dul.pip@pspwan.com; bh=TF7QHvk7J1pDli2phDqLmxxvEzY=;
 b=XTeOcUCu3DRKNBkmEezSAb662SM1R6PMj4lEQKLJosxwpRcEue5iONZolioNlChgFhgYd5i1O8Z6
 +Jq1bNGlDREslgDeNIeE9PU21WucMh4MwHJijFGNfsw/Xg0i6gBzvLVjL+b/+btFKsuyFXpzso/O
 6Hzda/kUmwxONuQsdPMBBSjYbHK+ngdL7Fy+9qGSPZ4U2fC6lSRfX5VO0WWc4dCtwScVUlbhZ08s
 6f6u7xKOSaF97SH/ccrM3zU9UsrJ33/93Qu277ui8DccyGUq2BHM1RlwBh+8NStvLn2pt97yT1Os
 vTKXt434ivUlppUZSLXDumwLDiGMJiBM9iBP4Q==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=pspwan.com;
 b=CGMhgrOa1r3UyZ5m1MqVntfl+ic/km/4N+GgElc4eT9t9NHtIJLOCel/l2ka7UoJFE5NgQOSRKyQ
 /b2uLUALmz7Li7CHaACZzxVw8T1j5HG2oP+L9rrhk9vACZ0k5OjdLxVMlRXD+tUvCIMhcM7o0brP
 D8TyrsxVvCwt2N3H0+p74JT++NdkFTfgT8pjZ9yfDhyqX705EqffpaLCz2/3TxtLMRo7VgpnvrrE
 fjFXmcyH1oxbqi4srEJKZyOlIwCyv063fNA1m+x6jEFRr+JVE7eWpw5xpYI3UI3CogCxdFNPyyfC
 YkGJLxj4J08aAWsi8LQPpdxgjgbPYxCGZ8kizA==;
From: Bio pharm <dul.pip@pspwan.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: Partnership Proposal
Date: 02 Dec 2021 12:58:17 +0100
Message-ID: <20211202125817.381D2E8195AEE439@pspwan.com>
MIME-Version: 1.0
X-Spam-Score: 6.7 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good Day linux1394-devel@lists.sourceforge.net, Thank you
 for taking your time to read this offer. My name is Leonidas Akylas. I'm
 Assistant
 Scientist with one of the leading Bio pharmaceutical company,
 I have a profitable
 and genuine business proposal I wish to share with you. This may not be your
 [...] Content analysis details:   (6.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pspwan.com]
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: pspwan.com]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [194.99.46.154 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [194.99.46.154 listed in bl.score.senderscore.com]
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1mskjW-0002gN-8z
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
Reply-To: Leonidas Akylas <leonidas.akyla@gmail.com>
Content-Type: multipart/mixed; boundary="===============1163336859004736567=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============1163336859004736567==
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">

<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<BODY style=3D"MARGIN: 0.5em">
<P>Good Day linux1394-devel@lists.sourceforge.net,<BR><BR>Thank you for tak=
ing your time to read this offer.</P>
<P>My name is Leonidas Akylas. I'm Assistant Scientist with one of the lead=
ing Bio pharmaceutical company, I have a profitable and genuine business pr=
oposal I wish to share with you. This may not be your area of specializatio=
n; but it will be another income generating business out of your specialty.=
 Let me know if you are open to discussion for more details.<BR><BR>Best re=
gards,<BR>Leonidas Akylas<BR>Assistant Scientist</P>
<P>&nbsp;</P></BODY></HTML>


--===============1163336859004736567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1163336859004736567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1163336859004736567==--
