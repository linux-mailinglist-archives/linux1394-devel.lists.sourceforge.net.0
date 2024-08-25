Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFD495E527
	for <lists+linux1394-devel@lfdr.de>; Sun, 25 Aug 2024 22:32:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1siJu5-00044m-05;
	Sun, 25 Aug 2024 20:32:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrewferguson500@gmail.com>) id 1siJu3-00044f-SW
 for linux1394-devel@lists.sourceforge.net;
 Sun, 25 Aug 2024 20:31:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cfUmi+aq/V9LEOjItiNPBkdIJUrTXbwZCgQ2s5D46l0=; b=LKYyrsMVOnAbpaw+0+f2DqErRz
 Yh0XDfw+iselcqoiyGXC5BChKU2EUY52mJycTaGXnhIUR/7bZCjwATW24s71TYAJxU1KBLC2FJQUz
 DB9QSs2h8099WCxXN2Xengo/flaU8eVWnrGAX/jqhiDSCyQfVQ4dbLiDlysWAqVIAF54=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cfUmi+aq/V9LEOjItiNPBkdIJUrTXbwZCgQ2s5D46l0=; b=e
 sZCxjnlCtElCEGf84NfDtLo+Xfm7zBVCMgb1/FrR3utJUiFUmkAEsZN+FzZEUvLom7hQpePG84Xm6
 FbGPl7Dlb18GYcQM7eTVdcDig98FN6F0t3hKYKt7CZ2PIuPTwCsCQNKtLRK8weBis/YmsTBh7KbC/
 5jawJDvUFOhIxFNs=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1siJu2-0000ks-Hu for linux1394-devel@lists.sourceforge.net;
 Sun, 25 Aug 2024 20:31:59 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-4281c164408so31415025e9.1
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 25 Aug 2024 13:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1724617912; x=1725222712; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=cfUmi+aq/V9LEOjItiNPBkdIJUrTXbwZCgQ2s5D46l0=;
 b=WnrovKsQmfz0Z83m7Oa4aVnVDy4aib/+lBsWrCLZZRwLe5Cun4/trzhOyKWEIgaQpc
 cgYKqpeSosRa1JUKdXuda2PSRsbb81tr0r2I3oUCQvm+9s8IVxefqHKOgeN1iaGg646T
 5eQIjj7n8ep32wXGXpeR5vzZpyLZ4poaQVdKOm15IG1t6mvh/BYqZ4RN/a1nO59Wh7pm
 IhuVEZ4OQ4bJFdvLXpJhFEDC3XjmeeceEvpttVcU7ecQw1Aa1IpKja8Y6NTQS/6Xq9S0
 mqiyO2xj+KBZWn82tF8ixaXW5/vYsteLijzj6zb+smWVChzJGQcK8rBIpmsCkyuQAKm9
 IYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724617912; x=1725222712;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cfUmi+aq/V9LEOjItiNPBkdIJUrTXbwZCgQ2s5D46l0=;
 b=fpXhxPgIr5MsqBXVEFLkJLrbbgRduAxEshSsYgzgC9iMocSW87aTwGl6tJXilphMUG
 ssoWtjy4P0auByF+U9t9oFnmqZxT18rXwNRYL/RN/JqM/wsLv+3lbsXmtdS/16LI1O9B
 H4RD+ykZJfZ1r2N6iB8HxJ0QBd1+/Ra2SgASG/LYmFw3GsN+/ryBCbEhDX3bUaroz1ec
 b2Kma89R7+jRX1zeZ28C7GAXvu0zUuVFU7OO0KN956fJzH3Je65HdPfCRlkvZK2y/BeR
 HRyz7bKyjM9kwAFl0DTH0zqw/tESq0xMeaR4zbsuM2RTNh4fRMKWhHvvmCh7UsoxPco4
 ErrA==
X-Gm-Message-State: AOJu0Yy8ubQM6ShioGxQbLNEFK7QoV+d/WlUaxI7Vq+/7mcy6+dHt4Yz
 8toI0qu9jjatMnvutZEAxNFpzwuxedP/gX6rO7cC2csTZgoAQ+sOo8gfkXxxS/RUtxzWjOVCNDS
 dt5J/Phi/aFBWzdvVbfbLZBp1uiSLGQ==
X-Google-Smtp-Source: AGHT+IElww3NR/yNokSJcqLvcBHNU6q1l/SkLk7Xk5VbHByrTjI42/AX25a2cwGVaQgySuuGjvSJ+rOcz0JZKjbLKes=
X-Received: by 2002:a5d:6b86:0:b0:368:71bc:2b0c with SMTP id
 ffacd0b85a97d-373118523cfmr4922154f8f.10.1724617911433; Sun, 25 Aug 2024
 13:31:51 -0700 (PDT)
