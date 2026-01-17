Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 234EFD38F10
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/6K2Q6hJKHEVbIg0e+cfBpBphs5PXXYMqKusfflGey0=; b=Bgc3xj1mimLqGgAimTJ/jwaRwZ
	kAT6Nnz6GDczFs6oT55WCwtg6mq6uYA+3IQyy6t8Fr27+VdeJ9+g4ZCSVYl6+SGSiAMbjDIcf1cq9
	1a9Hb1Peef1utRY/f55IGNZ0SINr/nRei6X5tw7Hs0homW9lVy5AmyVl6ZCWkf1FafvU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7I9-0005kY-PY;
	Sat, 17 Jan 2026 14:28:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7I2-0005jx-Et
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lvRfBrlvRRPoHNtRWkEdJUuLKtA3LQo+I81Hje9C4Ek=; b=bKphBdjwc1Cq6TdHBdf4oRXy0Z
 qlwqLNMsA2tijcXzzJvjVr+aFByTNpSA5os6QQ0jjibVPdjSWEoDZoMTSp8BOXYVNt27XQOZJV7ao
 FH9HopLuz4BpiO6ykJMcTLqBMzQulqSkcXkqCs6wZNymdvd2KbFuxP0a+Cu3iN6Avnjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lvRfBrlvRRPoHNtRWkEdJUuLKtA3LQo+I81Hje9C4Ek=; b=TnClo9myuTFxh44O8R32/U7EMR
 d6Drd/YJzfrNnDL6M5T59nG2DgAGVjkTxOxflO0f3z5+t3Dw5VjSfnak2I/gFrTSeZ0yXZxbsj1xo
 K2sliMH8+3549r7dIIua40+SqKjquzbj1rJbMGmAtrSxb2PwEjnGmdNc7dg/ggsMCVQM=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7I2-0001Vq-GY for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:35 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id D66AA7A0322;
 Sat, 17 Jan 2026 09:28:28 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Sat, 17 Jan 2026 09:28:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660108; x=
 1768746508; bh=lvRfBrlvRRPoHNtRWkEdJUuLKtA3LQo+I81Hje9C4Ek=; b=p
 at3ZSGWYJoqfjj+8HLBCJcqZbtaXosidI4p7eUG9d6qBn91nuSjPgov2Io3gXcMe
 CRSZek8jhAG+nk6NjZMplIegfHDwQ4lI9WoCZEiYjUoMH+gPm4lEY56GjKa9sTXQ
 dumjoB8VCubvEslnbzo0qv6AXoSsOUiPF+1XtTIs6O+shmXqt+7p29NlfSlxtZUm
 b+sBZ1bb654xn9hKU/ki2x9TONsyGzVz1vaD+WIfxnwlbtHOD2JGDSZcVs+JHB38
 U0XONvF8YyqjOkKaXn6nZB7E8Pv1JoUEUlHr2oC9j4tBRVp95/hOc3TCcGxzwVG2
 Mov2+ruqNdERhnwADKS/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660108; x=1768746508; bh=l
 vRfBrlvRRPoHNtRWkEdJUuLKtA3LQo+I81Hje9C4Ek=; b=KYCU2dw4epwJHCeiP
 PXAQ1qehluCjiAg+TfUPOr/L1ys9ghAzn8BpQB/42IyAQvbPAkemFN0ZanyGNDYK
 0z7975gr46Jqo6Tso9ipvBQlJ+MmGlVHeVCthYnEWV4166TIquA/m9doGyqwN+RX
 pyTF3jJOqxbN37YLfrQ2DscB3R3SpJtCDry/3vKvjcbZbqO/WGrKN58y1SNr8NPN
 Zd96RQwhJhqvekTC/0LxgKWzd7ddHY3YXtK74X9L+pJmH/RAWw+nnRoUpCO3uZrh
 RYr7bjvH7NlWe/fiy9SUwwxYvgOTR2NzMsitwLp6nMT5w5f9t9aHqooEkAVxI9Jj
 EvDcw==
