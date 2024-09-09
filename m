Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFBC971BFA
	for <lists+linux1394-devel@lfdr.de>; Mon,  9 Sep 2024 16:00:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1snewY-00038p-Ga;
	Mon, 09 Sep 2024 14:00:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1snewW-00038h-Gg
 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 14:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MohIuIYa3jbt6rYPobGsm21vBhfll8E6tRStmYqj0vU=; b=Hxh1mfKqEScK9lOhYsxMhgbOUX
 djGbI/Dq9PgsaLjAFsplQnxlWXNa7hnTBeABxLiZQWTkI7/ITEtIcVHNhTnxFiNHbNQSFr5T+/fhC
 PjSwhIgiFBUVwAUG82No9RME0oiEPshSvHC1fafogTACL0PMKcY4dSqjhG7vrO8xLozs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MohIuIYa3jbt6rYPobGsm21vBhfll8E6tRStmYqj0vU=; b=b9dgCkUmh3CUJ+6tggJGbhUtlL
 dQ/1PLNYnHuipEArX0H0WOIl/GWqppu5k+dgIjzmlvGSKZMbbsp8LHsw5rk9XNh73UgruBRmw6/rV
 098o19TiEZ6JfK6VKXWQ9rvhuviU0pssEA8uGm8sfpLHkTAyqrxanZ54OvQbh9XaN86Q=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1snewW-0002Ub-GE for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Sep 2024 14:00:37 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id EBE99138020A;
 Mon,  9 Sep 2024 10:00:25 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Mon, 09 Sep 2024 10:00:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725890425; x=
 1725976825; bh=MohIuIYa3jbt6rYPobGsm21vBhfll8E6tRStmYqj0vU=; b=n
 VhArJCCLqq/UIdis516CFNcTZkwNIRvKpm67npRrTRQG09T2B79tdVE3w4z9hRnO
 Q6k6djPYGdgkCOwdmkEKJIlDr78DNGXlJDn42+vZDoo5Fq1Mef+e6+eXrMO81nCR
 kaE5ShMOryTXru7YztH5f92tYfhXFpERcKf33VL83lVqn6fCuAvXXsmvd+4hc01f
 CqDmTayWtCjUCYoiH6/c+bgdT0W/163LZAXK2M5V15ayYf1cohrGfT4HgGxe0mMz
 g3ImcpiL9FFQWv9kzhbo5axrFa/nA12rWBj27ZfTgetnw18mTeL5oKbUDUVqldY4
 wPUBhcTgliiIwID6Qu4+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725890425; x=
 1725976825; bh=MohIuIYa3jbt6rYPobGsm21vBhfll8E6tRStmYqj0vU=; b=b
 qidxGYfIkIk+VilZr+inYmr89nVJyCqQQ/j43zQ29NW5xZhaW8hwcW1t5YuBx0WL
 joCPatEB7Cai92d0CTDEYxU7+wFPAIPO6Twjyd9ejGBRhIAHeO6Z9ugeiRHWadNX
 1J9GX6fuudO1OwOJ1XqwBqIVzgwuNqwiGksd4HndzdPqEqDNgtnEVqUk/R0L7+EM
 9ZN7WC5gYj7gv5X4subvubQR/YX6mD3oZf5eoe1mS8dHWAdo4tIGMGBydldtQaiu
 LW5J6m4FmLnP9bNh1W5EAB2bUb0rI4bfQ9UVXklwhORTnJcFz4GcaSUXqsK4HUTz
 V13XroHhKUFybkLbdnjSQ==
X-ME-Sender: <xms:ef_eZvR_LrD0mErs4oyMGTdYpyNHl5WkjR5of6q7kVvwpTs8ioGjxQ>
 <xme:ef_eZgzPp5880G2Hl0ApChGcdF0inRkyx9sBX0EChnZiV-SabYUtU2HB16oFLZBDU
 kp9wyqT61Up63R-Lds>
X-ME-Received: <xmr:ef_eZk1I6PyYBx3p9iO7BU73se5hy7vWvUcd2Va2rR74XePa_pmGAHMy2gIzCd77-3PJIQdmPxMUTS7DFJ4hy1CrdHzu_TbadPTsLsIS59VigA>
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
X-ME-Proxy: <xmx:ef_eZvBiuxGiE7er-Uiy8f1jxKESbcHo_7Y_0r05yNlJp3qRIesuIg>
 <xmx:ef_eZoiEMHkyGFe0htGrTHKQkEGSY9RbccMZ5NwlKSkY0Q5cOMi5GA>
 <xmx:ef_eZjo6Ac-aWNZjA4UWl3tbHMPMMv9T2ZKGn60q2sf1FKRg0IT1Xg>
 <xmx:ef_eZjh466nDKC4gnYxsYARn8UZwy6W3SSK6OUuWFJ2q_osVO-2Dgw>
 <xmx:ef_eZhvtXMhXZVi-51Nn6bizj6SnFs-ueDFQ_KTsWES4isv3ltWcFG8E>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Sep 2024 10:00:24 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: use mutex to coordinate concurrent calls
 to flush completions
