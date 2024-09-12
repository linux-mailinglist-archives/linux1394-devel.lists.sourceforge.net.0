Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A19976AA1
	for <lists+linux1394-devel@lfdr.de>; Thu, 12 Sep 2024 15:31:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sojuU-0005Rf-Ez;
	Thu, 12 Sep 2024 13:30:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sojuT-0005RR-7R
 for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MMbGuK3N/1jRODTwbn0Vkonn552Hd2+afxq5dkrI7T4=; b=BaIgG/B3LMVxu1fDG5jThqCo6a
 qWn51KDGu0PSHdQ0o+N4XAT6h94UzyyoX3b3/5byDdlkwKuyz7GQ4XyXu/BBdSbxNrDH6fSSibDxi
 0HB07lG3O3WhVoDgQh3gaIWXABvfPUpSRYAVYOdOuLV8BorYsz3Xr87N3ynxDGSZnVls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MMbGuK3N/1jRODTwbn0Vkonn552Hd2+afxq5dkrI7T4=; b=OyYS6WxA03xpoT2gfBBp//1Zkl
 iy267sOefu4P/UvjUtrgJys3YDh5h6ecg2MMVYh5QecLcYk7IX1PjHpQUoCN4rqOy+c84INWK4J86
 rcWx67D8ny2vPcE9hLTLM6gEzkVv9XH2lfFtoXsqG4WBDJeWKZP2k/01UKGFumYSP+t4=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sojuS-0000Xm-Cb for linux1394-devel@lists.sourceforge.net;
 Thu, 12 Sep 2024 13:30:57 +0000
Received: from phl-compute-09.internal (phl-compute-09.phl.internal
 [10.202.2.49])
 by mailfout.phl.internal (Postfix) with ESMTP id CA7951380550;
 Thu, 12 Sep 2024 09:30:45 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Thu, 12 Sep 2024 09:30:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1726147845; x=
 1726234245; bh=MMbGuK3N/1jRODTwbn0Vkonn552Hd2+afxq5dkrI7T4=; b=l
 i2ZfkfZ9EU4iayMQjq6m133nIerz6kgi5vketw/kwMvhuavZ7po6bJRqvqM2bTr6
 A77xMQ4G609+NGZUfwyzNx0PHtDHm8yhUGYriy5tAbFRvtBEJnq5YajAV9ULKAV4
 DUo4oBedXknVzTYUgURjUAPa/IV1IG3FqYUfIjFRTfb3V9pUZQK5sbPQGELJ13OI
 P+pOrSF0z0saue1skSlDlkl1qr22aBRwQ5MlunWzWqf+dBVfk1LLtu3QOlXzH9Au
 nq9rCLk7DfaGtYqerJW+JJm8108MFpGAFzomNVkx9XhREYdafhy3XKkApGhmVpho
 k9QSTPP+OS15LRzsV83MA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1726147845; x=
 1726234245; bh=MMbGuK3N/1jRODTwbn0Vkonn552Hd2+afxq5dkrI7T4=; b=T
 TxTuZ3D97S4v5JaLa8enNraahmqu1yvTZ7zMpJoBc0ILwa8vKLrF4LpZAKKbm6UG
 Z0GMu/Y1yvPv3h1Mj/4yittuzXoWMTPw1fBoXtFL2oV+W07JDCUqywwAo6EW1Bpn
 FviIf3IIL/YxW/79gnOhRwhgZKtnUwqPI7NdIfIMjbEYruIelFzHo/P+g6oyhATS
 B4Z6yY5eHpn4PLtRPxKTCfnGKmUazOm/EBdFrHKUKgUTS8g33i6hxMnpAqaCzBOb
 NfShalZhCcK/LSYQ+S/B69iE7TF96jy+WZ8F1eOL7vBJMNdNdQku4O46HiQ4EGip
 hRh17clZYMCCg3MVIfAXA==
X-ME-Sender: <xms:Be3iZir4dBIaXI6hMDWmAT_eNhrLyOhbxzkXHfgjz1Pf5ynOx1ALQg>
 <xme:Be3iZgqCcW0q9_8lpnhYxILqcEbjEW0iBe91EjrJIuMlkJzGNKNx6um6lwNPPFg53
 qKFdhdyPo06Hr7N0QA>
X-ME-Received: <xmr:Be3iZnOywRjiV8_AtYv735-dRvY26yugGeVGh4-oXHVvAJ4E6qhXXkjUXpvoTZABGEL8f2XT37ajDt7Ki3tr5BzygJ6pxyCDbbr90Nj-gfkFoQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejfedgieejucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:Be3iZh65sxEMcf0MSPQufEuN3JD1SE_gCR2WQp0NjDMhSo9iSdjtNw>
 <xmx:Be3iZh6KwukkDLSCbn9m1Zw4QjkwoXSba9zVTC1N2AczHPdN_yfqbQ>
 <xmx:Be3iZhhfeihr1jmDcFjgtlr-6g19f7kb9D__tv3iL4__Sa168ucg5Q>
 <xmx:Be3iZr6eRxonjhPSWaaMycKBvWSMzNLrA-EJLayu2nJFd4UqLP-IGQ>
 <xmx:Be3iZhF9_Upu_Ys5oIeszivNosbvcG4sAGAkACxOiuNHj5bGrCzgi4IT>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 12 Sep 2024 09:30:44 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/5] Revert "firewire: core: use mutex to coordinate
 concurrent calls to flush completions"