X-ME-Sender: <xms:jJxraR3ANTfBwL4vzVQJi_kuiIMscitMDeewbkCZU4ZiHp3CMDSJKg>
 <xme:jJxraYNbyhdinTQZMDrfO_ma3WmKzvDTWzLZe0scJe6tvQnidopRaEFIuizsz95kk
 PBCLL9wP5qSN-HgA8ya-5P67FdHpHxLSp_Aafv_XxASGgbzYV4bBw>
X-ME-Received: <xmr:jJxraZ2y91MWISqKeGnHkp6VgVup6Tio1mGx08QePT0_vfSctUxJv-wBpuds9vI3iqqCFpEOu3FN8iLAFWmr5Uwou3qdYscO6ePvjgPZ5YN70A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:jJxraXHb2nzqrHKT3oDvcaTOXKqV-jbpFfgjYjlhHtJy_RWfGvwrlg>
 <xmx:jJxrae4CbYLrvSL9tJuP2Klmz6J5ohXH39KVnId_CqYctsr5VSMs_Q>
 <xmx:jJxraVshlGn3-WSIopUmpkxfMXk6A3lGWlt-5Zzm-uXyrKnRYSr_7g>
 <xmx:jJxraX4rL2GBEYKbQ1BnsnejQO4h9wx-s__vJhY-B5vv5cCvjYYLuQ>
 <xmx:jJxraXrL9Vebh2BYZv2a2MHLbipfvmD_bG56rChqPqbhOZa_IHuea8GH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:27 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/9] firewire: core: add function variants for isochronous
 context creation
Date: Sat, 17 Jan 2026 23:28:14 +0900
Message-ID: <20260117142823.440811-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
References: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The fw_iso_callback union was added by a commit ebe4560ed5c
 ("firewire: Remove function callback casts") to remove function pointer cast.
 That change affected the cdev layer of the core code, but it is more convenient
 for fw_iso_context_create() to accept the union directly. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vh7I2-0001Vq-GY
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

The fw_iso_callback union was added by a commit ebe4560ed5c ("firewire:
Remove function callback casts") to remove function pointer cast.

That change affected the cdev layer of the core code, but it is more
convenient for fw_iso_context_create() to accept the union directly.

This commit renames and changes the existing function to take the union
argument, and add static inline wrapper functions as variants.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 28 +++-------------------------
 drivers/firewire/core-iso.c  |  9 ++++-----
 drivers/firewire/core.h      |  9 +++++++++
 include/linux/firewire.h     | 14 +++++++++++---
 4 files changed, 27 insertions(+), 33 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index bb4d0f938f5b..c26bea253208 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1026,25 +1026,10 @@ static enum dma_data_direction iso_dma_direction(struct fw_iso_context *context)
 			return DMA_FROM_DEVICE;
 }
 
-static struct fw_iso_context *fw_iso_mc_context_create(struct fw_card *card,
-						fw_iso_mc_callback_t callback,
-						void *callback_data)
-{
-	struct fw_iso_context *ctx;
-
-	ctx = fw_iso_context_create(card, FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL,
-				    0, 0, 0, NULL, callback_data);
-	if (!IS_ERR(ctx))
-		ctx->callback.mc = callback;
-
-	return ctx;
-}
-
 static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 {
 	struct fw_cdev_create_iso_context *a = &arg->create_iso_context;
 	struct fw_iso_context *context;
-	union fw_iso_callback cb;
 	int ret;
 
 	BUILD_BUG_ON(FW_CDEV_ISO_CONTEXT_TRANSMIT != FW_ISO_CONTEXT_TRANSMIT ||
@@ -1056,20 +1041,15 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	case FW_ISO_CONTEXT_TRANSMIT:
 		if (a->speed > SCODE_3200 || a->channel > 63)
 			return -EINVAL;
-
-		cb.sc = iso_callback;
 		break;
 
 	case FW_ISO_CONTEXT_RECEIVE:
 		if (a->header_size < 4 || (a->header_size & 3) ||
 		    a->channel > 63)
 			return -EINVAL;
-
-		cb.sc = iso_callback;
 		break;
 
 	case FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL:
-		cb.mc = iso_mc_callback;
 		break;
 
 	default:
@@ -1077,12 +1057,10 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 	}
 
 	if (a->type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL)
-		context = fw_iso_mc_context_create(client->device->card, cb.mc,
-						   client);
+		context = fw_iso_mc_context_create(client->device->card, iso_mc_callback, client);
 	else
-		context = fw_iso_context_create(client->device->card, a->type,
-						a->channel, a->speed,
-						a->header_size, cb.sc, client);
+		context = fw_iso_context_create(client->device->card, a->type, a->channel, a->speed,
+						a->header_size, iso_callback, client);
 	if (IS_ERR(context))
 		return PTR_ERR(context);
 	if (client->version < FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW)
diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index 3f36243ec0c1..d9b8896c8ce1 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -137,9 +137,8 @@ size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed)
 	return 0;
 }
 
-struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
-		int type, int channel, int speed, size_t header_size,
-		fw_iso_callback_t callback, void *callback_data)
+struct fw_iso_context *__fw_iso_context_create(struct fw_card *card, int type, int channel,
+		int speed, size_t header_size, union fw_iso_callback callback, void *callback_data)
 {
 	struct fw_iso_context *ctx;
 
@@ -153,7 +152,7 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 	ctx->channel = channel;
 	ctx->speed = speed;
 	ctx->header_size = header_size;
-	ctx->callback.sc = callback;
+	ctx->callback = callback;
 	ctx->callback_data = callback_data;
 
 	trace_isoc_outbound_allocate(ctx, channel, speed);
@@ -162,7 +161,7 @@ struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 
 	return ctx;
 }
-EXPORT_SYMBOL(fw_iso_context_create);
+EXPORT_SYMBOL(__fw_iso_context_create);
 
 void fw_iso_context_destroy(struct fw_iso_context *ctx)
 {
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 26868f007131..e0ae948605e1 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -173,6 +173,15 @@ static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_fun
 	INIT_WORK(&ctx->work, func);
 }
 
+static inline struct fw_iso_context *fw_iso_mc_context_create(struct fw_card *card,
+		fw_iso_mc_callback_t callback, void *callback_data)
+{
+	union fw_iso_callback cb = { .mc = callback };
+
+	return __fw_iso_context_create(card, FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL, 0, 0, 0, cb,
+				       callback_data);
+}
+
 
 /* -topology */
 
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 09c8484f7430..68161b8a8a58 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -558,9 +558,8 @@ struct fw_iso_context {
 	void *callback_data;
 };
 
-struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
-		int type, int channel, int speed, size_t header_size,
-		fw_iso_callback_t callback, void *callback_data);
+struct fw_iso_context *__fw_iso_context_create(struct fw_card *card, int type, int channel,
+		int speed, size_t header_size, union fw_iso_callback callback, void *callback_data);
 int fw_iso_context_set_channels(struct fw_iso_context *ctx, u64 *channels);
 int fw_iso_context_queue(struct fw_iso_context *ctx,
 			 struct fw_iso_packet *packet,
@@ -569,6 +568,15 @@ int fw_iso_context_queue(struct fw_iso_context *ctx,
 void fw_iso_context_queue_flush(struct fw_iso_context *ctx);
 int fw_iso_context_flush_completions(struct fw_iso_context *ctx);
 
+static inline struct fw_iso_context *fw_iso_context_create(struct fw_card *card, int type,
+		int channel, int speed, size_t header_size, fw_iso_callback_t callback,
+		void *callback_data)
+{
+	union fw_iso_callback cb = { .sc = callback };
+
+	return __fw_iso_context_create(card, type, channel, speed, header_size, cb, callback_data);
+}
+
 /**
  * fw_iso_context_schedule_flush_completions() - schedule work item to process isochronous context.
  * @ctx: the isochronous context
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
