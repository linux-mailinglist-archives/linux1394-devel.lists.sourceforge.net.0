Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FF0ADA1F0
	for <lists+linux1394-devel@lfdr.de>; Sun, 15 Jun 2025 15:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tu/X+8ckw4XdvafvtencORUQ7itCqWNduHEn6QxtgN0=; b=dnsVxKUiKEi5CiY9VQq46PL2SW
	CyFgsrCMT64qPHR/zFpQdDDbXXL1TrbuTJTpNJ8S8CFvElkMFOxs7v5g9KXVaBlM4WKGs5uVnvHOo
	qKrf3POaMms8yysw+gMht3wu5rZO/vJf8S/+EWP//a4XrO6gStRzdGZaEQ2XTeAlqVN0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uQnU1-0000SC-BJ;
	Sun, 15 Jun 2025 13:33:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uQnTz-0000S4-EL
 for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7XKP+PnrLFVclC5u7hONL2ciFO44TegrPitUkyB2ifg=; b=Od/ythgg89Fbx2OE9a4V6Oj+iW
 1gZPd5LpRHPnV66wsgQWI6AjhrokQzH/XcboUDMdRNuIjPcTyttwfICJUtzisvTITAIgx5q2C+14N
 uGUDM7q5R+9MkFu78NW277Hi7ta41XpJayPeJXAgCYoFAczNiS73nw15x5ttkq4ksTxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7XKP+PnrLFVclC5u7hONL2ciFO44TegrPitUkyB2ifg=; b=cxD8B+LIqFWMboaSd6Ngl0RRAX
 RgxEcuUbepJQ7bbpQKT0LaBJ+bSbPVyKqy1QOImKz0IdiW8LLyM5Kcl1A9VnOWjVfjhM1JNclJXJi
 NNdbdq/4ljhOJceFOf84JeK353+9o+8qofsXDucjkWy5sAdUpLygFh6GvgSNiUjJEnfo=;
Received: from fhigh-a8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uQnTy-0000CX-SG for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:11 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 5228111400E4;
 Sun, 15 Jun 2025 09:33:00 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-02.internal (MEProxy); Sun, 15 Jun 2025 09:33:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1749994380; x=
 1750080780; bh=7XKP+PnrLFVclC5u7hONL2ciFO44TegrPitUkyB2ifg=; b=g
 rbhd0iOURs7p4kUhGn/cWqUAU3lbq4kQouX2g1HyeKqjfe2X6bywSbyue6v+xgxY
 O/fKyEXooQchINaqMU6kJkWTi+Juzj4AiRJzHn1LginSNB16A2OAIPfDDnuKhblK
 4JF4ko6QL2kD1ZHh/Z2PwOjFiqwpkMxQOPEcPKHS0dbFKTpkOQy7N0Zfra3L1/FQ
 HlTsVYbiaaHMga+89onDefXzJfWL8O0oCfOuSlavayaJwlvdBu4QpcsZ3X7DNbut
 4r0L68HcGY+vJ29BeCCng6xh7akL93YlslV8mtvFwM5CMSRolgDKnsRv51RBE0sO
 Ne+PZ11t4Guf2oNzIyTrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1749994380; x=1750080780; bh=7
 XKP+PnrLFVclC5u7hONL2ciFO44TegrPitUkyB2ifg=; b=PSJgIP2jXhdkSUccK
 3JxCLCrK1pButSUVh+DGp/0ikOYsHwiSVwjwKKTStI0vnZyhV3mVJBCzEU1W5SUe
 q7ihE7lyCfJiYYB8XMRxc1P/wfH4h5ic+lkfMhJbSMyq5rMsHozh/vDBtiYItIdT
 vFfKeA1a8fDcDwuZ92CJ4TNzWzkJQ3jce8DxMdz20ZP4pNj8TSGxB0+NAcRtdFKI
 Y7jIBVs5wwtCpNt+CzXGe+Rl4PxeNpQRpXYRf2TrWMv0XybniFGTQUSCqwOziiIi
 hmUvda3OFzt6IGknMP8kRxPgBgXUGnTJ1JInvWGJi47xKtavQx+HNSFkmF6WbvKp
 FgsXQ==
