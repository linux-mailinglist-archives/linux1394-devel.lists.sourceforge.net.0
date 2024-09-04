Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC0296BD66
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Sep 2024 14:59:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1slpaw-0002dO-NY;
	Wed, 04 Sep 2024 12:58:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1slpar-0002ci-EP
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RSfspq38f8gW7QJFYGIc1REufVKmHzw31V7N3gqLU3w=; b=kvRk6v2eTTsgzcYn4qs+87PnXS
 G2hGMZhJXOsZpfOPTRDwtlMaRDsX907sJu9yrI853GCOeX0dG/1RPRG4eWnJvyoZC0ds0DQXPbe/T
 4VPWxox183odMUa+pw+bhX6OlZWJOUnH3qf7hKnLI85clI6MxPFITOVlIj/i3ZEL1Io0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RSfspq38f8gW7QJFYGIc1REufVKmHzw31V7N3gqLU3w=; b=lDQACQpslefKzxTPVdj1AAJkQd
 Hz3BrdGcilm8qnVKX8uUshi8ZGxI93GGrlmFrkqSr56YfHeo25yKppztdt7hy4IYQD9YfoOkB5JvK
 3gO7mlQg1HqaARGURq/8TE1au7Ai2SL7b7JuFuhbV0QwwvZoBtm4iLJZMG0SJQ9HgaeY=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slpaq-0000S9-Ll for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:41 +0000
Received: from phl-compute-07.internal (phl-compute-07.phl.internal
 [10.202.2.47])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 23F5011401DF
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  4 Sep 2024 08:58:30 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-07.internal (MEProxy); Wed, 04 Sep 2024 08:58:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725454710; x=
 1725541110; bh=RSfspq38f8gW7QJFYGIc1REufVKmHzw31V7N3gqLU3w=; b=Y
 JzG1wRAQ1ZpipYKLo0mTW7M+vGaNVMgjX8ySfJY+1U6sLs10PgO91pis9UCDsp3v
 /YzWa4vKX31+GMUW53xQSzL2laglBOnNMN1751G7qtNBYvTsw45Jqzd+gcq3fjkM
 dSvN9bN7Ko1NGjc7Q18O+ehqy/Zm8Cbg/pSx62PCZFUBd4bzNdXy+SCBnSJyVAvq
 95TZCNChX5gyF6X/mr4MeZ4ZGPGBhwY8iqI+obeOxQGviVQoJ3bye2qb9SpKpdNs
 WEuVVhdnfiE7X8pA/Tr7JRhFSDapUsWf4Wxpxj2B3nZwJ38y5540jKb/oAyPFqEr
 6sziVkwApxdeOvvQRPvhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1725454710; x=1725541110; bh=RSfspq38f8gW7
 QJFYGIc1REufVKmHzw31V7N3gqLU3w=; b=X2hyXyhJk+nO9C4oGTLFBSYn5S12U
 VGLT9AerBs3WyYeDVqy2vdnO/HejKeFJyf97wswLCTKfZCcwFL/ZRCTE/j7ww7mR
 9phR0SpxsdLqsQoN8B9exDzw652GWThcjlK2tR1aoQWjsAyMyZbMe+qzq/FUv7oS
 KV4DhabfZmV/YND+SlyherIPti0vwOVo21+oIExlBKzOCakzZ2WN1skxqbHJdXjc
 oMHVAEK28jdy/9HCCT+wFdFRxgQCmN1krU631L8KHG/tu9T2SM/WKgSXBwSyYeUg
 j1qvTl7LHQTB7BeERXd5HP9tqmqdGYRKIf5icVUaQ5DpahfsqUbb0PpCg==
X-ME-Sender: <xms:dlnYZv4fwSM3npI1Ua2XkXQSPMT2q3sif7kBcpMUxp78DVCeny97pA>
 <xme:dlnYZk7vFsb1l24O_AMSn7nIcZtdoq35Sg-aF4bZPEnFkKKTe4NvJ1-oisMlwg2BJ
 3KA4y9rVydEDZoP8zc>
X-ME-Received: <xmr:dlnYZmdQDCrwJgI57Ifoo-Z3UFAWXSV4uZ3kt4wDTZUVLbVHyxnrOL_JaAVOhC_lohRYbsiuVkjm1oijGhqUA5UfwN-HarqqF9lq2C9ZAfGVjw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepveefffefkeetgfevgeefleehfffhueejtdejveethfekveektdejjedvtdej
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:dlnYZgIyUq2jRpDx6i4L39KeYF5Pih5KY_KL-XcA-Vs9u5NXzyHl3A>
 <xmx:dlnYZjLbCLdYI_ckem2M_4b2KXd6vsZUJfJKwaFrRcjiT9rWgrf-KQ>
 <xmx:dlnYZpzcstINZJ46RaLTRM9DdPDCvv5LUZp2I4BxWNov7hU7EdiDUQ>
 <xmx:dlnYZvKnyYIwN5Gzbpu8pzpwsScSKNtBdXFJ1j5acMGHq2wtYwypdw>
 <xmx:dlnYZpi7SPgCf6SsSy1zkxh2g8AbW8jHwXi-oJWX2lTnxihWk5R5pSx7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Wed,
 4 Sep 2024 08:58:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/5] firewire: core: add local API to queue work item to
 workqueue specific to isochronous contexts
Date: Wed,  4 Sep 2024 21:58:21 +0900
Message-ID: <20240904125824.462786-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
References: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the previous commit,
 the workqueue is added per the instance
 of fw_card structure for isochronous contexts. The workqueue is designed
 to be used by the implementation of fw_card_driver structure un [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1slpaq-0000S9-Ll
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

In the previous commit, the workqueue is added per the instance of fw_card
structure for isochronous contexts. The workqueue is designed to be used by
the implementation of fw_card_driver structure underlying the fw_card.

This commit adds some local APIs to be used by the implementation.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 30 ++++++++++++++++++++++++++++--
 drivers/firewire/core.h     | 10 ++++++++++
 include/linux/firewire.h    |  1 +
 3 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 101433b8bb51..af76fa1823f1 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -211,21 +211,47 @@ EXPORT_SYMBOL(fw_iso_context_queue_flush);
 
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
+	if (WARN_ON(current_work() == &ctx->work))
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
 
 int fw_iso_context_stop(struct fw_iso_context *ctx)
 {
+	int err;
+
 	trace_isoc_outbound_stop(ctx);
 	trace_isoc_inbound_single_stop(ctx);
 	trace_isoc_inbound_multiple_stop(ctx);
 
-	return ctx->card->driver->stop_iso(ctx);
+	might_sleep();
+
+	// Avoid dead lock due to programming mistake.
+	if (WARN_ON(current_work() == &ctx->work))
+		return 0;
+
+	err = ctx->card->driver->stop_iso(ctx);
+
+	cancel_work_sync(&ctx->work);
+
+	return err;
 }
 EXPORT_SYMBOL(fw_iso_context_stop);
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 96ae366889e0..2874f316156a 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -159,6 +159,16 @@ int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count);
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction);
 
+static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_func_t func)
+{
+	INIT_WORK(&ctx->work, func);
+}
+
+static inline void fw_iso_context_queue_work(struct fw_iso_context *ctx)
+{
+	queue_work(ctx->card->isoc_wq, &ctx->work);
+}
+
 
 /* -topology */
 
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 10e135d60824..72f497b61739 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -511,6 +511,7 @@ union fw_iso_callback {
 
 struct fw_iso_context {
 	struct fw_card *card;
+	struct work_struct work;
 	int type;
 	int channel;
 	int speed;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
