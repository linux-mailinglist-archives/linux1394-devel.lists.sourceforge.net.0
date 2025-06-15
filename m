Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8937ADA1EF
	for <lists+linux1394-devel@lfdr.de>; Sun, 15 Jun 2025 15:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F5pxZ1G4xBN54LH0q9lSJjbSu/kpK4KfS96Y5G6IJlQ=; b=LEXvLhAn5G65a1POCyk10+Lfc1
	tLrmLXmabSuQbwVNQUCfyDOCvNTMuBF/eR7EfAllku8YTb5zSXLK8z/pNM+YEsAuZZo2hyzBqvVBL
	dZRwB0nqZkI+QviBjofc+rZo11Wm7d+eEJQP1X9n7CV7qfpt2rdpn2NppRf/32kUZ7fo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uQnU2-0005WH-Ud;
	Sun, 15 Jun 2025 13:33:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uQnU2-0005W4-1B
 for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s0mnxanqQ2wO103H6uaQ4iaNpdz2HeEAgNvMawAzuog=; b=c4u+46GaMIkzbDoVxYvebDUXVb
 7Utlsr34yXu+/BGbaUnbKEvShcSwjwKOtqmARv0lhCCPDWQdUVhKv0s9zc2Rl3GZvdUh3++U63rWa
 hJ8qU/D6JmCyGfW7Rzoznqw8wdpJI22sty2SApesAqGCr59Ac8hO/8medLhy90paHruE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s0mnxanqQ2wO103H6uaQ4iaNpdz2HeEAgNvMawAzuog=; b=Mvi6cph8tRmB0uEObyl38Lv/pc
 KgK4m0tES3oKAKxJ6zSarLJUKzLhDJOMGZWQ82V/BHaKlLjOPwZYN6W1Dvxw9rg9PhZ0kXL+HCeVB
 E7FVqNvyHrpAt7/hrMoBwsZXVhUJpKj91Gd6ci8khg0s1llq2psZzRt3TFmDQqaJC+uA=;
Received: from fhigh-a8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uQnU0-0000Cb-7m for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:13 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id ADD2F11400CA;
 Sun, 15 Jun 2025 09:33:01 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Sun, 15 Jun 2025 09:33:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1749994381; x=
 1750080781; bh=s0mnxanqQ2wO103H6uaQ4iaNpdz2HeEAgNvMawAzuog=; b=T
 Yx+XqQDkNA1d0fNk+GET5cNRh8dcrgtANydQ8wI3JXsrP8IwOSEEIAQbJK7YKEpt
 HAZcwQRkArpaOCg8C4OLcfjeub5XqNgF+Q/DA/z9thlIo6PSFHvRnzp9JQfiqR/V
 YLceItY2fBNYtf97rB39NMVYWPxKZyXqPJRvyHt+S9RJL/rMiIVCeSRppfZD+B2V
 k5fE19zRp0TsICzyX8e2rpNJNM+ohL3EhzutCqjN2ObVmT0ITEc6zFMPDnX6zXNy
 mTzFgTBcBVcMTHUQ2HryKe9WFWa4H+x8vOJmSlADALrFzuGU+hcFhuNzsO5cHJJL
 op76J6QDchbl5aV1uxcLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1749994381; x=1750080781; bh=s
 0mnxanqQ2wO103H6uaQ4iaNpdz2HeEAgNvMawAzuog=; b=MiNymviJDC+UG8E7A
 ynk4F//JysZmGvIB7LjdKHBuPd+h6tJOBuyGhNBhju1XvRmJFbRCIB7oAMuM2oL7
 eqWy0i1QknLpxx7yMuDFyHhPVsJXReE1VHNtqgcf6ftMpvKB+nkZep/Wq+Fxt3QJ
 Q9Wu7rQYKm7vnHZhkTErF2PYOqdxWXxGsZw3K7mEiZdqHBqgX0WWxkfjDVH1Mq8X
 5/9oZBcDf8Em/it1VRT/Pukx5AVAEJokNnbrcjZvMPslf0JtJ9S2VNVidlR+J58V
 HWuvGF8evU/g+r6s+n7c0ne/kqe6nd5RwmYMX6J30PDARpOswpWnHrZAwfIy4D4V
 hTLkA==
X-ME-Sender: <xms:jctOaFVnuQ4gylQL8nSFIMI-Ivk2omRwIh2q68KPDDb1n9pAkm5ABQ>
 <xme:jctOaFl5GRjovdr_i8goz2NUmAC41AD35bHZGTL_YD1gs0jLmQyI2pWeMviuIuLoT
 QQVsschLAG1mTzJN68>
X-ME-Received: <xmr:jctOaBb5Sili3hVK4XxPl-NZtU_ts5LK5uJiTjZeIQB8vx-NUWaHn0gIjCAiONEbVhE2DyOySoS3NPOicFWdR8whcqRy_E3QKmgJ82H16wLVsQ>
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
X-ME-Proxy: <xmx:jctOaIU-4el0qGjo5ZZhVL--iyofDNNDRPBPZCc8Pk6bizMGM8nKcg>
 <xmx:jctOaPng8id6MYNKeJlWPiA4Qmw0raVSHJAVppSnDfIdRtMdkvoDLQ>
 <xmx:jctOaFcc_AxSDzLA6IiZqRjfuGU_b1acBcBOnCz0U5w7Y8vcjtpLqA>
 <xmx:jctOaJHMnw1-JRzl5OTYWl6DzlbMKaelCwVOP5AkKlzupam3qK9APA>
 <xmx:jctOaB3DiDRQMmTZDm60udxrQuNJYjpK8oiR5nl-oGiZSGn98SRB39ei>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 15 Jun 2025 09:33:00 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 2/3] firewire: ohci: use workqueue to handle events of AR
 request/response contexts
