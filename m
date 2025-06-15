Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B31FBADA1F3
	for <lists+linux1394-devel@lfdr.de>; Sun, 15 Jun 2025 15:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mXkGm+rHEOCVBMjgld1FUKDg+XSXJb48FJTRFyqxp7M=; b=ZPOjyPgDekOw5lMrRVjqxDrxdU
	s1Y2cgADms3rqp64RIfZ2jWxkdYgSMAvOTbayc2FxaJnwyvJCI6s6QKEL9a3R6ouakGP8iuxx9brl
	QggnbJcdoctti0imWTiFKmFY3GbBfVgh9cWDifJm/c/JaNY3gQU1sNvoAsoKgOAiDSc4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uQnU3-0002et-KE;
	Sun, 15 Jun 2025 13:33:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uQnU2-0002el-Hh
 for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4qud8jmEtOTX4kDeERAsVvKE8Z1CqqTiqHJxRoQRN8g=; b=F0UWwnWfRTBPX17XtLU4pt+yJ3
 V7OkyGLhSIsFlXoKswY1Ioh/Wp+S1neA+F6RWB5cTRK8DCFSiwjzvkeZUAKn9Hu/2K87IvtgcNmwA
 uoYXJ6zrF20mdAHIflzzqtTS9bknjKyzcaaT73tXdJVCaj8JEPwI3P0Fb34oPm5fWOco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4qud8jmEtOTX4kDeERAsVvKE8Z1CqqTiqHJxRoQRN8g=; b=KkSU7FeiUnmtUKS5UJ1ARHGrq4
 pW/D3CG5/V76z0jMF0WalD91sVdVuViX8lQX994nTRaAtRtbJjJGluOlCM2tE8ZIeORVdBZF0y7ai
 5al5hwjkS3IB7Y3KU/txcxBQB9crkX9Y4cIJMaMyKcaE1JgKssYhrcihZ0c6AQVDHuF8=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uQnU1-0000Ci-Pd for linux1394-devel@lists.sourceforge.net;
 Sun, 15 Jun 2025 13:33:14 +0000
Received: from phl-compute-10.internal (phl-compute-10.phl.internal
 [10.202.2.50])
 by mailfout.phl.internal (Postfix) with ESMTP id 22CF71380188;
 Sun, 15 Jun 2025 09:33:03 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-10.internal (MEProxy); Sun, 15 Jun 2025 09:33:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1749994383; x=
 1750080783; bh=4qud8jmEtOTX4kDeERAsVvKE8Z1CqqTiqHJxRoQRN8g=; b=L
 wYjpCfNrD0Vj1z4oAOV7W3WXX++DdedSKobnwg5neVwSBnbSFi5+hm/ZMCMDM32s
 7bWeN6+g6XPOYo3DxUVi4BOYY8+RBczQ3wI7TVMwO7MOm+MgVUx2lpTBhjpZQERR
 Lwl1qZZ54Y1baV/w5/vhQlPQ7x0ySGxzR42m1mWqE6/x0aunA3gWO9ublBKdTRPK
 floAcZJbZzdN2DYxRci+QcnRAu5ZayHNd7wduXaQtkWdU0PXptJSfQDGuh6/A+do
 qQwmYyXvLKrCy27M//i4S0feP9ayoYc8noDieBoTJxIjiVh/md1Z56jFHDUfnwIY
 0y9eqV29PYvv+sUP3r+8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1749994383; x=1750080783; bh=4
 qud8jmEtOTX4kDeERAsVvKE8Z1CqqTiqHJxRoQRN8g=; b=NYQwR4ucAf3dy6Sp/
 4axpxcONa/chYTbesaPsdp7QUyaroiBEztUEPqYfe87vBaMf2EPEzMYS73A5GmMC
 7VGZ/mOU/tR7IiDC6InVH3+DwuTAgMTxjiz/fuXlmWt/YY/mG1ywcl/pjfWPqYhh
 sxvQ3EhW+EEH/ZE2ajoww7C4TFMsPQW02KFdY15UyEc5MLMQI1P7wb+ia8MXp9G4
 swZgmE7IOlAP/xs8St+6Ff4MVPoOlsvfz1Ut4CICAffj6Y8Xsckrfsj5o4mBliKb
 FOS9HSkI6y0wv6puc1T00duCGIswcofs/1dpzdsdm+L+l3GTQSiDehQhGpyO1HAq
 VF+5A==
X-ME-Sender: <xms:jstOaKnvTvOq7S7wH1ucO4Uoq_j4lesXBGRR4o5FPl7atHtx1LE9IA>
 <xme:jstOaB39r0nyVN-7oQiAVOG-t_IjPanSmTrEFcOzHOKnrlFyaxF2Lm_Tuz2KkmuiV
 uK0LWC1sFpO-RO9FY4>
