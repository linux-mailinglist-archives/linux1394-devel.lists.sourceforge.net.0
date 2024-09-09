Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC41C971BF9
	for <lists+linux1394-devel@lfdr.de>; Mon,  9 Sep 2024 16:00:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1snewS-0006Ob-VW;
	Mon, 09 Sep 2024 14:00:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1snewQ-0006OR-TM
 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 14:00:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zm1x8RMkMJ6iqGxXmzNuyEZHYUHIHWovazQAQQ9JJ5w=; b=KzyxmZTh9o592f4U7LBv3DKcne
 npc3UCIttJ8BNA5f9h/CoU23kpgd0INLGgGSRrNdKPkcVCQyToJoaiTJ0FIk5DRE8kS0rE2Cj1xQD
 sT6U9UtPTUhGq3bZNEPP/1ajFQrHQdrp3Gq+/oVMX9UQ/1gaOU8BnVh5YtdX42/f3eOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zm1x8RMkMJ6iqGxXmzNuyEZHYUHIHWovazQAQQ9JJ5w=; b=gyGpTTOH0Ig3WelwSIaKPyL5Nt
 aekXTZE0/k9UD++7uq45P9pEFeeZ1YoDCBAnQFxxkJEzcbLQf2SKLm7S50OkAjQ8XhKSEKMEuxFNj
 AHhgUuptXDyErNpDpl4IwMyFXwUQS7jz+KzO9pXS+KmsKozsF9kZvfXpVAOJzNHo0J6I=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1snewQ-0002U6-00 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 14:00:30 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id 71CC9138022D;
 Mon,  9 Sep 2024 10:00:24 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-02.internal (MEProxy); Mon, 09 Sep 2024 10:00:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725890424; x=
 1725976824; bh=Zm1x8RMkMJ6iqGxXmzNuyEZHYUHIHWovazQAQQ9JJ5w=; b=J
 UGCcD4iuFLzBuyKAiBjoV7qxQN2cC4TiaYb0phmRo6+uaZXlwyDtW58IEQdj8YGT
 YO3aR47cLoAHl5BAqZINsfObIgM2eHQHql0JrrWDI0KbU9FdUbMHlz2Dm+Kk/x8S
 rdGiZeOy3OCFoQtpFvKGD0gcKVpFP+890wcJfPHIkSgPR8odJ+DGTD6U4raa+Fyg
 81otInY4EFIIvZFXpIhR9UaETuWgpiagkXX1i4FSSCjADX4FYYjYUXuI9ePhfR+T
 rFAVojiuvvxuU8IFrZBjwNDyqaz44uO+E5T294CcVQj5gm1W8IQLbo5g/1QLsz4s
 QOtsFyJd/XQogNjT/fRqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725890424; x=
 1725976824; bh=Zm1x8RMkMJ6iqGxXmzNuyEZHYUHIHWovazQAQQ9JJ5w=; b=B
 EbMRQfkPMujFllyKVl4lUO37zh5DV+Mo1kgG0beX4efymsilvTaVUbn9XnyoG0cb
 DfDCoRouaU12mQ5F4KR+iGnqW+/+inQRHZhNo8jg9k+krAW+fGjiNKPbaPk4TTbv
 e2A3LtAkrcY20URC1MhgrgmvRYk+inkUZUXtXFl3tO5HIQWB8UR2kDNhvV/53XhK
 68dP26ZMq6T1WQlDkWqsI4d57DTu6D1PV4956//W6705+YpAHJkNbfIZmw83YLXr
 TjjzbU0KdfcPZd38w7KtM18CeamTcxbxHYWZXXAKPB4r0ze1IJQnYOPwmwtveC+R
 Tj9Vv7oXhF9eGvUbF+PVQ==
X-ME-Sender: <xms:eP_eZnl0dzOpm2vQVU-vvN18NmmfwQNogqwPTaTXtLApLzH81ULmnA>
 <xme:eP_eZq1pA9J-8u0JqgjwFRRbpv3xeDbsQIqpiWQCJfQeHSv1dQrBZJT6qiMjOBJ1b
 5TuSq212sbBG9DxvMs>
X-ME-Received: <xmr:eP_eZtrEQeW5SCWWqQ31ykg77jc82iIXPwtNBwOcB00tPdDbZmhTGZ5xxxQynKnsTn3n9CYBYCPka_Z1IyoAUP-sezFfqkwgymJ101V12t6srw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeijedgheehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeef
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:eP_eZvkYuH3Sx6PYE9kr8qIBtJGlOqoPzDlUzZUN9bexgJc5MM36hQ>
 <xmx:eP_eZl0coh3SHtVUf1Edyzgf5FNqIZg2TLCtdQUKfiRLzZPr1pQ3Uw>
 <xmx:eP_eZus9JJBHPe0wOvFOdCVsFSENk38pPgHDX22QAuh4devRd_p2XQ>
 <xmx:eP_eZpUQUUCNS6BwBxXlgkNvhtXW-WXnlRol8jHLye8jBbmXBQpIEg>
 <xmx:eP_eZuxVwOT1-_Xk7t2LZRlLtNI_MBgqElNmFyzQeTPveyF3SD7HIdKU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Sep 2024 10:00:23 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core: move workqueue handler from 1394 OHCI
 driver to core function
