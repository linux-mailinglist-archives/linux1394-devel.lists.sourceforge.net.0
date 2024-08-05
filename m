Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCC89477A7
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUK-00071D-8Y;
	Mon, 05 Aug 2024 08:54:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUH-00070n-Ji
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kdsG2PJz0GJocG9ZLnehQX7pZUw+tAe5s31sau+KXtk=; b=CfQrbbKg4M2JL4YFmcSRwsxN1Z
 GCCpdVD7NLV2YmUgK+0TgA8GYbvunYxa+cR9FGMRxM3wmyNnrF2Xr8FpDdPC9kYH9zguT5thlQ5An
 xWN1+zT8bzYPWciK5aogsEuhJRTeflM8U1tjMTIdCEA2Ywk6A45Rmg4oqhqQpqEi4DDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kdsG2PJz0GJocG9ZLnehQX7pZUw+tAe5s31sau+KXtk=; b=KMDWHcaiE0BuFd/WvcxVKkOA1r
 /SelFC38wAYPI9MgobofaVr8RyBYeYKC/Ap/QAEENhAax6zMyqUF1nI6Y/hnW33F0PdN15lWHo92k
 98WwTkhiR04fLJzplABSaq0e/7Hzskwu1AZGHVWaw6EcBJr+tOXKuNxxTmxRIDFimB4o=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUG-0002tC-B2 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:41 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id C01D5138FDBC;
 Mon,  5 Aug 2024 04:54:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 05 Aug 2024 04:54:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848074; x=
 1722934474; bh=kdsG2PJz0GJocG9ZLnehQX7pZUw+tAe5s31sau+KXtk=; b=R
 gVEt70rTfS1JwNrhu5vYJEx+jHTnuzPXV8NZNG0z8dC1D0se7MN/u+SJ5PNbx1UD
 e1pTdSLchBbetska/vHtAu5K3VPwOqOAhRrSimrtyRXlm8co0/GG81EgMzAhsqyx
 LdGjFfnjpfwgEUhn/d6I+FOI7y9A+AJggL05NeNZRrVNFTOSPEiio/4+0wy1+Jk4
 kKZLGfs+r0zwAYV6krnKa6Q+BnHw1bgHkMI+kA6klaf5pxehoHe76JwQZdu7ogSd
 ZZeH7YTJN4HM1Y4lJkaucdSiXdUmGzYT73kKq+WAS7TmNybwD0DC+HaRAn8vf+/k
 UhgFc/qF5PPhlz3kfpWaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848074; x=
 1722934474; bh=kdsG2PJz0GJocG9ZLnehQX7pZUw+tAe5s31sau+KXtk=; b=u
 AXVTM86HIotktWfkHbSJ3ErlRO6Mt2xXP/rYheQdXSnZDWQ/VTMWnhzd+lgZaC8o
 fqI7xBFlSFKM303D/m5Ws5S61AIuxLNwdt6UrrQasVga2pBUDnE+DL6YuNh62YFs
 6zeReIOHKn2k9P7XTtx5zv42dLGAaVVGaEUD3S8wnvi3bRT17owIC/EsspNdpiXK
 rdEKRM4mALE3f7VDdewc8mQyfML3llUMgCvHJ+eAMdowOWUdftrC6DbCPxA23j/b
 aSiviUS6jbtfV4FsLzslm5f0kia2IbXuz+uy/fHZx+aXGz9I9ls/ryOZ0ShklvtK
 EBzOsDhFmyAxDQaiy7wOQ==
X-ME-Sender: <xms:SpOwZjohnsn1C0YKLGb7FgMoaDbvLulEwNJFyXICRJBTbUi6PV9qmw>
 <xme:SpOwZtpdnB8QS4nrowr7H9tmjEUBhT8hS1YMihPjz4kBkw0ZlSYj2zZTXn2QUt24H
 ghMl03ttlFDYUNWsgY>