X-ME-Sender: <xms:jMtOaD4JfC-SNiRywqegkeS9rIjEXOE81ParefWATyjGaFpk-sOszw>
 <xme:jMtOaI6_OzlGPvk0vw5yhEn0fy9CiugXEdLsGvF_Npif6_HbeZyxOh8AVuj4Mt2rp
 -XfbU_d6TvoSNX3mJ8>
X-ME-Received: <xmr:jMtOaKd70r7wnCXB-zI9gPefSInKvlytPCu7hhCpKggg-y5sudays8qc5ontSXmOEae9o5o0x0CLIPxhjZVWIpzb5mKU_Juj2un7jUhntelt9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvfeekfecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvve
 fufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgr
 mhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrf
 grthhtvghrnhepvdejgfejuedvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedv
 ffekvddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 epohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohep
 vddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvh
 gvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhn
 uhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:jMtOaEIcjm-DmXTp6nuBIGqAaxBvN2lE_a_ODkQbVNm8xzJv_PNHQw>
 <xmx:jMtOaHIYAbK59VHULEAkuoB7bDpHxwq0Kcs9hIjyNgQy04N_Tigs1g>
 <xmx:jMtOaNxwbKx_F_rbxTLDGjID28tEJR1XbY3egxcandN18x4DXCx-dA>
 <xmx:jMtOaDJH_xwX8HLRYTOTISUvppWq6WhgNObraboQT-VJWVfBqo3FQA>
 <xmx:jMtOaA71QcpPShGVfZZ-am5QrL0cZwoJe6uiI9cNl00yfCGaEww1NDzq>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 15 Jun 2025 09:32:59 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 1/3] firewire: core: allocate workqueue for AR/AT
 request/response contexts
Date: Sun, 15 Jun 2025 22:32:51 +0900
Message-ID: <20250615133253.433057-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250615133253.433057-1-o-takashi@sakamocchi.jp>
References: <20250615133253.433057-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Some tasklets (softIRQs) are still used as bottom-halves to
 handle events for 1394 OHCI AR/AT contexts. However, using softIRQs for IRQ
 bottom halves is generally discouraged today. This commit adds a per-fw_card
 workqueue to accommodate the behaviour specified by the 1394 OHCI
 specification.
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uQnTy-0000CX-SG
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Some tasklets (softIRQs) are still used as bottom-halves to handle
events for 1394 OHCI AR/AT contexts. However, using softIRQs for IRQ
bottom halves is generally discouraged today.

This commit adds a per-fw_card workqueue to accommodate the behaviour
specified by the 1394 OHCI specification.

According to the 1394 OHCI specification, system memory pages are
reserved for each asynchronous DMA context. This allows concurrent
operation across contexts. In the 1394 OHCI PCI driver implementation,
the hardware generates IRQs either upon receiving asynchronous packets
from other nodes (incoming) or after completing transmission to them
(outgoing). These independent events can occur in the same transmission
cycle, therefore the max_active parameter for the workqueue is set to the
total number of AR/AT contexts (=4). The WQ_UNBOUND flag is used to
allow the work to be scheduled on any available core, since there is
little CPU cache affinity benefit for the data.

Each DMA context uses a circular descriptor list in system memory,
allowing deferred data processing in software as long as buffer overrun
are avoided. Since the overall operation is sleepable except for small
atomic regions, WQ_BH is not used. As the descriptors contain
timestamps, WQ_HIGHPRI is specified to support semi-real-time
processing.

The asynchronous context is also used by the SCSI over IEEE 1394
protocol implementation (sbp2), which can be part of memory reclaim paths.
Therefore, WQ_MEM_RECLAIM is required.

