Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8E1976AA3
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 Sep 2024 15:31:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sojuS-0004mQ-A9;
	Thu, 12 Sep 2024 13:30:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sojuQ-0004mG-TA
 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hOL3pXdPLkPf7uAd5iia3Mmqf1qjh1jea0RIAuKN/g0=; b=HokNe6Z6WHsVji8AMJZiuQ/Ars
 lW1ZZ8Bqgojjdq7AW9DHgE0NCIfnfhoeujORStRR57E1/kPQnyln6DnDzkJYM2dv35PRgVgbS8zGO
 qlN5ZW3SACZijzie2P19zKGmgmAHAQj30aSIuI7VwnZYoCxpNi2EMREsk+ySUYyawPk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hOL3pXdPLkPf7uAd5iia3Mmqf1qjh1jea0RIAuKN/g0=; b=bD4buoHKCEoqPMdsvCB4lO5UY0
 tZkZUr1OcipdyRgaAHduaXW5S/p8ieu3U8DI0Rey36IMV22LPOjYfES7Iuu8QqDmq1TGMEYu3G3T6
 8CzsWa9NkQ50fiHc+61ds5wgO8Igspprws6ZK5WeOvhJ0SfX41yoiAcsC0SByLQfMv8A=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sojuO-0000XZ-T5 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:54 +0000
Received: from phl-compute-11.internal (phl-compute-11.phl.internal
 [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id 496A5138056D;
 Thu, 12 Sep 2024 09:30:47 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Thu, 12 Sep 2024 09:30:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1726147847; x=
 1726234247; bh=hOL3pXdPLkPf7uAd5iia3Mmqf1qjh1jea0RIAuKN/g0=; b=r
 EZRq1ss/tDmMaOQ6AbIHQB+Gjh3RC/amDsWQNwyRCUUJkYs8cwd6r9uqRWT3brPI
 kRBg0f6nwM53Z4VGZwT91I/gMsL8xZkn9GAwYP4Z3CP/8uv+yRyhfONDnlecBDer
 8oqWLWvc1O1cQPNwG2KfxzXB7hENIz9H7IaU3IH2BjWdz0/9Vqoty4m9Fj9PqdJs
 rnygEWeu3gjICME5y0OdKsLt/7TU5Gwzvsc+Z9+bny57+WwpM9ePJRCDgL72wSQG
 i2qQhsMj0+rDNq+Q+FYaPBuYtMvXYH9rqXzacJRAmiV2L+DpEAUOEZwMAP9wfhuw
 rnMRy5WztGnL29uJjYBAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1726147847; x=
 1726234247; bh=hOL3pXdPLkPf7uAd5iia3Mmqf1qjh1jea0RIAuKN/g0=; b=o
 mVDyfQPh1PCuoMseNNefo4yI/Ov460TBQAz0Ccpb9bJFPwR+dadqrhmC3cwFP2Og
 nSpqX+bkR9qzywZP90KC9ucNIWR23LIQGgRLDntbjCCB1H7bd5AoGx4KZcFY8gNV
 amALtsdEYqOZzU0xqHFzF7E7/HQIzp7ltDYpRBiEaHK50n4Dye7rxHmfpLTDrFoi
 rW1FBinzI4wzhg8T0UHJDYfr3onehLO9QU06ecDx9zZUn8PWW+PPjF4qWD3EcdL6
 x9mLhiTE8JmANi+ohHO0m2eXfUfWE4voOmKGOWEzfV4Xxj/5CNorLAUk0YwKNSQu
 BUnfrXO1DEJjpGAmGgliA==
X-ME-Sender: <xms:B-3iZuS3dD348nXz1mLkVBAvKpWXN06Kv7peNvn9JXmofQb-dbWdwQ>
 <xme:B-3iZjxAD442D_UzytPETyz2r8QhDZx3ytac31Q6JsLIZ_7K-TqoddtUydSmgdFUq
 if7pXKOPjoEmvLxgOs>
X-ME-Received: <xmr:B-3iZr2Z5GYbTf2yY4qp1PYU_HnFrrte1fkk4yhqUxW4YrFvrom2XdSggmr_VdV3jg_XgXyhtJwyxitt76K8q2O8ovZP6ijVO8NHSqLHNWHfVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejfedgieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:B-3iZqCvlBaDWG8owQgPjbWxyjhUjj9piAw7ofcFm31BVJU1WACtEg>
 <xmx:B-3iZnhL3BYCpNdC1BYqdTRj-Km9anHgXNE6zI6NxmLzGKmp6zffwA>
 <xmx:B-3iZmqOIMsBcMpRsbzlUSDN0gn4UFebqtY7wVMk_9J5BDQLgYoo7g>
 <xmx:B-3iZqhwJWXiSBfk5ATQQV20lUgsf2X-8P3bPAl-sUGUyMw4syL9jQ>
 <xmx:B-3iZqtPaPKlZ0qcpZoHXY3nY7UqKDG39GXVQR3WDWNWv5TDVzrTllQk>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 Sep 2024 09:30:46 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/5] Revert "firewire: core: move workqueue handler from 1394
 OHCI driver to core function"
Date: Thu, 12 Sep 2024 22:30:35 +0900
Message-ID: <20240912133038.238786-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
References: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit 767bfb9ef27ebf760290d9f8bc303828b018c312.
 It appears that the call of ohci_flush_iso_completions() in the work item
 scheduled by hardIRQ of 1394 OHCI for any isochronous context ch [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sojuO-0000XZ-T5
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

This reverts commit 767bfb9ef27ebf760290d9f8bc303828b018c312. It appears
that the call of ohci_flush_iso_completions() in the work item scheduled
by hardIRQ of 1394 OHCI for any isochronous context changes the timing to
queue events in the view of user space application.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 26 ++++++++++++---------
 drivers/firewire/core.h     |  5 +++++
 drivers/firewire/ohci.c     | 45 +++++++++++++++++++++++++++++++++++--
 3 files changed, 64 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 9f41c78878ad..f2394f3ed194 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -131,13 +131,6 @@ size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed)
 	return 0;
 }
 