MIME-Version: 1.0
From: Andrew Ferguson <andrewferguson500@gmail.com>
Date: Sun, 25 Aug 2024 21:31:40 +0100
Message-ID: <CAFvb365w5QXB8kGizFjytkg+Ag_bY_SB5B3LhHx2wSt7dtL1TQ@mail.gmail.com>
Subject: Bug report: Mac Target Disk Mode not working in some cases
To: linux1394-devel@lists.sourceforge.net
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I firstly wanted to thank the maintainers for working
 on the ieee1394 system for Linux. It's great to see continuing support for
 firewire in Linux. I have encountered a bug in that some Macs are not detected
 in Linux,
 when the Mac is being used in "Target Disk Mode". For those unfamiliar, 
 Target Disk Mode boots an older (firewire-compatible) Mac [...] 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wikipedia.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.128.43 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.43 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.128.43 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrewferguson500[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [andrewferguson500[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1siJu2-0000ks-Hu
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
Content-Type: multipart/mixed; boundary="===============5278450732500028070=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5278450732500028070==
Content-Type: multipart/alternative; boundary="000000000000fc0216062087e5ae"

--000000000000fc0216062087e5ae
Content-Type: text/plain; charset="UTF-8"

Hello,

I firstly wanted to thank the maintainers for working on the ieee1394
system for Linux. It's great to see continuing support for firewire in
Linux.

I have encountered a bug in that some Macs are not detected in Linux, when
the Mac is being used in "Target Disk Mode". For those unfamiliar, Target
Disk Mode boots an older (firewire-compatible) Mac in a mode where
connecting it to another computer via firewire causes the Mac to appear as
an external firewire hard drive. See the Wikipedia article
<https://en.wikipedia.org/wiki/Target_Disk_Mode> for more information. To
be clear, I am not trying to run the Linux1394 system on an older Mac; I am
trying to connect a Mac in Target Disk Mode to a regular PC running Linux
over firewire. The Mac should appear as an external firewire hard drive. On
some Mac models, it works just fine. However on other models, it doesn't
work. If I connect one of these non-working models to a Mac running OS X,
it does work, so it does appear to be an issue with Linux1394.

Mac models that work:
Macbook Pro late 2008
iMac G4

Mac models that do not work:
iBook G4
Powerbook G4

I have access to more Mac models to test if necessary - the benefits of
hoarding old electronics!

If the maintainers are interested in investigating this issue, what sort of
debugging information can I provide? There's only a few lines in dmesg that
to my eyes look useful ("sbp_scsi_abort" is one) but I can provide full
dmesg output if helpful. I have a number of different Firewire PCI / PCIe
cards I can use, including one that should be able to run the "nosy"
ieee1394 packet sniffer (although I have no clue how to set that up!).

Many thanks, and kind regards,
Andrew

--000000000000fc0216062087e5ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I firstly wanted to thank the ma=
intainers for working on the ieee1394 system for Linux. It&#39;s great to s=
ee continuing support for firewire in Linux.</div><div><br></div><div>I hav=
e encountered a bug in that some Macs are not detected in Linux, when the M=
ac is being used in &quot;Target Disk Mode&quot;. For those unfamiliar, Tar=
get Disk Mode boots an older (firewire-compatible) Mac in a mode where conn=
ecting it to another computer via firewire causes the Mac to appear as an e=
xternal firewire hard drive. See the <a href=3D"https://en.wikipedia.org/wi=
ki/Target_Disk_Mode">Wikipedia article</a> for more information. To be clea=
r, I am not trying to run the Linux1394 system on an older Mac; I am trying=
 to connect a Mac in Target Disk Mode to a regular PC running Linux over fi=
rewire. The Mac should appear as an external firewire hard drive. On some M=
ac models, it works just fine. However on other models, it doesn&#39;t work=
. If I connect one of these non-working models to a Mac running OS X, it do=
es work, so it does appear to be an issue with Linux1394.</div><div><br></d=
iv><div>Mac models that work:</div><div>Macbook Pro late 2008</div><div>iMa=
c G4</div><div><br></div><div>Mac models that do not work:</div><div>iBook =
G4</div><div>Powerbook G4</div><div><br></div><div>I have access to more Ma=
c models to test if necessary - the benefits of hoarding old electronics!</=
div><div><br></div><div>If the maintainers are interested in investigating =
this issue, what sort of debugging information can I provide? There&#39;s o=
nly a few lines in dmesg that to my eyes look useful (&quot;sbp_scsi_abort&=
quot; is one) but I can provide full dmesg output if helpful. I have a numb=
er of different Firewire PCI / PCIe cards I can use, including one that sho=
uld be able to run the &quot;nosy&quot; ieee1394 packet sniffer (although I=
 have no clue how to set that up!).</div><div><br></div><div>Many thanks, a=
nd kind regards,</div><div>Andrew</div></div>

--000000000000fc0216062087e5ae--


--===============5278450732500028070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5278450732500028070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5278450732500028070==--