X-ME-Received: <xmr:SpOwZgMqPnp3NPFlVI9861G9PFrm-jtjwlmFxASxNuiyoN6I50PKBMnVPOZSFIMyvfI83zT-spvOZI0cer4SDch_Tri5a-IEQOD4juwIcWI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:SpOwZm4B3n_tu-UiJoJtGENYiGsGLwI-8NhMDiLjsDbK9GnxISB6WA>
 <xmx:SpOwZi40e9gf5wU6LrRutM50rf1KYZjXuLfXoQgnfPO1RYSRlXWAzA>
 <xmx:SpOwZugnpVytPvlUYOKvtnALyykiXCT45bsWEcrHXQakKtddc7AxUg>
 <xmx:SpOwZk7_qUA38y741B27iSMW4GN-zsQewMUA0JEiczcsfdIstMKxKw>
 <xmx:SpOwZiFZu0ZbUmxk6H8s6RfK4_omwYfKENccVuvVxYjX6nVfKbIXRRFS>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:33 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 17/17] firewire: ohci: use guard macro to serialize
 operations for isochronous contexts
Date: Mon,  5 Aug 2024 17:54:08 +0900
Message-ID: <20240805085408.251763-18-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The 1394 OHCI driver uses spinlock to serialize operations
 for isochronous contexts. This commit uses guard macro to maintain the
 spinlock.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c
 | 182 +++++++++++++++++ 1 file changed, 77 insertions(+), 105 deletions(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1satUG-0002tC-B2
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

The 1394 OHCI driver uses spinlock to serialize operations for
isochronous contexts.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 182 +++++++++++++++++-----------------------
 1 file changed, 77 insertions(+), 105 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 368420e4b414..e1d24e0ec991 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1173,13 +1173,11 @@ static void context_tasklet(unsigned long data)
 			break;
 
 		if (old_desc != desc) {
-			/* If we've advanced to the next buffer, move the
-			 * previous buffer to the free list. */
-			unsigned long flags;
+			// If we've advanced to the next buffer, move the previous buffer to the
+			// free list.
 			old_desc->used = 0;
-			spin_lock_irqsave(&ctx->ohci->lock, flags);
+			guard(spinlock_irqsave)(&ctx->ohci->lock);
 			list_move_tail(&old_desc->list, &ctx->buffer_list);
-			spin_unlock_irqrestore(&ctx->ohci->lock, flags);
 		}
 		ctx->last = last;
 	}
@@ -2122,14 +2120,12 @@ static void bus_reset_work(struct work_struct *work)
 		return;
 	}
 
-	/* FIXME: Document how the locking works. */
-	spin_lock_irq(&ohci->lock);
-
-	ohci->generation = -1; /* prevent AT packet queueing */
-	context_stop(&ohci->at_request_ctx);
-	context_stop(&ohci->at_response_ctx);
-
-	spin_unlock_irq(&ohci->lock);
+	// FIXME: Document how the locking works.
+	scoped_guard(spinlock_irq, &ohci->lock) {
+		ohci->generation = -1; // prevent AT packet queueing
+		context_stop(&ohci->at_request_ctx);
+		context_stop(&ohci->at_response_ctx);
+	}
 
 	/*
 	 * Per OHCI 1.2 draft, clause 7.2.3.3, hardware may leave unsent
@@ -2704,7 +2700,6 @@ static int ohci_enable_phys_dma(struct fw_card *card,
 				int node_id, int generation)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	unsigned long flags;
 	int n, ret = 0;
 
 	if (param_remote_dma)
@@ -2715,12 +2710,10 @@ static int ohci_enable_phys_dma(struct fw_card *card,
 	 * interrupt bit.  Clear physReqResourceAllBuses on bus reset.
 	 */
 
-	spin_lock_irqsave(&ohci->lock, flags);
+	guard(spinlock_irqsave)(&ohci->lock);
 
