Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22688967601
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:07:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiQB-0001QF-Uz;
	Sun, 01 Sep 2024 11:07:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiQ9-0001Py-M4
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H3FG4jYj1xMGNWjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=Co6jSc19Y2wogoUpVdWaNIFkfM
 xLE1BClY45VB31cNQS5pqb5e37PJRjS5FLOSs903UwIEVYtA7cti/xdpp5fusxG9LnqD6WFeutxz1
 xruBqAfwCtANglzBM7HME3DJK1ZWrp+n8fO6Z5u4IVwrswhe1ysbEjfjfAWBOT4OggaU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H3FG4jYj1xMGNWjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=PbQ4/2JtSe7d9bGXR9tG2M2poK
 U94KIzEyDqgPGQLtPQkc5kGyEYXn4/uDiyQYSESTXxQumCui6t36FVAbIsF5zUINNapIv09pEchrE
 RAE5IiUVXCRPA4qYKrUapoGUAhN1svJlFBs/5MHZAGKnIhQkdLieHXYIfKX51GOPn+kY=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiQ8-0006KT-EX for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:07:01 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id DA81D1140299;
 Sun,  1 Sep 2024 07:06:54 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Sun, 01 Sep 2024 07:06:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725188814; x=
 1725275214; bh=H3FG4jYj1xMGNWjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=a
 MFxa78LYkGv+DpRRncJyoOQaTvdgMGyNAERDLpVezSjwkWrq3Gq+Vy5GbU/ts18m
 iFJMeamaTZoTgsoh4vyxaBoV8Cr4VVxqkzEYzoGPOF+8QHYWyxZNr8yXUjh6Nts5
 TY7hRSBEbLDzdUaVxtZu7Iz+1MSmcEIwi7z7NrxfuDdKZsFHV5eDrH1nwORYE9Wg
 6bQkFhMs1hQkIXFv7VM3TTKSs5CVPa28suVL4H/ZGHvrH9AHhPXck/mlRV/bCi9h
 SDx/o+wZeZJ+rXDnS6i8K534EpJKREUzNGJLlH8SX7nJDjzBkwJynA/8z7O4qu94
 kobd0j6esKqD/sPwMeZ7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725188814; x=
 1725275214; bh=H3FG4jYj1xMGNWjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=p
 /GyF/1H41Hxm9wqfxXdcLKMgrag7KmFk93CkihFREl+KiSVxR0RECTYvHjWQgpkK
 Tc69TClrQt/dR12ico5FPVV9ye0pgSdBPnY3E+vkgfwbV+1Qx3cJkyhPpt5MSc7J
 HIfuXCXHfNeMv65T9YZ/qDVnV5jXhXKIIZoZrEtEzoCIkXCEEpjqxnn8I/sUpOZC
 ucQh1tZCjE3vaLaeGu3nCKA2VcDy1nnouFfBhoD/gZzfZJNDsKmmiyscNOQeyERo
 8iia11EmjTj3eEXIsS1HXf95E5MRC6nu7znhGYTdy/LuFaMpHv+QeH+Xf3b7AJiW
 Tl+ZdBmnovhD4PcSgAQSw==
X-ME-Sender: <xms:zkrUZvfEH4ZS5F8BMs7-30K9EOZVAwbuN5c9dRf6hxsuM0jl0IAt8w>
 <xme:zkrUZlPjJrRbJc76Kf04MyYchqR70r6Ce9c_q2Re2HhqpgPrh5DdXHPBWxXwHo75L
 b5m5y60hCC0d3zF62k>