X-ME-Received: <xmr:jstOaIorc_GxEPoRtVJUctQ34naMb1QWFN3T9Jxb3HS4VUESpZiq1ajQqFUIBT20cQZtmg004CBIrJc68ebD2IlKmPC5lm0K9LL3tbmcCiIjHA>
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
X-ME-Proxy: <xmx:jstOaOnxQltxB6aqwKEyxcWOUkaS9Jqk-kBAB9LTEGZSs-VRcPsMkg>
 <xmx:jstOaI0a6E0__Jv1wFwSH_lzfiRUBqO3KB3_t8Bk8o5XHjZTjWjrsA>
 <xmx:jstOaFuYkPSzXLauVV075UKDHy4qIsKhgyeO0Et97Ry6JQie5tq8cg>
 <xmx:jstOaEUy9NpG8KJWZlrskkl7t3ZJ0LkxgybjwRy5mxBlfotzGx4IIQ>
 <xmx:j8tOaBF1nhFrIav4CcIdT2fdfCbDwFUZIbGXKMuRjC_Uffog15O7vk7I>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 15 Jun 2025 09:33:01 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 3/3] firewire: ohci: use workqueue to handle events of AT
 request/response contexts
Date: Sun, 15 Jun 2025 22:32:53 +0900
Message-ID: <20250615133253.433057-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250615133253.433057-1-o-takashi@sakamocchi.jp>
References: <20250615133253.433057-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit adds a work item to handle events of 1394 OHCI
 AT request/response contexts, and queues the item to the specific workqueue.
 The call of struct fw_packet.callbaqck() is done in the workqueu [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uQnU1-0000Ci-Pd
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

This commit adds a work item to handle events of 1394 OHCI AT
request/response contexts, and queues the item to the specific
workqueue. The call of struct fw_packet.callbaqck() is done in the
workqueue when receiving acknowledgement to the asynchronous packet
transferred to remote node.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/net.c   |  4 ++--
 drivers/firewire/ohci.c  | 40 ++++++++++++++++++++++++----------------
 include/linux/firewire.h | 11 +++++++++--
 3 files changed, 35 insertions(+), 20 deletions(-)

diff --git a/drivers/firewire/net.c b/drivers/firewire/net.c
index 1bf0e15c1540..6d6446713539 100644
--- a/drivers/firewire/net.c
+++ b/drivers/firewire/net.c
@@ -1007,7 +1007,7 @@ static int fwnet_send_packet(struct fwnet_packet_task *ptask)
 
 		spin_lock_irqsave(&dev->lock, flags);
 
-		/* If the AT tasklet already ran, we may be last user. */
+		/* If the AT work item already ran, we may be last user. */
 		free = (ptask->outstanding_pkts == 0 && !ptask->enqueued);
 		if (!free)
 			ptask->enqueued = true;
@@ -1026,7 +1026,7 @@ static int fwnet_send_packet(struct fwnet_packet_task *ptask)
 
 	spin_lock_irqsave(&dev->lock, flags);
 
-	/* If the AT tasklet already ran, we may be last user. */
+	/* If the AT work item already ran, we may be last user. */
 	free = (ptask->outstanding_pkts == 0 && !ptask->enqueued);
 	if (!free)
 		ptask->enqueued = true;
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 68317b5a64a7..709a714fd5c8 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -158,7 +158,7 @@ struct context {
 
 	descriptor_callback_t callback;
 
-	struct tasklet_struct tasklet;
+	struct work_struct work;
 };
 
 struct iso_context {
@@ -1176,9 +1176,9 @@ static void context_retire_descriptors(struct context *ctx)
 	}
 }
 
-static void context_tasklet(unsigned long data)
+static void ohci_at_context_work(struct work_struct *work)
 {
-	struct context *ctx = (struct context *) data;
+	struct context *ctx = from_work(ctx, work, work);
 
 	context_retire_descriptors(ctx);
 }
