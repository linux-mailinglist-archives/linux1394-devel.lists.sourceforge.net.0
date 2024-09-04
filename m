Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0E396BD68
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Sep 2024 14:59:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1slpaq-0002cY-Dg;
	Wed, 04 Sep 2024 12:58:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1slpan-0002c7-Nn
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VM4mJNaEoxxS6lwu2GiAK2Ilo54NSX6YDae+GK8Khnc=; b=KWIAGjePaHcKeBAOn0SImQmuEa
 qZa/pH4eME98m0Tv5TJJnDvxfhsmiIVN+TuB2Dm2tteP8UQGKUiN/lPcrHS9V0A1UKNrA7PDLHIfY
 luKaItuIzLbXRHi/vUfXUx7PC3ea7nlgWzg7ImjTl/D8W5zMqXPwFdJDJwZKtpUKO2oc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VM4mJNaEoxxS6lwu2GiAK2Ilo54NSX6YDae+GK8Khnc=; b=gvUr7Eo1LsKDRQQGS/SwSZ91NJ
 HfnTb17dlyk/xNRo8qkIrWJBENp9T9ztTmKPIBfDXZUOVbBdX6cdZGLOnXORlOc+2m4KCe9PCwk3E
 YlfwO2Y6I9gnpJo94H5jerzoFPZrJE5lIQljbZwOfVNuBbi2lN8s4uztahRiuEfpX08k=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slpam-0000Rn-Nh for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:37 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 32DFD1140256
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  4 Sep 2024 08:58:31 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Wed, 04 Sep 2024 08:58:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725454711; x=
 1725541111; bh=VM4mJNaEoxxS6lwu2GiAK2Ilo54NSX6YDae+GK8Khnc=; b=H
 yoKmXJ/UGHiV74+CyyrBDa0yn53MomDqVEql5o6k87x2RUta5/HO/oyZ+MoccAWs
 0gBV2HK92sZOjYuyZIjGOMMwehgoyaarRcfeDRrgA8ET1sMIWS1Z0crq+4Pmfnn6
 cxFzd7tsGif8gw9oIejU5KfpyYZ47i8Is05PwmKV7xDhzaHfuR/6SRN8VLvkWe5g
 kKHF2q3MwrfVO3CD3skVIS2oLmOhhKajKW2d2QlaYyiyd2AurzaZZa9W6yQmb0f+
 fbn3BidQYlwwgh4420vqUg8aPhzcU8lNwAtAZ4Kgcq077u+O0L0LMxZTPsunPsYd
 cY2oZipIzSgU5bxzrZADg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1725454711; x=1725541111; bh=VM4mJNaEoxxS6
 lwu2GiAK2Ilo54NSX6YDae+GK8Khnc=; b=hh+kWqj4Ex+3rStKTwd4FHSLLqZuR
 s86UeJYGN+TjxjScw3t9WkafW/h0+T1OS7POd5U/eV1vCRQ9aRIqGMbyshuzKLuV
 kXC3of6qfvx2APYps/yzlKazRG8sT1ErdjAZ2aptSEqvdHsStzA5AM4DRafVet5S
 SJnT3Ine8nWaQY4XOQOnTPtow6ZWc5U2G/r84qaRkAoP6qpELsf/tCQud0N+PCxw
 /oBTGlcFi/pJVHtWK/Fry006D1B1eEpSVLVDuPWVuCsOrX6WRi4sPmLmwNPlZKbI
 bQMRwm4bvhal44K6m40zWmd6nIPHD9ZFspcZsrGvuezfI0i0N3MbLna+w==
X-ME-Sender: <xms:d1nYZgWigKj6BBbkBLUx0CYaLa2oEJcopaJUMea47aQMlgZD_nZvEQ>
 <xme:d1nYZkmW50oDOBsc1kIsdjaMBPzk3rS5KBqwT5yQ72Psu1egmeQ-h7ZuZ8Ou5JHeb
 WISA3sTp3I4sBFDWy8>