Date: Mon,  9 Sep 2024 23:00:18 +0900
Message-ID: <20240909140018.65289-3-o-takashi@sakamocchi.jp>
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
 Content preview:  In current implementation, test_and_set_bit_lock() is used
 to mediate concurrent calls of ohci_flush_iso_completions(). However, the
 ad-hoc usage of atomic operations is not preferable. This commit uses
 mutex_trylock()
 as the similar operations. The core function is responsible for the mediation, 
 instead of 1394 OHCI driver. 
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
X-Headers-End: 1snewW-0002Ub-GE
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

In current implementation, test_and_set_bit_lock() is used to mediate
concurrent calls of ohci_flush_iso_completions(). However, the ad-hoc
usage of atomic operations is not preferable.

This commit uses mutex_trylock() as the similar operations. The core
function is responsible for the mediation, instead of 1394 OHCI driver.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 11 +++++++++--
 drivers/firewire/ohci.c     | 37 ++++++++++++++-----------------------
 include/linux/firewire.h    |  1 +
 3 files changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 9f41c78878ad..a5c5ef3c725d 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -157,6 +157,7 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->callback.sc = callback;
 	ctx->callback_data = callback_data;
 	INIT_WORK(&ctx->work, flush_completions_work);
+	mutex_init(&ctx->flushing_completions_mutex);
 
 	trace_isoc_outbound_allocate(ctx, channel, speed);
 	trace_isoc_inbound_single_allocate(ctx, channel, header_size);
@@ -173,6 +174,8 @@ void fw_iso_context_destroy(struct fw_iso_context *ctx)
 	trace_isoc_inbound_multiple_destroy(ctx);
 
 	ctx->card->driver->free_iso_context(ctx);
+
+	mutex_destroy(&ctx->flushing_completions_mutex);
 }
 EXPORT_SYMBOL(fw_iso_context_destroy);
 
@@ -226,7 +229,7 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
  * to process the context asynchronously, fw_iso_context_schedule_flush_completions() is available
  * instead.
  *
- * Context: Process context.
+ * Context: Process context due to mutex_trylock().
  */
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 {
@@ -234,7 +237,11 @@ int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 	trace_isoc_inbound_single_flush_completions(ctx);
 	trace_isoc_inbound_multiple_flush_completions(ctx);
 
-	return ctx->card->driver->flush_iso_completions(ctx);
+	scoped_cond_guard(mutex_try, /* nothing to do */, &ctx->flushing_completions_mutex) {
+		return ctx->card->driver->flush_iso_completions(ctx);
+	}
+
+	return 0;
 }
 EXPORT_SYMBOL(fw_iso_context_flush_completions);
 
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 02ff0363d3ad..b182998a77f4 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -166,7 +166,6 @@ struct iso_context {
 	struct context context;
 	void *header;
 	size_t header_length;
-	unsigned long flushing_completions;
 	u32 mc_buffer_bus;
 	u16 mc_completed;
 	u16 last_timestamp;
@@ -3579,31 +3578,23 @@ static void ohci_flush_queue_iso(struct fw_iso_context *base)
 static int ohci_flush_iso_completions(struct fw_iso_context *base)
 {
 	struct iso_context *ctx = container_of(base, struct iso_context, base);
-	int ret = 0;
 
-	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		// Note that tasklet softIRQ is not used to process isochronous context anymore.
-		context_tasklet((unsigned long)&ctx->context);
+	// Note that tasklet softIRQ is not used to process isochronous context anymore.
+	context_tasklet((unsigned long)&ctx->context);
 
-		switch (base->type) {
-		case FW_ISO_CONTEXT_TRANSMIT:
-		case FW_ISO_CONTEXT_RECEIVE:
-			if (ctx->header_length != 0)
-				flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_FLUSH);
-			break;
-		case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-			if (ctx->mc_completed != 0)
-				flush_ir_buffer_fill(ctx);
-			break;
-		default:
-			ret = -ENOSYS;
-		}
-
-		clear_bit_unlock(0, &ctx->flushing_completions);
-		smp_mb__after_atomic();
+	switch (base->type) {
+	case FW_ISO_CONTEXT_TRANSMIT:
+	case FW_ISO_CONTEXT_RECEIVE:
+		if (ctx->header_length != 0)
+			flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_FLUSH);
+		return 0;
+	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
+		if (ctx->mc_completed != 0)
+			flush_ir_buffer_fill(ctx);
+		return 0;
+	default:
+		return -ENOSYS;
 	}
-
-	return ret;
 }
 
 static const struct fw_card_driver ohci_driver = {
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index f815d12deda0..19e8c5f9537c 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -512,6 +512,7 @@ union fw_iso_callback {
 struct fw_iso_context {
 	struct fw_card *card;
 	struct work_struct work;
+	struct mutex flushing_completions_mutex;
 	int type;
 	int channel;
 	int speed;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
