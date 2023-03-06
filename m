Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 771846AB529
	for <lists+linux1394-devel@lfdr.de>; Mon,  6 Mar 2023 04:58:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pZ1zh-0004nZ-29;
	Mon, 06 Mar 2023 03:58:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pZ1zf-0004nR-D4
 for linux1394-devel@lists.sourceforge.net;
 Mon, 06 Mar 2023 03:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pnFkC+vgiukAXvQZB2Xafq5RnPPqc7XatDUtnaIu0bM=; b=MZ9k0/L6l/nh2smKUYDI7ry37c
 F7rLNDxo419sMsS7YfxTXp65SdMJ8NR3I1zuLf/BEh9tR8pbD/K70fxuiM5brXLwe5kKNmpRtNvDX
 pQ/7D1OqBOY41uU3iNkRPMOqUwD7A8ykKYvaKAxdB7r/TEdw5TtIPgMnzOUPxtUjvfyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pnFkC+vgiukAXvQZB2Xafq5RnPPqc7XatDUtnaIu0bM=; b=L
 lyoLn8xUf9qNaMKEmZ2vN9TY9TDX1cT3dEJCWmevMw59SFyXJ1AdlCRMSC3nf3yf0bZBNtvXmBNO9
 zROHlPTvhIpzVIysI5ZpyJ6ptfO7hJGAEfe/Ts/3tLrvjn9XGVK+8H3U5sUJu+Xrhu5g2512o4PJ+
 aG1eeISeDcIy0uuQ=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pZ1zX-0003Yd-B9 for linux1394-devel@lists.sourceforge.net;
 Mon, 06 Mar 2023 03:58:34 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 1FA435C00B7;
 Sun,  5 Mar 2023 22:58:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sun, 05 Mar 2023 22:58:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1678075100; x=1678161500; bh=pn
 FkC+vgiukAXvQZB2Xafq5RnPPqc7XatDUtnaIu0bM=; b=wAfpBuN9DcC+29wxaV
 /DlKN6CVi0qSvZLb6DXDmlt9SbKx5TEMcazj7xUTxv0/w/iRUJ99+rWTbMwM+o4i
 E1OgqWhRa2sPcI5MmNFc4MbBimHpwtkV2EATAIb39sqb/dLq6AEQAVOWnBuFb7F+
 PaINwtjVNAXqcd/60uL67Twomhcz4OegNn3OPh7qU87KLkwlSy4g8cl6E88W2Udt
 tDtE9mUmuWZyggtx2CB8xb6Uwz++p2Syv6rw6Lk/f59lrg72p50fseT/tLjpo+0Q
 jNv959Uai+IqkQt1tsV3TDSn5k1d9Uh6tCMlrAE+TzW/xzYKdvCgFYzsiVn0KShM
 LD+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1678075100; x=1678161500; bh=pnFkC+vgiukAX
 vQZB2Xafq5RnPPqc7XatDUtnaIu0bM=; b=M8QSy6cvCjxwX/ehr9AZTKKZlx4j/
 2qGQ8A21zDexblRjCWHyw+K6C84sGPBoPdb/ZZUmv5ivGzIHDiI9gJgjfBaUZXFC
 j1qBa2IiaoUkNCUOC+6bj5E/1OyhbUbr2rTswWw98CNbir/2j/vt2BiiqtVZ02Jc
 WW+Y8IegfX9wdruQXrsDa4Ac2GW4vkiBlNfsx9Jn04jMKXrE/O/A6jNZvEPvvFh7
 Sh2bt88LD2MZv3pB0l4tMtNNLdqqK00xdJkwWXec1z9+cBi9XJ/R2CVvd/6Q4g2V
 YdTagofuIiu5VXBVRi9TxBgpcfulgICnyajxfCXtuPvYjpLr3Hf06bulg==
X-ME-Sender: <xms:22QFZFkAntOVfyq_W0t20ZcRzDojHiR0fbDdcL4Sqk1EmEV0peVKuQ>
 <xme:22QFZA04mNadzesFnyAxg1THeWYL2V6yhN-VQVYxkvLU8ACh6h-fT9BWuSsMT0XH_
 0vcpk91pdRGz2AyfPI>
X-ME-Received: <xmr:22QFZLrjhwrEkEPcflMOv8Z9eUbPY9nqKE38ExVYY1oTCJ7Vux-gTyQUUUFztaWlblK0phEBd1lNfVfqXBrC1X_RmJoY6rrK8dUkT7zvMUz6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddthedgieehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:22QFZFl-0BLUH2NhP27sZAnYsLaZUVgoLCIxhSxZHKXCJHPWoN5Ixw>
 <xmx:22QFZD2GmTi0dEmSPxpkkFX9tnv-RRRJ8xeIIuNQRe8nnQhuSg_ckQ>
 <xmx:22QFZEuSGy-jv2dqrqu8awwXrex9rI_6eEVq4K67incKef21iYJzCg>
 <xmx:3GQFZEzW6dGj0a3Ttnyg_xE1y5GOL-26AoPeqPDBYp0-zbSn_frkmA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 5 Mar 2023 22:58:18 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 stefanr@s5r6.in-berlin.de
Subject: [PATCH] MAINTAINERS: replace maintainer of FireWire subsystem
Date: Mon,  6 Mar 2023 12:58:14 +0900
Message-Id: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the last few years, I have reviewed patches for FireWire
 subsystem and requested sound subsystem maintainer to sent them to mainline,
 since FireWire subsystem maintainer has been long absent. This [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pZ1zX-0003Yd-B9
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
Cc: tiwai@suse.de, broonie@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the last few years, I have reviewed patches for FireWire subsystem and
requested sound subsystem maintainer to sent them to mainline, since
FireWire subsystem maintainer has been long absent. This situation is not
preferable since we have some user of sound hardware in IEEE 1394 bus.

I will stand for the maintainer, and work for FireWire core functions and
1394 OHCI driver, as well as sound drivers. This commit replaces the
corresponding entry.

As you know, IEEE 1394 is enough legacy. I would like to schedule the end
of my work in the subsystem. My effort will last next 6 years. In 2026, I
will start strong announcement for users to migrate their work load from
IEEE 1394 bus (e.g. by purchasing alternative devices in USB and hardening
system for them), then in 2029 let me resign the maintainer and close
Linux 1394 project.

My current work focuses on real time data (sampling data) transmission
protocol in packet-oriented communication, thus I would provide less help
to implementations for the other type of protocol; i.e. IPv4/IPv6 over
IEEE 1394 bus (firewire-net), SCSI transport protocol over IEEE 1394 bus
(firewire-sbp2) and iSCSI target (sbp-target).

If receiving few objections from developers, I will start my work to send
fixes for v6.3 prepatch, and PR for future v6.4 or later. I'm pleased if
getting any help until the end.

Reference: commit b32744751e75 ("firewire: add to MAINTAINERS")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 MAINTAINERS | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8d5bc223f..e137c1b2f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7954,10 +7954,11 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nab/lio-core-2.6.git master
 F:	drivers/target/sbp/
 
 FIREWIRE SUBSYSTEM
-M:	Stefan Richter <stefanr@s5r6.in-berlin.de>
+M:	Takashi Sakamoto <o-takashi@sakamocchi.jp>
+M:	Takashi Sakamoto <takaswie@kernel.org>
 L:	linux1394-devel@lists.sourceforge.net
 S:	Maintained
-W:	http://ieee1394.wiki.kernel.org/
+W:	http://ieee1394.docs.kernel.org/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
 F:	drivers/firewire/
 F:	include/linux/firewire.h
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