@@ -1243,7 +1243,6 @@ static int context_init(struct context *ctx, struct fw_ohci *ohci,
 	ctx->buffer_tail = list_entry(ctx->buffer_list.next,
 			struct descriptor_buffer, list);
 
-	tasklet_init(&ctx->tasklet, context_tasklet, (unsigned long)ctx);
 	ctx->callback = callback;
 
 	/*
@@ -1524,13 +1523,17 @@ static int at_context_queue_packet(struct context *ctx,
 
 static void at_context_flush(struct context *ctx)
 {
-	tasklet_disable(&ctx->tasklet);
+	// Avoid dead lock due to programming mistake.
+	if (WARN_ON_ONCE(current_work() == &ctx->work))
+		return;
 
-	ctx->flushing = true;
-	context_tasklet((unsigned long)ctx);
-	ctx->flushing = false;
+	disable_work_sync(&ctx->work);
 
-	tasklet_enable(&ctx->tasklet);
+	WRITE_ONCE(ctx->flushing, true);
+	ohci_at_context_work(&ctx->work);
+	WRITE_ONCE(ctx->flushing, false);
+
+	enable_work(&ctx->work);
 }
 
 static int handle_at_packet(struct context *context,
@@ -1542,7 +1545,7 @@ static int handle_at_packet(struct context *context,
 	struct fw_ohci *ohci = context->ohci;
 	int evt;
 
-	if (last->transfer_status == 0 && !context->flushing)
+	if (last->transfer_status == 0 && !READ_ONCE(context->flushing))
 		/* This descriptor isn't done yet, stop iteration. */
 		return 0;
 
@@ -1576,7 +1579,7 @@ static int handle_at_packet(struct context *context,
 		break;
 
 	case OHCI1394_evt_missing_ack:
-		if (context->flushing)
+		if (READ_ONCE(context->flushing))
 			packet->ack = RCODE_GENERATION;
 		else {
 			/*
@@ -1598,7 +1601,7 @@ static int handle_at_packet(struct context *context,
 		break;
 
 	case OHCI1394_evt_no_status:
-		if (context->flushing) {
+		if (READ_ONCE(context->flushing)) {
 			packet->ack = RCODE_GENERATION;
 			break;
 		}
@@ -2239,10 +2242,10 @@ static irqreturn_t irq_handler(int irq, void *data)
 		queue_work(ohci->card.async_wq, &ohci->ar_response_ctx.work);
 
 	if (event & OHCI1394_reqTxComplete)
-		tasklet_schedule(&ohci->at_request_ctx.tasklet);
+		queue_work(ohci->card.async_wq, &ohci->at_request_ctx.work);
 
 	if (event & OHCI1394_respTxComplete)
-		tasklet_schedule(&ohci->at_response_ctx.tasklet);
+		queue_work(ohci->card.async_wq, &ohci->at_response_ctx.work);
 
 	if (event & OHCI1394_isochRx) {
 		iso_event = reg_read(ohci, OHCI1394_IsoRecvIntEventClear);
@@ -2684,7 +2687,10 @@ static int ohci_cancel_packet(struct fw_card *card, struct fw_packet *packet)
 	struct driver_data *driver_data = packet->driver_data;
 	int ret = -ENOENT;
 
-	tasklet_disable_in_atomic(&ctx->tasklet);
+	// Avoid dead lock due to programming mistake.
+	if (WARN_ON_ONCE(current_work() == &ctx->work))
+		return 0;
+	disable_work_sync(&ctx->work);
 
 	if (packet->ack != 0)
 		goto out;
@@ -2703,7 +2709,7 @@ static int ohci_cancel_packet(struct fw_card *card, struct fw_packet *packet)
 	packet->callback(packet, &ohci->card, packet->ack);
 	ret = 0;
  out:
-	tasklet_enable(&ctx->tasklet);
+	enable_work(&ctx->work);
 
 	return ret;
 }
@@ -3765,11 +3771,13 @@ static int pci_probe(struct pci_dev *dev,
 			   OHCI1394_AsReqTrContextControlSet, handle_at_packet);
 	if (err < 0)
 		return err;
+	INIT_WORK(&ohci->at_request_ctx.work, ohci_at_context_work);
 
 	err = context_init(&ohci->at_response_ctx, ohci,
 			   OHCI1394_AsRspTrContextControlSet, handle_at_packet);
 	if (err < 0)
 		return err;
+	INIT_WORK(&ohci->at_response_ctx.work, ohci_at_context_work);
 
 	reg_write(ohci, OHCI1394_IsoRecvIntMaskSet, ~0);
 	ohci->ir_context_channels = ~0ULL;
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index c55b8e30e700..cceb70415ed2 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -308,8 +308,7 @@ struct fw_packet {
 	 * For successful transmission, the status code is the ack received
 	 * from the destination.  Otherwise it is one of the juju-specific
 	 * rcodes:  RCODE_SEND_ERROR, _CANCELLED, _BUSY, _GENERATION, _NO_ACK.
-	 * The callback can be called from tasklet context and thus
-	 * must never block.
+	 * The callback can be called from workqueue and thus must never block.
 	 */
 	fw_packet_callback_t callback;
 	int ack;
@@ -382,6 +381,10 @@ void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode
  *
  * A variation of __fw_send_request() to generate callback for response subaction without time
  * stamp.
+ *
+ * The callback is invoked in the workqueue context in most cases. However, if an error is detected
+ * before queueing or the destination address refers to the local node, it is invoked in the
+ * current context instead.
  */
 static inline void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
 				   int destination_id, int generation, int speed,
@@ -411,6 +414,10 @@ static inline void fw_send_request(struct fw_card *card, struct fw_transaction *
  * @callback_data:	data to be passed to the transaction completion callback
  *
  * A variation of __fw_send_request() to generate callback for response subaction with time stamp.
+ *
+ * The callback is invoked in the workqueue context in most cases. However, if an error is detected
+ * before queueing or the destination address refers to the local node, it is invoked in the current
+ * context instead.
  */
 static inline void fw_send_request_with_tstamp(struct fw_card *card, struct fw_transaction *t,
 	int tcode, int destination_id, int generation, int speed, unsigned long long offset,
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