X-ME-Received: <xmr:zkrUZoi0ryZbO-0Wh3ETU8CL-4EVdmlfRvliFrFjFGvLBHYH-kgA51zCt6co1dpxjN9vorHMOUPdEqUApeSAc6aGSXosihMq89MBgkBdIgo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedgudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeej
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegrphgr
 ihhssehlihhnuhigrdhmihgtrhhoshhofhhtrdgtohhmpdhrtghpthhtohepvggumhhunh
 gurdhrrghilhgvsehprhhothhonhhmrghilhdrtghomhdprhgtphhtthhopehlihhnuhig
 qdhmvgguihgrsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvg
 hvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:zkrUZg96RfetWT1Gqw_H8dcew-qSbk9SDAddkCKJw5f9A5vuDKd6FA>
 <xmx:zkrUZrs2VnjGxnuQafIxRzLl1DuoyZ9znznO5gPVViBYe7df9BRv9Q>
 <xmx:zkrUZvHrK9Eb6CELOHITJatMAPmUpYlHbeGTSgIrtdyBADwt9doMBg>
 <xmx:zkrUZiONd3ik683ysDoTsIz32_rXDNxibHqaaInSPZu347lG5mn9Yg>
 <xmx:zkrUZk_oqx_HI7v2_FOfmvp2fscoPfgeYmPB99HGeIgiWEv_um9NNSjw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 1 Sep 2024 07:06:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 3/5] firewire: ohci: process IT/IR events in sleepable
 work process to obsolete tasklet softIRQ
Date: Sun,  1 Sep 2024 20:06:40 +0900
Message-ID: <20240901110642.154523-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
References: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit queues work item for IT/IR events at hardIRQ
 handler
 to operate the corresponding isochronous context. The work item is queued
 to the workqueue on the cpu in which the events are handled. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiQ8-0006KT-EX
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
Cc: edmund.raile@protonmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
 apais@linux.microsoft.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit queues work item for IT/IR events at hardIRQ handler to operate
the corresponding isochronous context. The work item is queued to the
workqueue on the cpu in which the events are handled.

The callback for either the implementation of unit protocol and user space
clients is executed in sleepable work item. It could results in any errors
of concurrent processing as well as sleep at atomic context. These errors
are fixed by the following commits.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 55 +++++++++++++++++++++++++++++++++--------
 1 file changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index ad3bdc48f0f5..c94b2728cf03 100644
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
@@ -2237,8 +2278,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 
 		while (iso_event) {
 			i = ffs(iso_event) - 1;
-			tasklet_schedule(
-				&ohci->ir_context_list[i].context.tasklet);
+			fw_iso_context_schedule_work(&ohci->ir_context_list[i].base);
 			iso_event &= ~(1 << i);
 		}
 	}
@@ -2249,8 +2289,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 
 		while (iso_event) {
 			i = ffs(iso_event) - 1;
-			tasklet_schedule(
-				&ohci->it_context_list[i].context.tasklet);
+			fw_iso_context_schedule_work(&ohci->it_context_list[i].base);
 			iso_event &= ~(1 << i);
 		}
 	}
@@ -3128,6 +3167,7 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 	ret = context_init(&ctx->context, ohci, regs, callback);
 	if (ret < 0)
 		goto out_with_header;
+	fw_iso_context_init_work(&ctx->base, ohci_isoc_context_work);
 
 	if (type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
 		set_multichannel_mask(ohci, 0);
@@ -3225,7 +3265,6 @@ static int ohci_stop_iso(struct fw_iso_context *base)
 	}
 	flush_writes(ohci);
 	context_stop(&ctx->context);
-	tasklet_kill(&ctx->context.tasklet);
 
 	return 0;
 }
@@ -3582,10 +3621,8 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 	struct iso_context *ctx = container_of(base, struct iso_context, base);
 	int ret = 0;
 
-	tasklet_disable_in_atomic(&ctx->context.tasklet);
-
 	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		context_tasklet((unsigned long)&ctx->context);
+		ohci_isoc_context_work(&base->work);
 
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
@@ -3605,8 +3642,6 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 		smp_mb__after_atomic();
 	}
 
-	tasklet_enable(&ctx->context.tasklet);
-
 	return ret;
 }
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