X-ME-Received: <xmr:d1nYZkbrTMbuH_vXP0YzpRMhOLQTYcmzzlyyn0nFF2erkQL1wvdGbqVgt62VsxpOAGTZGP7zW17DLygATdGIIr7W0MlAgPBOlYnRIjUSdQJ9zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepveefffefkeetgfevgeefleehfffhueejtdejveethfekveektdejjedvtdej
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:d1nYZvV8jGemt-fDCT_TdM4_O5cp6BYAYEZpyJ51yc6BuQIFPZZNIg>
 <xmx:d1nYZqkWNTNJdmxeXQQGYxvLd1JHNRbSmlAUCIHIgBhxyKvSkJ2c6g>
 <xmx:d1nYZkcYqXIncptIpb2MLUUYjJ_F7w9GZbFSZcf60mbGKnH4KD_0Cw>
 <xmx:d1nYZsGx4CO9PiCMMgwUqwWr6g_lDu5yN2SazCDafvF13kAB1qeLkw>
 <xmx:d1nYZutRePCTZhvlTU42q3JUKCuVlFz9_X9vBnDZyHAwGRJ7n1Kd-X8s>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Wed,
 4 Sep 2024 08:58:30 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/5] firewire: ohci: operate IT/IR events in sleepable work
 process instead of tasklet softIRQ
Date: Wed,  4 Sep 2024 21:58:22 +0900
Message-ID: <20240904125824.462786-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
References: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit queues work item for IT/IR events at hardIRQ
 handler
 to operate the corresponding isochronous context. The work item is queued
 to any of worker-pools. The callback for either the implementation of unit
 protocol and user space clients is executed in sleepable work process context.
 The change could results in any errors of concurrent processing as wel [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1slpam-0000Rn-Nh
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

This commit queues work item for IT/IR events at hardIRQ handler to operate
the corresponding isochronous context. The work item is queued to any of
worker-pools.

The callback for either the implementation of unit protocol and user space
clients is executed in sleepable work process context. The change could
results in any errors of concurrent processing as well as sleep at atomic
context. These errors are fixed by the following commits.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 55 +++++++++++++++++++++++++++++++++--------
 1 file changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 50627b8fc38f..d0b1fccc450f 100644
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
@@ -2242,8 +2283,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 
 		while (iso_event) {
 			i = ffs(iso_event) - 1;
-			tasklet_schedule(
-				&ohci->ir_context_list[i].context.tasklet);
+			fw_iso_context_queue_work(&ohci->ir_context_list[i].base);
 			iso_event &= ~(1 << i);
 		}
 	}
@@ -2254,8 +2294,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 
 		while (iso_event) {
 			i = ffs(iso_event) - 1;
-			tasklet_schedule(
-				&ohci->it_context_list[i].context.tasklet);
+			fw_iso_context_queue_work(&ohci->it_context_list[i].base);
 			iso_event &= ~(1 << i);
 		}
 	}
@@ -3130,6 +3169,7 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 	ret = context_init(&ctx->context, ohci, regs, callback);
 	if (ret < 0)
 		goto out_with_header;
+	fw_iso_context_init_work(&ctx->base, ohci_isoc_context_work);
 
 	if (type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
 		set_multichannel_mask(ohci, 0);
@@ -3227,7 +3267,6 @@ static int ohci_stop_iso(struct fw_iso_context *base)
 	}
 	flush_writes(ohci);
 	context_stop(&ctx->context);
-	tasklet_kill(&ctx->context.tasklet);
 
 	return 0;
 }
@@ -3584,10 +3623,8 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 	struct iso_context *ctx = container_of(base, struct iso_context, base);
 	int ret = 0;
 
-	tasklet_disable_in_atomic(&ctx->context.tasklet);
-
 	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		context_tasklet((unsigned long)&ctx->context);
+		ohci_isoc_context_work(&base->work);
 
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
@@ -3607,8 +3644,6 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
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