-	if (ohci->generation != generation) {
-		ret = -ESTALE;
-		goto out;
-	}
+	if (ohci->generation != generation)
+		return -ESTALE;
 
 	/*
 	 * Note, if the node ID contains a non-local bus ID, physical DMA is
@@ -2734,8 +2727,6 @@ static int ohci_enable_phys_dma(struct fw_card *card,
 		reg_write(ohci, OHCI1394_PhyReqFilterHiSet, 1 << (n - 32));
 
 	flush_writes(ohci);
- out:
-	spin_unlock_irqrestore(&ohci->lock, flags);
 
 	return ret;
 }
@@ -3076,55 +3067,53 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 	u32 *mask, regs;
 	int index, ret = -EBUSY;
 
-	spin_lock_irq(&ohci->lock);
+	scoped_guard(spinlock_irq, &ohci->lock) {
+		switch (type) {
+		case FW_ISO_CONTEXT_TRANSMIT:
+			mask     = &ohci->it_context_mask;
+			callback = handle_it_packet;
+			index    = ffs(*mask) - 1;
+			if (index >= 0) {
+				*mask &= ~(1 << index);
+				regs = OHCI1394_IsoXmitContextBase(index);
+				ctx  = &ohci->it_context_list[index];
+			}
+			break;
 
-	switch (type) {
-	case FW_ISO_CONTEXT_TRANSMIT:
-		mask     = &ohci->it_context_mask;
-		callback = handle_it_packet;
-		index    = ffs(*mask) - 1;
-		if (index >= 0) {
-			*mask &= ~(1 << index);
-			regs = OHCI1394_IsoXmitContextBase(index);
-			ctx  = &ohci->it_context_list[index];
-		}
-		break;
+		case FW_ISO_CONTEXT_RECEIVE:
+			channels = &ohci->ir_context_channels;
+			mask     = &ohci->ir_context_mask;
+			callback = handle_ir_packet_per_buffer;
+			index    = *channels & 1ULL << channel ? ffs(*mask) - 1 : -1;
+			if (index >= 0) {
+				*channels &= ~(1ULL << channel);
+				*mask     &= ~(1 << index);
+				regs = OHCI1394_IsoRcvContextBase(index);
+				ctx  = &ohci->ir_context_list[index];
+			}
+			break;
 
-	case FW_ISO_CONTEXT_RECEIVE:
-		channels = &ohci->ir_context_channels;
-		mask     = &ohci->ir_context_mask;
-		callback = handle_ir_packet_per_buffer;
-		index    = *channels & 1ULL << channel ? ffs(*mask) - 1 : -1;
-		if (index >= 0) {
-			*channels &= ~(1ULL << channel);
-			*mask     &= ~(1 << index);
-			regs = OHCI1394_IsoRcvContextBase(index);
-			ctx  = &ohci->ir_context_list[index];
-		}
-		break;
+		case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
+			mask     = &ohci->ir_context_mask;
+			callback = handle_ir_buffer_fill;
+			index    = !ohci->mc_allocated ? ffs(*mask) - 1 : -1;
+			if (index >= 0) {
+				ohci->mc_allocated = true;
+				*mask &= ~(1 << index);
+				regs = OHCI1394_IsoRcvContextBase(index);
+				ctx  = &ohci->ir_context_list[index];
+			}
+			break;
 
-	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		mask     = &ohci->ir_context_mask;
-		callback = handle_ir_buffer_fill;
-		index    = !ohci->mc_allocated ? ffs(*mask) - 1 : -1;
-		if (index >= 0) {
-			ohci->mc_allocated = true;
-			*mask &= ~(1 << index);
-			regs = OHCI1394_IsoRcvContextBase(index);
-			ctx  = &ohci->ir_context_list[index];
+		default:
+			index = -1;
+			ret = -ENOSYS;
 		}
-		break;
 
-	default:
-		index = -1;
-		ret = -ENOSYS;
+		if (index < 0)
+			return ERR_PTR(ret);
 	}
 
-	spin_unlock_irq(&ohci->lock);
-
-	if (index < 0)
-		return ERR_PTR(ret);
-
 	memset(ctx, 0, sizeof(*ctx));
 	ctx->header_length = 0;
 	ctx->header = (void *) __get_free_page(GFP_KERNEL);
@@ -3146,20 +3135,18 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
  out_with_header:
 	free_page((unsigned long)ctx->header);
  out:
-	spin_lock_irq(&ohci->lock);
-
-	switch (type) {
-	case FW_ISO_CONTEXT_RECEIVE:
-		*channels |= 1ULL << channel;
-		break;
+	scoped_guard(spinlock_irq, &ohci->lock) {
+		switch (type) {
+		case FW_ISO_CONTEXT_RECEIVE:
+			*channels |= 1ULL << channel;
+			break;
 
-	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		ohci->mc_allocated = false;
-		break;
+		case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
+			ohci->mc_allocated = false;
+			break;
+		}
+		*mask |= 1 << index;
 	}
-	*mask |= 1 << index;
-
-	spin_unlock_irq(&ohci->lock);
 
 	return ERR_PTR(ret);
 }
@@ -3243,14 +3230,13 @@ static void ohci_free_iso_context(struct fw_iso_context *base)
 {
 	struct fw_ohci *ohci = fw_ohci(base->card);
 	struct iso_context *ctx = container_of(base, struct iso_context, base);
-	unsigned long flags;
 	int index;
 
 	ohci_stop_iso(base);
 	context_release(&ctx->context);
 	free_page((unsigned long)ctx->header);
 
-	spin_lock_irqsave(&ohci->lock, flags);
+	guard(spinlock_irqsave)(&ohci->lock);
 
 	switch (base->type) {
 	case FW_ISO_CONTEXT_TRANSMIT:
@@ -3272,38 +3258,29 @@ static void ohci_free_iso_context(struct fw_iso_context *base)
 		ohci->mc_allocated = false;
 		break;
 	}
-
-	spin_unlock_irqrestore(&ohci->lock, flags);
 }
 
 static int ohci_set_iso_channels(struct fw_iso_context *base, u64 *channels)
 {
 	struct fw_ohci *ohci = fw_ohci(base->card);
-	unsigned long flags;
-	int ret;
 
 	switch (base->type) {
 	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
+	{
+		guard(spinlock_irqsave)(&ohci->lock);
 
-		spin_lock_irqsave(&ohci->lock, flags);
-
-		/* Don't allow multichannel to grab other contexts' channels. */
+		// Don't allow multichannel to grab other contexts' channels.
 		if (~ohci->ir_context_channels & ~ohci->mc_channels & *channels) {
 			*channels = ohci->ir_context_channels;
-			ret = -EBUSY;
+			return -EBUSY;
 		} else {
 			set_multichannel_mask(ohci, *channels);
-			ret = 0;
+			return 0;
 		}
