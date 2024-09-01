Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CA1967618
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:16:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiZJ-0001bI-84;
	Sun, 01 Sep 2024 11:16:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiZI-0001b9-29
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2SEHXfPMMbG/XZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=F1UNYO8cx8embcRzPp6ZteYPlv
 sqv6fkmydvd1USf2KXFk0nvk6T/lsEwjFkqcFG4CDE+gOKDBjpVAWY5vra7qwAhoBtcFRcdX/HD4j
 U2RiJ8kH3GO5XoqqEj1jQ//QtZ3RIKuXWi6xynq3WTAV3eRqoZcVkVfNgpKRwEKIFFww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2SEHXfPMMbG/XZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=c+x5IdW2/FZ6//JTXAin1iFinP
 Xc6OwVWYsxkLNEeJhJ2Rj7Ky2har9GcNthV7hSL776C4L/h58MXjbAE9IYp0Sq9Ite08jh+0XaezR
 I2fF54U9heY/h7hgGcusD9e/VyApLhHherwRb3fDb4UfYT/Yssnh/uvRQed+6uVMP4Xw=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiZH-0006nj-Au for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:27 +0000
Received: from phl-compute-08.internal (phl-compute-08.nyi.internal
 [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id C535411400DC
 for <linux1394-devel@lists.sourceforge.net>;
 Sun,  1 Sep 2024 07:16:21 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-08.internal (MEProxy); Sun, 01 Sep 2024 07:16:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725189381; x=
 1725275781; bh=2SEHXfPMMbG/XZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=M
 OXjC9W/8AXne+fwpZYKeltTlwGwWDEm7XgVBSx5tKwnd/wFdz4nWmgj5TZ5Nh/K8
 g6VdCgS0QoaG+vCIaU+l9tukFF6lhMJzxKzoSuBuyucdvEOuo6+rjqLnFzWyUlE1
 WfDk7X/4jgC9mLv2HfIfrpGlA/SQNqQ8wSdzBhBm6iv+n7nuNNubizbtIWP8BBwn
 0DQ8WOg19lkJFr21s9vRAq2j2YhQRG3NLkTR5g2HKdYYiGO5k6nw0Y+9qmVQ/2AC
 flfTvMmHiEtWhAMuxaqRWb8O804dHlmi7///Bx1qIML7s22cbTRR6kaunkMS5biM
 FI5BqyRJd3Ws9u9mt7LEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1725189381; x=1725275781; bh=2SEHXfPMMbG/X
 ZRxOUGUorrs5TFwh/6sxr7DMq7qodg=; b=XIKRQuv/QHTCXUyXFLGTLprGhfaY4
 MpU7BT0fNguA5Of7m3inM0ffm4lK53tS12032fSKsn4QllgEYsgHzQt/cUNwe1X2
 sFgptDDY8Ct+sY9+MD64b/gubKD/I+Sa6PFdepu2ORNvgcLPQxXeD/NcFxLyqkb1
 ZO57VMg57oM9YiAuvbCTio10Cb3YD27n0r8MJ1IYZNW7d1DLAWeqFtaZF2RLdbTj
 HtNygpnzhsxFvCXb5F+XDXGik95xWzM4zEcVYCD6zFyhfooqsFCxdmCCDtRNgRiz
 Dt9pP6sbJlvbMX5oHffdmg2fRWANzwUjbiarOxsXYdgEcR2wZd5I1yF7Q==
X-ME-Sender: <xms:BU3UZiGYQ0_oFuU7Mdi7R3yV2sAYq6ciAkd8tjoAd9F_eqGVF3yCGg>
 <xme:BU3UZjWI1546T2A89IE3URMvnivzBelnRtRI13DC_6Y2JqQWYK1IFBFrfohdFD5Fc
 43j5mg-zbFV4nnEDzY>
X-ME-Received: <xmr:BU3UZsL0YMSyrjiG2QB30DpCCcCv1r0RG2m--3PPyzTcZHdjDQ6LhGKeFL0mE5AwyzsqKF7Q-iemWnVss-6NIyfChqixRZWCSuMOPbQ8sWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepveefffefkeetgfevgeefleehfffhueejtdejveethfekveektdejjedvtdej
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:BU3UZsHu6dw7WXJ-p0rCiTS6NZCi2dxl74nri9xpx9jDQu7fBm4iZQ>
 <xmx:BU3UZoXSS_BbNHPgTgfz4HGf4QyMdT6ZQfUOKunTbo-LTMvvyHevug>
 <xmx:BU3UZvO87ljD6ziaInY_y1hYbZODLUkLP3udMB4Y5O-v6ziMz9Vjig>
 <xmx:BU3UZv1WCrhhV-LStzvriXNrCLhyXaLqT2WZHjFxGhSfxBY_51iVcw>
 <xmx:BU3UZjexrUGlZ9zSKGoW6kPwtbr8oWXOmB5QrYWur5LKKJgPD5DOLy8_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Sun,
 1 Sep 2024 07:16:20 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 2/5] firewire: core: add local API for work items
 scheduled to workqueue specific to isochronous contexts
Date: Sun,  1 Sep 2024 20:16:13 +0900
Message-ID: <20240901111616.155464-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901111616.155464-1-o-takashi@sakamocchi.jp>
References: <20240901111616.155464-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the previous commit,
 the workqueue is added per the instance
 of fw_card structure for isochronous contexts. The workqueue is designed
 to be used by the implementation of fw_card_driver structure un [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiZH-0006nj-Au
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the previous commit, the workqueue is added per the instance of fw_card
structure for isochronous contexts. The workqueue is designed to be used by
the implementation of fw_card_driver structure underlying the fw_card.

This commit adds some local APIs to be used by the implementation.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 22 ++++++++++++++++++++--
 drivers/firewire/core.h     | 10 ++++++++++
 include/linux/firewire.h    |  1 +
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 101433b8bb51..124579a9c657 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -211,21 +211,39 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
 
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 {
+	int err;
+
 	trace_isoc_outbound_flush_completions(ctx);
 	trace_isoc_inbound_single_flush_completions(ctx);
 	trace_isoc_inbound_multiple_flush_completions(ctx);
 
-	return ctx->card->driver->flush_iso_completions(ctx);
+	might_sleep();
+
+	disable_work_sync(&ctx->work);
+
+	err = ctx->card->driver->flush_iso_completions(ctx);
+
+	enable_work(&ctx->work);
+
+	return err;
 }
 EXPORT_SYMBOL(fw_iso_context_flush_completions);
 
 int fw_iso_context_stop(struct fw_iso_context *ctx)
 {
+	int err;
+
 	trace_isoc_outbound_stop(ctx);
 	trace_isoc_inbound_single_stop(ctx);
 	trace_isoc_inbound_multiple_stop(ctx);
 
-	return ctx->card->driver->stop_iso(ctx);
+	might_sleep();
+
+	err = ctx->card->driver->stop_iso(ctx);
+
+	cancel_work_sync(&ctx->work);
+
+	return err;
 }
 EXPORT_SYMBOL(fw_iso_context_stop);
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 96ae366889e0..1b78d66a88a0 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -159,6 +159,16 @@ int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count);
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction);
 
+static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_func_t func)
+{
+	INIT_WORK(&ctx->work, func);
+}
+
+static inline void fw_iso_context_schedule_work(struct fw_iso_context *ctx)
+{
+	queue_work(ctx->card->isoc_wq, &ctx->work);
+}
+
 
 /* -topology */
 
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 10e135d60824..72f497b61739 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -511,6 +511,7 @@ union fw_iso_callback {
 
 struct fw_iso_context {
 	struct fw_card *card;
+	struct work_struct work;
 	int type;
 	int channel;
 	int speed;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
