Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B90967619
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:16:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiZJ-0008Th-Qj;
	Sun, 01 Sep 2024 11:16:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiZI-0008TR-HW
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H3FG4jYj1xMGNWjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=AhR338C3czGCSdetVhRPFvGjY/
 lBcz4xA5Zv1JQ8UFAAg7qoXMdzyk0zVhKcdGM2sRO2fEZiDgr2CrILgbmMtHG+3ZjWun1xWQ5vg32
 EwrbVwZYgCa5UOJDULuEbvwf58w1CxZqz11t4328TJ+3D9al76G7jV7nE7uYx+W7HKwk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H3FG4jYj1xMGNWjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=DEkAmJPEHoFDGpuAnF6jj/W9QP
 483GU2B/w102cs+i5btgNw7Ef4eC5O9ywHeKIf13kYmpTqRLPNaFX3cfTsEtXvlQkrUA8esjFw7en
 KauBh/MQN/pfO3d4SdyP4lAbm2lQ4AOfGz3P8gfKdIpVsU8S4t3KVt30o4qEnchsRyXk=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiZI-0006no-DV for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:16:29 +0000
Received: from phl-compute-06.internal (phl-compute-06.nyi.internal
 [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id D93A51140283
 for <linux1394-devel@lists.sourceforge.net>;
 Sun,  1 Sep 2024 07:16:22 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Sun, 01 Sep 2024 07:16:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725189382; x=
 1725275782; bh=H3FG4jYj1xMGNWjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=r
 Tbqq6baDl5TeUC1jEild1Zj9KiLP4rWznmpF7CDDl5sTqkI65h2G92x2OOPOUkXo
 uP1RF3jnd4ajEKzNBTaUAusZh95Z3ZUUCjM8fAzrruGtC72nUphcytioxhObvMqg
 4WVe1rSQvwu+zueSCW1jOvybJBYfXjvsJ8k2WTETw+s3b8ehNtgzjXJ9Nnw+brw8
 HjaMXFNk7U1pEKoEeQzhLtpAcV0fdhqx+YZi8AYj4nB62r3M/c9/gO9HhaWMjWRn
 eRabF3D9WMeTcnz+frLVS5CRTSjpkWkDsvPHsFm52KM6qBYhp9B34Nt/EwoCSgma
 ad0lUgEgL2J2tg4Os82Pw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1725189382; x=1725275782; bh=H3FG4jYj1xMGN
 WjODDfCxIAEWvCnUOU5rzwe2GtoNos=; b=Sd4p175Xr4qYFKFygETFTHyilQtVU
 d14Y0eOZf+x7L5WGHnG8vXUCckRF8QS1K25ppVS244ubhTsxWJ8rPH25o/wtMehJ
 BeDUkL65RJeHGFZJ+hY3UNSMvGU0FdkVyibUrUqphlbKwOa24amdb60or8QLsox2
 Dil+FMM985UuU0+dYVToz+wp6GI+AnIkB2APX1xkFjeImGhuwPEGyWlfhNpFH8K2
 xdB2gpq3jhVEn3CCPlc0QugwACsm0OOzpYEg7Zj3HGgY4TPRgx9cwp9lfmvu5ykM
 D/E5EhJ1jFXUzB5A9/R5d4PXq+HktSJEzUEzHaKSajdk50s5w6y4TwGng==
X-ME-Sender: <xms:Bk3UZpqz82rtZHNf-wAQuJBs7C2rcvVIUxSKZ8DTyBJQg1pm3Ahdfw>
 <xme:Bk3UZrrwDeOCuFX7PSR8rCbw9lhQRYTpRLPeJh3cUz4k9laosRJW6qMEojIpyCHf7
 nTynM3kUDoJfz2wQjo>
X-ME-Received: <xmr:Bk3UZmPzDmIVK8vqf2_eMRVcKgB3ms9M7yjOVOrWRwuR2LTYZ4iee7r8ntfqQkXUFAHJkAV9qnu0xC0JE85QKH3ELE5dH3pn408qdNKYDjo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepveefffefkeetgfevgeefleehfffhueejtdejveethfekveektdejjedvtdej
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:Bk3UZk7_L62GOaYfY1KszR5NDLnF27YQbJqmeyMn5hoOXci3u4RuKg>
 <xmx:Bk3UZo6M-xiQnj-NWvrpwn3MOhLsfw7mSe8Rbg4LZVngNrjCVwKMDA>
 <xmx:Bk3UZsgIMdtd8vT-GpXUnT74aJ-LKDmFPiCHfuKZvCB5eILU3NWxwQ>
 <xmx:Bk3UZq7-wVzrbjGkdPB12MQH5Qn5V63Qz5nNlG9a_6ciTovfL5YRdw>
 <xmx:Bk3UZmRmXpaSkQF49Cfx7qcJyg0FfukcVtX5NeaPlaUj2oiwcO9WqrjV>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Sun,
 1 Sep 2024 07:16:21 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 3/5] firewire: ohci: process IT/IR events in sleepable
 work process to obsolete tasklet softIRQ
Date: Sun,  1 Sep 2024 20:16:14 +0900
Message-ID: <20240901111616.155464-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901111616.155464-1-o-takashi@sakamocchi.jp>
References: <20240901111616.155464-1-o-takashi@sakamocchi.jp>
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
 to the workqueue on the cpu in which the events are handled. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiZI-0006no-DV
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