-
-		spin_unlock_irqrestore(&ohci->lock, flags);
-
-		break;
+	}
 	default:
-		ret = -EINVAL;
+		return -EINVAL;
 	}
-
-	return ret;
 }
 
 #ifdef CONFIG_PM
@@ -3573,24 +3550,19 @@ static int ohci_queue_iso(struct fw_iso_context *base,
 			  unsigned long payload)
 {
 	struct iso_context *ctx = container_of(base, struct iso_context, base);
-	unsigned long flags;
-	int ret = -ENOSYS;
 
-	spin_lock_irqsave(&ctx->context.ohci->lock, flags);
+	guard(spinlock_irqsave)(&ctx->context.ohci->lock);
+
 	switch (base->type) {
 	case FW_ISO_CONTEXT_TRANSMIT:
-		ret = queue_iso_transmit(ctx, packet, buffer, payload);
-		break;
+		return queue_iso_transmit(ctx, packet, buffer, payload);
 	case FW_ISO_CONTEXT_RECEIVE:
-		ret = queue_iso_packet_per_buffer(ctx, packet, buffer, payload);
-		break;
+		return queue_iso_packet_per_buffer(ctx, packet, buffer, payload);
 	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		ret = queue_iso_buffer_fill(ctx, packet, buffer, payload);
-		break;
+		return queue_iso_buffer_fill(ctx, packet, buffer, payload);
+	default:
+		return -ENOSYS;
 	}
-	spin_unlock_irqrestore(&ctx->context.ohci->lock, flags);
-
-	return ret;
 }
 
 static void ohci_flush_queue_iso(struct fw_iso_context *base)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