Date: Thu, 12 Sep 2024 22:30:34 +0900
Message-ID: <20240912133038.238786-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
References: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This reverts commit d9605d67562505e27dcc0f71af418118d3db91e5,
 since this commit is on the following reverted changes. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-iso.c | 11
 ++---------
 drivers/firewire/ohci.c | 37 +++++++++++++++++++++++ include/linux/firewire.h
 | [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sojuS-0000Xm-Cb
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

This reverts commit d9605d67562505e27dcc0f71af418118d3db91e5, since this
commit is on the following reverted changes.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 11 ++---------
 drivers/firewire/ohci.c     | 37 +++++++++++++++++++++++--------------
 include/linux/firewire.h    |  1 -
 3 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 1405d2e9cb2c..9f41c78878ad 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -157,7 +157,6 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->callback.sc = callback;
 	ctx->callback_data = callback_data;
 	INIT_WORK(&ctx->work, flush_completions_work);
-	mutex_init(&ctx->flushing_completions_mutex);
 
 	trace_isoc_outbound_allocate(ctx, channel, speed);
 	trace_isoc_inbound_single_allocate(ctx, channel, header_size);
@@ -174,8 +173,6 @@ void fw_iso_context_destroy(struct fw_iso_context *ctx)
 	trace_isoc_inbound_multiple_destroy(ctx);
 
 	ctx->card->driver->free_iso_context(ctx);
-
-	mutex_destroy(&ctx->flushing_completions_mutex);
 }
 EXPORT_SYMBOL(fw_iso_context_destroy);
 
@@ -229,7 +226,7 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
  * to process the context asynchronously, fw_iso_context_schedule_flush_completions() is available
  * instead.
  *
- * Context: Process context due to mutex_trylock().
+ * Context: Process context.
  */
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 {
@@ -237,11 +234,7 @@ int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 	trace_isoc_inbound_single_flush_completions(ctx);
 	trace_isoc_inbound_multiple_flush_completions(ctx);
 
-	scoped_cond_guard(mutex_try, /* nothing to do */, &ctx->flushing_completions_mutex) {
-		return ctx->card->driver->flush_iso_completions(ctx);
-	}
-
-	return 0;
+	return ctx->card->driver->flush_iso_completions(ctx);
 }
 EXPORT_SYMBOL(fw_iso_context_flush_completions);
 
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index b182998a77f4..02ff0363d3ad 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -166,6 +166,7 @@ struct iso_context {
 	struct context context;
 	void *header;
 	size_t header_length;
+	unsigned long flushing_completions;
 	u32 mc_buffer_bus;
 	u16 mc_completed;
 	u16 last_timestamp;
@@ -3578,23 +3579,31 @@ static void ohci_flush_queue_iso(struct fw_iso_context *base)
 static int ohci_flush_iso_completions(struct fw_iso_context *base)
 {
 	struct iso_context *ctx = container_of(base, struct iso_context, base);
+	int ret = 0;
 
-	// Note that tasklet softIRQ is not used to process isochronous context anymore.
-	context_tasklet((unsigned long)&ctx->context);
+	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
+		// Note that tasklet softIRQ is not used to process isochronous context anymore.
+		context_tasklet((unsigned long)&ctx->context);
 
-	switch (base->type) {
-	case FW_ISO_CONTEXT_TRANSMIT:
-	case FW_ISO_CONTEXT_RECEIVE:
-		if (ctx->header_length != 0)
-			flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_FLUSH);
-		return 0;
-	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		if (ctx->mc_completed != 0)
-			flush_ir_buffer_fill(ctx);
-		return 0;
-	default:
-		return -ENOSYS;
+		switch (base->type) {
+		case FW_ISO_CONTEXT_TRANSMIT:
+		case FW_ISO_CONTEXT_RECEIVE:
+			if (ctx->header_length != 0)
+				flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_FLUSH);
+			break;
+		case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
+			if (ctx->mc_completed != 0)
+				flush_ir_buffer_fill(ctx);
+			break;
+		default:
+			ret = -ENOSYS;
+		}
+
+		clear_bit_unlock(0, &ctx->flushing_completions);
+		smp_mb__after_atomic();
 	}
+
+	return ret;
 }
 
 static const struct fw_card_driver ohci_driver = {
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 19e8c5f9537c..f815d12deda0 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -512,7 +512,6 @@ union fw_iso_callback {
 struct fw_iso_context {
 	struct fw_card *card;
 	struct work_struct work;
-	struct mutex flushing_completions_mutex;
 	int type;
 	int channel;
 	int speed;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