Date: Sun, 15 Jun 2025 22:32:52 +0900
Message-ID: <20250615133253.433057-3-o-takashi@sakamocchi.jp>
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
 Content preview:  This commit adds a work item to handle events of 1394 OHCI
 AR request/response contexts, and queues the item to the specific workqueue.
 The call of struct fw_address_handler.address_callback() is done [...] 
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
X-Headers-End: 1uQnU0-0000Cb-7m
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

This commit adds a work item to handle events of 1394 OHCI AR
request/response contexts, and queues the item to the specific workqueue.
The call of struct fw_address_handler.address_callback() is done in the
workqueue when receiving any requests from the remove nodes. Additionally,
the call of struct fw_packet.callback() is done in the workqueue too when
receiving acknowledge to the asynchronous packet for the response
subaction of split transaction to the remote nodes.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |  7 ++++---
 drivers/firewire/ohci.c             | 27 +++++++++++----------------
 2 files changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 2bd5deb9054e..d28477d84697 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -557,9 +557,10 @@ const struct fw_address_region fw_unit_space_region =
  *
  * region->start, ->end, and handler->length have to be quadlet-aligned.
  *
- * When a request is received that falls within the specified address range,
- * the specified callback is invoked.  The parameters passed to the callback
- * give the details of the particular request.
+ * When a request is received that falls within the specified address range, the specified callback
+ * is invoked.  The parameters passed to the callback give the details of the particular request.
+ * The callback is invoked in the workqueue context in most cases. However, if the request is
+ * initiated by the local node, the callback is invoked in the initiator's context.
  *
  * To be called in process context.
  * Return value:  0 on success, non-zero otherwise.
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 40313a3ec63e..68317b5a64a7 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -101,7 +101,7 @@ struct ar_context {
 	void *pointer;
 	unsigned int last_buffer_index;
 	u32 regs;
-	struct tasklet_struct tasklet;
+	struct work_struct work;
 };
 
 struct context;
@@ -1016,9 +1016,9 @@ static void ar_recycle_buffers(struct ar_context *ctx, unsigned int end_buffer)
 	}
 }
 
-static void ar_context_tasklet(unsigned long data)
+static void ohci_ar_context_work(struct work_struct *work)
 {
-	struct ar_context *ctx = (struct ar_context *)data;
+	struct ar_context *ctx = from_work(ctx, work, work);
 	unsigned int end_buffer_index, end_buffer_offset;
 	void *p, *end;
 
@@ -1026,23 +1026,19 @@ static void ar_context_tasklet(unsigned long data)
 	if (!p)
 		return;
 
-	end_buffer_index = ar_search_last_active_buffer(ctx,
-							&end_buffer_offset);
+	end_buffer_index = ar_search_last_active_buffer(ctx, &end_buffer_offset);
 	ar_sync_buffers_for_cpu(ctx, end_buffer_index, end_buffer_offset);
 	end = ctx->buffer + end_buffer_index * PAGE_SIZE + end_buffer_offset;
 
 	if (end_buffer_index < ar_first_buffer_index(ctx)) {
-		/*
-		 * The filled part of the overall buffer wraps around; handle
-		 * all packets up to the buffer end here.  If the last packet
-		 * wraps around, its tail will be visible after the buffer end
-		 * because the buffer start pages are mapped there again.
-		 */
+		// The filled part of the overall buffer wraps around; handle all packets up to the
+		// buffer end here.  If the last packet wraps around, its tail will be visible after
+		// the buffer end because the buffer start pages are mapped there again.
 		void *buffer_end = ctx->buffer + AR_BUFFERS * PAGE_SIZE;
 		p = handle_ar_packets(ctx, p, buffer_end);
 		if (p < buffer_end)
 			goto error;
-		/* adjust p to point back into the actual buffer */
+		// adjust p to point back into the actual buffer
 		p -= AR_BUFFERS * PAGE_SIZE;
 	}
 
@@ -1057,7 +1053,6 @@ static void ar_context_tasklet(unsigned long data)
 	ar_recycle_buffers(ctx, end_buffer_index);
 
 	return;
-
 error:
 	ctx->pointer = NULL;
 }
@@ -1073,7 +1068,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 
 	ctx->regs        = regs;
 	ctx->ohci        = ohci;
-	tasklet_init(&ctx->tasklet, ar_context_tasklet, (unsigned long)ctx);
+	INIT_WORK(&ctx->work, ohci_ar_context_work);
 
 	for (i = 0; i < AR_BUFFERS; i++) {
 		ctx->pages[i] = dma_alloc_pages(dev, PAGE_SIZE, &dma_addr,
@@ -2238,10 +2233,10 @@ static irqreturn_t irq_handler(int irq, void *data)
 	}
 
 	if (event & OHCI1394_RQPkt)
-		tasklet_schedule(&ohci->ar_request_ctx.tasklet);
+		queue_work(ohci->card.async_wq, &ohci->ar_request_ctx.work);
 
 	if (event & OHCI1394_RSPkt)
-		tasklet_schedule(&ohci->ar_response_ctx.tasklet);
+		queue_work(ohci->card.async_wq, &ohci->ar_response_ctx.work);
 
 	if (event & OHCI1394_reqTxComplete)
 		tasklet_schedule(&ohci->at_request_ctx.tasklet);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