Date: Mon,  9 Sep 2024 23:00:17 +0900
Message-ID: <20240909140018.65289-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240909140018.65289-1-o-takashi@sakamocchi.jp>
References: <20240909140018.65289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In current implementation,
 the work item for isochronous context
 executes the same procedure of fw_iso_context_flush_completions() internally.
 There is a space to refactor the implementation. This commit calls
 fw_iso_context_flush_completions()
 in the work item. It obsoletes fw_iso_context_init_work(). It also obsoletes
 a pair of disable_work_sync() and enable_work() since the usage of tes [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1snewQ-0002U6-00
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In current implementation, the work item for isochronous context executes
the same procedure of fw_iso_context_flush_completions() internally. There
is a space to refactor the implementation.

This commit calls fw_iso_context_flush_completions() in the work item. It
obsoletes fw_iso_context_init_work(). It also obsoletes a pair of
disable_work_sync() and enable_work() since the usage of
test_and_set_bit_lock() mediates concurrent call already.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 26 +++++++++------------
 drivers/firewire/core.h     |  5 -----
 drivers/firewire/ohci.c     | 45 ++-----------------------------------
 3 files changed, 12 insertions(+), 64 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index f2394f3ed194..9f41c78878ad 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -131,6 +131,13 @@ size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed)
 	return 0;
 }
 
+static void flush_completions_work(struct work_struct *work)
+{
+	struct fw_iso_context *ctx = container_of(work, struct fw_iso_context, work);
+
+	fw_iso_context_flush_completions(ctx);
+}
+
 struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 		int type, int channel, int speed, size_t header_size,
 		fw_iso_callback_t callback, void *callback_data)
@@ -149,6 +156,7 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->header_size = header_size;
 	ctx->callback.sc = callback;
 	ctx->callback_data = callback_data;
+	INIT_WORK(&ctx->work, flush_completions_work);
 
 	trace_isoc_outbound_allocate(ctx, channel, speed);
 	trace_isoc_inbound_single_allocate(ctx, channel, header_size);
@@ -218,29 +226,15 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
  * to process the context asynchronously, fw_iso_context_schedule_flush_completions() is available
  * instead.
  *
- * Context: Process context. May sleep due to disable_work_sync().
+ * Context: Process context.
  */
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 {
-	int err;
-
 	trace_isoc_outbound_flush_completions(ctx);
 	trace_isoc_inbound_single_flush_completions(ctx);
 	trace_isoc_inbound_multiple_flush_completions(ctx);
 
-	might_sleep();
-
-	// Avoid dead lock due to programming mistake.
-	if (WARN_ON_ONCE(current_work() == &ctx->work))
-		return 0;
-
-	disable_work_sync(&ctx->work);
-
-	err = ctx->card->driver->flush_iso_completions(ctx);
-
-	enable_work(&ctx->work);
-
-	return err;
+	return ctx->card->driver->flush_iso_completions(ctx);
 }
 EXPORT_SYMBOL(fw_iso_context_flush_completions);
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 0ae2c84ecafe..96ae366889e0 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -159,11 +159,6 @@ int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count);
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction);
 
-static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_func_t func)
-{
-	INIT_WORK(&ctx->work, func);
-}
-
 
 /* -topology */
 
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 3a911cfb5ff3..02ff0363d3ad 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1182,47 +1182,6 @@ static void context_tasklet(unsigned long data)
 	}
 }
 
-static void ohci_isoc_context_work(struct work_struct *work)
-{
-	struct fw_iso_context *base = container_of(work, struct fw_iso_context, work);
-	struct iso_context *isoc_ctx = container_of(base, struct iso_context, base);
-	struct context *ctx = &isoc_ctx->context;
-	struct descriptor *d, *last;
-	u32 address;
-	int z;
-	struct descriptor_buffer *desc;
-
-	desc = list_entry(ctx->buffer_list.next, struct descriptor_buffer, list);
-	last = ctx->last;
-	while (last->branch_address != 0) {
-		struct descriptor_buffer *old_desc = desc;
-
-		address = le32_to_cpu(last->branch_address);
-		z = address & 0xf;
-		address &= ~0xf;
-		ctx->current_bus = address;
-
-		// If the branch address points to a buffer outside of the current buffer, advance
-		// to the next buffer.
-		if (address < desc->buffer_bus || address >= desc->buffer_bus + desc->used)
-			desc = list_entry(desc->list.next, struct descriptor_buffer, list);
-		d = desc->buffer + (address - desc->buffer_bus) / sizeof(*d);
-		last = find_branch_descriptor(d, z);
-
-		if (!ctx->callback(ctx, d, last))
-			break;
-
-		if (old_desc != desc) {
-			// If we've advanced to the next buffer, move the previous buffer to the
-			// free list.
-			old_desc->used = 0;
-			guard(spinlock_irqsave)(&ctx->ohci->lock);
-			list_move_tail(&old_desc->list, &ctx->buffer_list);
-		}
-		ctx->last = last;
-	}
-}
-
 /*
  * Allocate a new buffer and add it to the list of free buffers for this
  * context.  Must be called with ohci->lock held.
@@ -3169,7 +3128,6 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 	ret = context_init(&ctx->context, ohci, regs, callback);
 	if (ret < 0)
 		goto out_with_header;
-	fw_iso_context_init_work(&ctx->base, ohci_isoc_context_work);
 
 	if (type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
 		set_multichannel_mask(ohci, 0);
@@ -3624,7 +3582,8 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 	int ret = 0;
 
 	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		ohci_isoc_context_work(&base->work);
+		// Note that tasklet softIRQ is not used to process isochronous context anymore.
+		context_tasklet((unsigned long)&ctx->context);
 
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