-static void flush_completions_work(struct work_struct *work)
-{
-	struct fw_iso_context *ctx = container_of(work, struct fw_iso_context, work);
-
-	fw_iso_context_flush_completions(ctx);
-}
-
 struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 		int type, int channel, int speed, size_t header_size,
 		fw_iso_callback_t callback, void *callback_data)
@@ -156,7 +149,6 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->header_size = header_size;
 	ctx->callback.sc = callback;
 	ctx->callback_data = callback_data;
-	INIT_WORK(&ctx->work, flush_completions_work);
 
 	trace_isoc_outbound_allocate(ctx, channel, speed);
 	trace_isoc_inbound_single_allocate(ctx, channel, header_size);
@@ -226,15 +218,29 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
  * to process the context asynchronously, fw_iso_context_schedule_flush_completions() is available
  * instead.
  *
- * Context: Process context.
+ * Context: Process context. May sleep due to disable_work_sync().
  */
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
+	// Avoid dead lock due to programming mistake.
+	if (WARN_ON_ONCE(current_work() == &ctx->work))
+		return 0;
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
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 96ae366889e0..0ae2c84ecafe 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -159,6 +159,11 @@ int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count);
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction);
 
+static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_func_t func)
+{
+	INIT_WORK(&ctx->work, func);
+}
+
 
 /* -topology */
 
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 02ff0363d3ad..3a911cfb5ff3 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1182,6 +1182,47 @@ static void context_tasklet(unsigned long data)
 	}
 }
 
+static void ohci_isoc_context_work(struct work_struct *work)
+{
+	struct fw_iso_context *base = container_of(work, struct fw_iso_context, work);
+	struct iso_context *isoc_ctx = container_of(base, struct iso_context, base);
+	struct context *ctx = &isoc_ctx->context;
+	struct descriptor *d, *last;
+	u32 address;
+	int z;
+	struct descriptor_buffer *desc;
+
+	desc = list_entry(ctx->buffer_list.next, struct descriptor_buffer, list);
+	last = ctx->last;
+	while (last->branch_address != 0) {
+		struct descriptor_buffer *old_desc = desc;
+
+		address = le32_to_cpu(last->branch_address);
+		z = address & 0xf;
+		address &= ~0xf;
+		ctx->current_bus = address;
+
+		// If the branch address points to a buffer outside of the current buffer, advance
+		// to the next buffer.
+		if (address < desc->buffer_bus || address >= desc->buffer_bus + desc->used)
+			desc = list_entry(desc->list.next, struct descriptor_buffer, list);
+		d = desc->buffer + (address - desc->buffer_bus) / sizeof(*d);
+		last = find_branch_descriptor(d, z);
+
+		if (!ctx->callback(ctx, d, last))
+			break;
+
+		if (old_desc != desc) {
+			// If we've advanced to the next buffer, move the previous buffer to the
+			// free list.
+			old_desc->used = 0;
+			guard(spinlock_irqsave)(&ctx->ohci->lock);
+			list_move_tail(&old_desc->list, &ctx->buffer_list);
+		}
+		ctx->last = last;
+	}
+}
+
 /*
  * Allocate a new buffer and add it to the list of free buffers for this
  * context.  Must be called with ohci->lock held.
@@ -3128,6 +3169,7 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 	ret = context_init(&ctx->context, ohci, regs, callback);
 	if (ret < 0)
 		goto out_with_header;
+	fw_iso_context_init_work(&ctx->base, ohci_isoc_context_work);
 
 	if (type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
 		set_multichannel_mask(ohci, 0);
@@ -3582,8 +3624,7 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 	int ret = 0;
 
 	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		// Note that tasklet softIRQ is not used to process isochronous context anymore.
-		context_tasklet((unsigned long)&ctx->context);
+		ohci_isoc_context_work(&base->work);
 
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
