Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58787502601
	for <lists+linux1394-devel@lfdr.de>; Fri, 15 Apr 2022 09:09:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nfG4h-0006Wx-JO; Fri, 15 Apr 2022 07:09:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <bounces+19614-7193-linux1394-devel=lists.sourceforge.net@email.iparlsetup.com>)
 id 1nfG4g-0006Wq-77
 for linux1394-devel@lists.sourceforge.net; Fri, 15 Apr 2022 07:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ACh0QN6lWcfxZtYd4vw3iXtuRqr/H85Bo41gpdCNu90=; b=QeAqF7ZWUE29EjJHS2uVKVeaA7
 I/M4rWj2TrDZS7dkAjzqZhHt+U2xnBiu/3L6UKqeEyaUC3m3DHurxaPbm8H+YsxPNaUyv3Z3jr7Ei
 NiovP0TK5IfOL8SKO+Xq/UeEMJm3jKpjAcXn359IaC/eyZDKYN6ZMLToXUIV9TuwIVL0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Subject:Message-ID:Mime-Version:From:Date:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ACh0QN6lWcfxZtYd4vw3iXtuRqr/H85Bo41gpdCNu90=; b=V
 mUZ4WWrAHc+o6mZwzSNjbR0GR99gf7pgRrYc8enGolsHni7nX+PUAmmK7Vn5gadb7JB6Lf7U31yzU
 hVVHSqzAdf2BJg0CB2d6gp6RJTWFz7P56fr3/fbZ3qyo6lGg3MpgOnPryA2fc9rT0+7138XbWyWRV
 A1m74E7uZTbt1XSg=;
Received: from o1.ptr6164.eaction.email ([167.89.42.201])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nfG4c-0006lQ-A5
 for linux1394-devel@lists.sourceforge.net; Fri, 15 Apr 2022 07:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iparlsetup.com;
 h=content-type:from:mime-version:subject:to;
 s=s1; bh=ACh0QN6lWcfxZtYd4vw3iXtuRqr/H85Bo41gpdCNu90=;
 b=YrdgyAaBVC/Ix5wjnECz9Mqd++jsGL02+BOqk552u2O6DDLzE938nLjrknZ2GmvNVXvR
 /qWAWZGjawPhCXwd5qzNnTdknm79mDXGL39wzuYExX34GJVYzleWL/VFL+cdtjSVgewaCq
 EEQt9obG62YELXXAcFUK3Kx18SI9nLq169SA/DzyJbXGB53YpFQx3zSPY0jTP7R7zUpDtb
 iOJnvWcfwJYTmrIzs0Rz4inLQ21zfS9wVe8V1XuG6VCIeHuYs8JJif/EseGMl9r7mEnVE6
 z7w7M8qU51aMpsIb7hLbEriHJ5Ohvuq9MT9hxqb89DOAMOHhGvUOw7Wl6qmzXjdQ==
Received: by filterdrecv-canary-755fdc687-cnmpz with SMTP id
 filterdrecv-canary-755fdc687-cnmpz-1-625919F7-2
 2022-04-15 07:08:39.186080395 +0000 UTC m=+724995.869339138
Received: from MTk2MTQ (unknown) by geopod-ismtpd-4-1 (SG) with HTTP
 id FjPEldbDRaOECbhD_IPpIQ Fri, 15 Apr 2022 07:08:38.926 +0000 (UTC)
Date: Fri, 15 Apr 2022 07:08:39 +0000 (UTC)
From: "Peter, openDemocracy" <supporters@opendemocracy.net>
Mime-Version: 1.0
Message-ID: <FjPEldbDRaOECbhD_IPpIQ@geopod-ismtpd-4-1>
Subject: Thank you for signing the petition
X-SG-EID: =?us-ascii?Q?pRAACa2LCTtXjXA4ysVeXRfAj2LHnXX0s1D7YvC54RssMDl0GM4EoFqxbB1w23?=
 =?us-ascii?Q?sdQweOa8mLtP=2FPqPTuVAdWzy3WEZt73BpUlsChi?=
 =?us-ascii?Q?GiULSol2NkLgfsGNA06=2FiXUxLcuUx5bbR0x7NSG?=
 =?us-ascii?Q?TJNs9KmLoCS+90bsRX+1tQStI8gz2h7hYXisbIE?=
 =?us-ascii?Q?4Hnvjt1Hs30ysG=2F1ysViXOeIJAL2IhLaTKeAjLX?=
 =?us-ascii?Q?9fq4FAROH+DNIAIo9GoYpEK2EY+SJTL0JW=2FQ8AN?=
 =?us-ascii?Q?GztfAusaZClEKtnxaHMUDbZItdhBKDbqGd0FZEK?= =?us-ascii?Q?7Ik=3D?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb2POs7okvAtddc+Y6jH4eYdZ2AAct3Rki6eaMdiMPC?=
 =?us-ascii?Q?TMWMPUuY4bUSAS9cgzCujo8w=3D=3D?=
To: linux1394-devel@lists.sourceforge.net
X-Entity-ID: ebwPqFHTH/mCSr8GbLdTww==
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear 💖 You have unread messages (6) from Victoria! View
    messages: https://cutt.us/2tLQy?m0i 💖, Thank you for signing our petition
    objecting to changes in standards rules for MPs. It is important that we
   show that we will not stand by while sleaze rules are watered down. 
 
 Content analysis details:   (1.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [167.89.42.201 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [167.89.42.201 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1nfG4c-0006lQ-A5
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
Content-Type: multipart/mixed; boundary="===============8396009003102635953=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============8396009003102635953==
Content-Type: multipart/alternative; boundary=40ee79d39829e38eba36f525ece03fe0571aab583532a6676f6d61cca12a

--40ee79d39829e38eba36f525ece03fe0571aab583532a6676f6d61cca12a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0

Dear =F0=9F=92=96 You have unread messages (6) from Victoria! View messages=
:
https://cutt.us/2tLQy?m0i =F0=9F=92=96,

Thank you for signing our petition objecting to changes in standards
rules for MPs. It is important that we show that we will not stand by
while sleaze rules are watered down.

openDemocracy can only run campaigns like this because of the support
of people like you. If you are not already an openDemocracy supporter,
may I ask you to please chip in to fund our work? You can donate here
[https://support.opendemocracy.net/project/home].
Thank you very much indeed,

Peter Geoghegan
Editor-in-chief, openDemocracy
--40ee79d39829e38eba36f525ece03fe0571aab583532a6676f6d61cca12a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=utf-8
Mime-Version: 1.0

<html><body>Dear =F0=9F=92=96 You have unread messages (6) from Victoria! V=
iew messages: https://cutt.us/2tLQy?m0i =F0=9F=92=96,<br />
<p><span style=3D"font-weight: 400;">Thank you for signing our petition obj=
ecting to changes in standards rules for MPs. It is important that we show =
that we will not stand by while sleaze rules are watered down.<br /></span>=
<span style=3D"font-weight: 400;"><br />openDemocracy can only run campaign=
s like this because of the support of people like you. If you are not alrea=
dy an openDemocracy supporter, may I ask you to please chip in to fund our =
work?</span> <a href=3D"https://support.opendemocracy.net/project/home">You=
 can donate here</a>.</p>
Thank you very much indeed,<br /><br />Peter Geoghegan<br />Editor-in-chief=
, openDemocracy</body></html>
--40ee79d39829e38eba36f525ece03fe0571aab583532a6676f6d61cca12a--


--===============8396009003102635953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8396009003102635953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============8396009003102635953==--