To allow uses to adjust CPU affinity according to workload, WQ_SYSFS is
specified so that workqueue attributes are exposed to user space.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 48 +++++++++++++++++++++++++-----------
 include/linux/firewire.h     |  1 +
 2 files changed, 35 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 2b6ad47b6d57..b3e48ca516fe 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -574,7 +574,6 @@ EXPORT_SYMBOL(fw_card_initialize);
 int fw_card_add(struct fw_card *card, u32 max_receive, u32 link_speed, u64 guid,
 		unsigned int supported_isoc_contexts)
 {
-	struct workqueue_struct *isoc_wq;
 	int ret;
 
 	// This workqueue should be:
@@ -589,29 +588,48 @@ int fw_card_add(struct fw_card *card, u32 max_receive, u32 link_speed, u64 guid,
 	//  * == WQ_SYSFS		Parameters are available via sysfs.
 	//  * max_active == n_it + n_ir	A hardIRQ could notify events for multiple isochronous
 	//				contexts if they are scheduled to the same cycle.
-	isoc_wq = alloc_workqueue("firewire-isoc-card%u",
-				  WQ_UNBOUND | WQ_FREEZABLE | WQ_HIGHPRI | WQ_SYSFS,
-				  supported_isoc_contexts, card->index);
-	if (!isoc_wq)
+	card->isoc_wq = alloc_workqueue("firewire-isoc-card%u",
+					WQ_UNBOUND | WQ_FREEZABLE | WQ_HIGHPRI | WQ_SYSFS,
+					supported_isoc_contexts, card->index);
+	if (!card->isoc_wq)
 		return -ENOMEM;
 
+	// This workqueue should be:
+	//  * != WQ_BH			Sleepable.
+	//  * == WQ_UNBOUND		Any core can process data for asynchronous context.
+	//  * == WQ_MEM_RECLAIM		Used for any backend of block device.
+	//  * == WQ_FREEZABLE		The target device would not be available when being freezed.
+	//  * == WQ_HIGHPRI		High priority to process semi-realtime timestamped data.
+	//  * == WQ_SYSFS		Parameters are available via sysfs.
+	//  * max_active == 4		A hardIRQ could notify events for a pair of requests and
+	//				response AR/AT contexts.
+	card->async_wq = alloc_workqueue("firewire-async-card%u",
+					 WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_FREEZABLE | WQ_HIGHPRI | WQ_SYSFS,
+					 4, card->index);
+	if (!card->async_wq) {
+		ret = -ENOMEM;
+		goto err_isoc;
+	}
+
 	card->max_receive = max_receive;
 	card->link_speed = link_speed;
 	card->guid = guid;
 
-	guard(mutex)(&card_mutex);
+	scoped_guard(mutex, &card_mutex) {
+		generate_config_rom(card, tmp_config_rom);
+		ret = card->driver->enable(card, tmp_config_rom, config_rom_length);
+		if (ret < 0)
+			goto err_async;
 
-	generate_config_rom(card, tmp_config_rom);
-	ret = card->driver->enable(card, tmp_config_rom, config_rom_length);
-	if (ret < 0) {
-		destroy_workqueue(isoc_wq);
-		return ret;
+		list_add_tail(&card->link, &card_list);
 	}
 
-	card->isoc_wq = isoc_wq;
-	list_add_tail(&card->link, &card_list);
-
 	return 0;
+err_async:
+	destroy_workqueue(card->async_wq);
+err_isoc:
+	destroy_workqueue(card->isoc_wq);
+	return ret;
 }
 EXPORT_SYMBOL(fw_card_add);
 
@@ -744,6 +762,7 @@ void fw_core_remove_card(struct fw_card *card)
 	dummy_driver.stop_iso		= card->driver->stop_iso;
 	card->driver = &dummy_driver;
 	drain_workqueue(card->isoc_wq);
+	drain_workqueue(card->async_wq);
 
 	scoped_guard(spinlock_irqsave, &card->lock)
 		fw_destroy_nodes(card);
@@ -753,6 +772,7 @@ void fw_core_remove_card(struct fw_card *card)
 	wait_for_completion(&card->done);
 
 	destroy_workqueue(card->isoc_wq);
+	destroy_workqueue(card->async_wq);
 
 	WARN_ON(!list_empty(&card->transaction_list));
 }
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index b632eec3ab52..c55b8e30e700 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -136,6 +136,7 @@ struct fw_card {
 	__be32 maint_utility_register;
 
 	struct workqueue_struct *isoc_wq;
+	struct workqueue_struct *async_wq;
 };
 
 static inline struct fw_card *fw_card_get(struct fw_card *card)
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
