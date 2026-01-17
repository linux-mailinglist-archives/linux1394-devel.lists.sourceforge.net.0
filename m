Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC9DD38F11
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ylXvwbmPg0z31yvpOH/X0BhROglgI3zpLJx40fsWKVY=; b=QQKVHPk8UP/6f5tf2bEbmZiC9O
	L7SLIhrSQtoFEUWpU06FTah01O1aggI6oZp3eSWFA7bM3oxx+6OiAXDXsRNk5/YWzgs8i93z0Ousi
	9AHc5WZdLKWUx2qWYm3PDxuB4cEB7wH5NGxGgjZbN+Gk6OYEU/8/tHmaMcEEiRJsfPng=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7IF-0005da-37;
	Sat, 17 Jan 2026 14:28:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7ID-0005dK-DY
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sXsLq3IZoGvB6vceJiH6t/T7rkt89IB3p1KmJSv+MW8=; b=l83S/CWJ7dGPlJpnLNvyzdxUFA
 60vtpUrczBxtDj6+nI2vldZ51pBfY/q5uXAh1cme/1WKnZIuzn52mGEzSo7bLsIeBno/4/KK9bHuz
 VCqkkAilhlbKaXx2Hrid/XvrpH+Q5DJwFzGu3M/GRzGicF7HonvfP5Cvs5YYX0/8oKJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sXsLq3IZoGvB6vceJiH6t/T7rkt89IB3p1KmJSv+MW8=; b=mFbp0tit1VDa+rdaFV/Tz856B2
 OFAdL7v9Xk093j3drL3Qb2i7jhBqPR0a9XmvfKWHZFcb3FflI0c/V9U43H0+99xcUQAYCPhCp8U3i
 XL7mH4QeJ81ICavRcKHZYJxYOAtGGauZ6GnqY1JZO8aaAV20TnhBhrdbv91bvcRv7zH0=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7IC-0001WH-1g for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:44 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 861717A0322;
 Sat, 17 Jan 2026 09:28:38 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sat, 17 Jan 2026 09:28:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660118; x=
 1768746518; bh=sXsLq3IZoGvB6vceJiH6t/T7rkt89IB3p1KmJSv+MW8=; b=D
 xN/I+KuhHoq/GU4pOPOwzT4YYP4r9+hxzbkEk2JU/mhwIZ+JId1ZQON1vSD7DWu0
 UXLUqxHpfVKTu1jwl2QCPoAgDkjA/5600LS5x8v5R5m8NdJ9gs5K6RMw/voMiGYz
 JE6dCHSI3L+Urwc2SbP59AJ44zTPbyjO65R4RWQb3eP1Mkcwx6EtOTBv7Wp+Gxyn
 f7Dz89egbYlvcMH6Hotcp1ZqXlC8XZF1u6c51RGby1R0S+YqOGttrrvLKxgeVZSt
 XMThyvxWIJHtjBoN5rthbzB9yjT/TVUUQ18RAMQgJtYmLtH6vgP2tEjb0WrJHoTG
 kGD9KY/YVCWCjELtN8K0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660118; x=1768746518; bh=s
 XsLq3IZoGvB6vceJiH6t/T7rkt89IB3p1KmJSv+MW8=; b=g6PQOzyWc+kbNinuu
 N4SLuf6iPgyt77DoYvAuZVRMxGnVxp86iY6ApA8QiV250xYwcmoXjGyXy2+Gdfc8
 WU48CoSQ0RCCcarH/OC5WgTiP2ZUUPWDFZRc6XkF5snar2q62Qt0Z/2MMFX9N9O+
 1eprt48vsBGJ/UsTJHIl79wRbz5CxmBS0wZDo85z1ktAdnJ41tQSDyUPvI7WX66E
 ZFp1MVjnMFVvFeGnrvXamWWIZ0+qewqPOezg7ux+V07Ei8X4eC/dTemC+JdLp7Tj
 XX/S9FdCxF7gQFZhhORKVENBz3uZ2/Z75MEAIjw9C8YSY4B7se0fnxFwpM5ZiuEm
 P0Heg==
X-ME-Sender: <xms:lpxraRo3rhYXStUCJsvni4CUw7ckVXhBGk4sH-ORR4QSjjWVk0SHhw>
 <xme:lpxraTxTOJA3tMmjseoJD9LDMUdP75Q1inMO1wLjXT_OBhP6kBWZNzhjgf2FmAj2O
 _XDBn5hSdkVLCiNmrLulUFjl6-r891_bbcx9I7-Lxzrx-NiYt2oww>
X-ME-Received: <xmr:lpxraWJi5jNawPpTwpVQ6vyGcVfUvxayqwZ4wcj86VgQ1xNntO-KWX3suM6q_BKJ8Ga5DowelmfC6fxqQb8cPT1j6Pf-WUgrp8ToCFjqK_42Fw>
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
X-ME-Proxy: <xmx:lpxraVKwAieu3aMLAyFHwfVV-1x77ylDaLbXXSitCWNbxD8d59WKqg>
 <xmx:lpxrabvMEByKhZuexSKTzNzqcv6k0THh_Xo97qE9c_NWKHb5-2A0uA>
 <xmx:lpxraaQ7m8psQT_NYlkqNPmBT0M9EGYxyGxVQapn-pPDIOxm207ang>
 <xmx:lpxraZPyHpwpdJdV_CkJwrriSrFKvQtsDR5QczYZ5LjuVkQ9LZlStA>
 <xmx:lpxrabv9dF6_xNFVMYweAM_gXzrdlBLvAsQNuU1n5j-kOaZv3YRnGsQD>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:37 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 7/9] firewire: core: provide isoc header buffer size outside
 card driver
Date: Sat, 17 Jan 2026 23:28:20 +0900
Message-ID: <20260117142823.440811-8-o-takashi@sakamocchi.jp>
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
 Content preview:  For single-channel isochronous contexts, the header storage
 size is hard-coded to PAGE_SIZE. which is inconvenient for protocol
 implementations
 requiring more space. This commit refactors the code to obtain the header
 storage size outside the 1394 OHCI driver. 
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
X-Headers-End: 1vh7IC-0001WH-1g
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

For single-channel isochronous contexts, the header storage size is
hard-coded to PAGE_SIZE. which is inconvenient for protocol
implementations requiring more space.

This commit refactors the code to obtain the header storage size outside
the 1394 OHCI driver.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c |  4 ++--
 drivers/firewire/core-iso.c  |  8 +++++---
 drivers/firewire/core.h      |  6 +++---
 drivers/firewire/ohci.c      | 10 +++++-----
 include/linux/firewire.h     |  7 +++++--
 5 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 0462d7b9e547..a754c6366b97 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -704,8 +704,8 @@ static int dummy_enable_phys_dma(struct fw_card *card,
 	return -ENODEV;
 }
 
-static struct fw_iso_context *dummy_allocate_iso_context(struct fw_card *card,
-				int type, int channel, size_t header_size)
+static struct fw_iso_context *dummy_allocate_iso_context(struct fw_card *card, int type,
+		int channel, size_t header_size, size_t header_storage_size)
 {
 	return ERR_PTR(-ENODEV);
 }
diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index fbbd14d21ca4..3190b2ca1298 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -138,12 +138,13 @@ size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed)
 }
 
 struct fw_iso_context *__fw_iso_context_create(struct fw_card *card, int type, int channel,
-		int speed, size_t header_size, union fw_iso_callback callback, void *callback_data)
+		int speed, size_t header_size, size_t header_storage_size,
+		union fw_iso_callback callback, void *callback_data)
 {
 	struct fw_iso_context *ctx;
 
-	ctx = card->driver->allocate_iso_context(card,
-						 type, channel, header_size);
+	ctx = card->driver->allocate_iso_context(card, type, channel, header_size,
+						 header_storage_size);
 	if (IS_ERR(ctx))
 		return ctx;
 
@@ -153,6 +154,7 @@ struct fw_iso_context *__fw_iso_context_create(struct fw_card *card, int type, i
 	ctx->speed = speed;
 	ctx->flags = 0;
 	ctx->header_size = header_size;
+	ctx->header_storage_size = header_storage_size;
 	ctx->callback = callback;
 	ctx->callback_data = callback_data;
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index e0ae948605e1..8b49d7480c37 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -100,8 +100,8 @@ struct fw_card_driver {
 	void (*write_csr)(struct fw_card *card, int csr_offset, u32 value);
 
 	struct fw_iso_context *
-	(*allocate_iso_context)(struct fw_card *card,
-				int type, int channel, size_t header_size);
+	(*allocate_iso_context)(struct fw_card *card, int type, int channel, size_t header_size,
+				size_t header_storage_size);
 	void (*free_iso_context)(struct fw_iso_context *ctx);
 
 	int (*start_iso)(struct fw_iso_context *ctx,
@@ -178,7 +178,7 @@ static inline struct fw_iso_context *fw_iso_mc_context_create(struct fw_card *ca
 {
 	union fw_iso_callback cb = { .mc = callback };
 
-	return __fw_iso_context_create(card, FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL, 0, 0, 0, cb,
+	return __fw_iso_context_create(card, FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL, 0, 0, 0, 0, cb,
 				       callback_data);
 }
 
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 888c43940999..1c868c1e4a49 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2755,7 +2755,7 @@ static void copy_iso_headers(struct iso_context *ctx, const u32 *dma_hdr)
 {
 	u32 *ctx_hdr;
 
-	if (ctx->sc.header_length + ctx->base.header_size > PAGE_SIZE) {
+	if (ctx->sc.header_length + ctx->base.header_size > ctx->base.header_storage_size) {
 		if (ctx->base.flags & FW_ISO_CONTEXT_FLAG_DROP_OVERFLOW_HEADERS)
 			return;
 		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW);
@@ -2924,7 +2924,7 @@ static int handle_it_packet(struct context *context,
 
 	sync_it_packet_for_cpu(context, d);
 
-	if (ctx->sc.header_length + 4 > PAGE_SIZE) {
+	if (ctx->sc.header_length + 4 > ctx->base.header_storage_size) {
 		if (ctx->base.flags & FW_ISO_CONTEXT_FLAG_DROP_OVERFLOW_HEADERS)
 			return 1;
 		flush_iso_completions(ctx, FW_ISO_CONTEXT_COMPLETIONS_CAUSE_HEADER_OVERFLOW);
@@ -2954,8 +2954,8 @@ static void set_multichannel_mask(struct fw_ohci *ohci, u64 channels)
 	ohci->mc_channels = channels;
 }
 
-static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
-				int type, int channel, size_t header_size)
+static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card, int type, int channel,
+		size_t header_size, size_t header_storage_size)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
 	void *header __free(kvfree) = NULL;
@@ -3016,7 +3016,7 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 
 	if (type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
 		ctx->sc.header_length = 0;
-		header = kvmalloc(PAGE_SIZE, GFP_KERNEL);
+		header = kvmalloc(header_storage_size, GFP_KERNEL);
 		if (!header) {
 			ret = -ENOMEM;
 			goto out;
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 71d5cc8f28ce..8bf568471588 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -558,12 +558,14 @@ struct fw_iso_context {
 	int speed;
 	int flags;
 	size_t header_size;
+	size_t header_storage_size;
 	union fw_iso_callback callback;
 	void *callback_data;
 };
 
 struct fw_iso_context *__fw_iso_context_create(struct fw_card *card, int type, int channel,
-		int speed, size_t header_size, union fw_iso_callback callback, void *callback_data);
+		int speed, size_t header_size, size_t header_storage_size,
+		union fw_iso_callback callback, void *callback_data);
 int fw_iso_context_set_channels(struct fw_iso_context *ctx, u64 *channels);
 int fw_iso_context_queue(struct fw_iso_context *ctx,
 			 struct fw_iso_packet *packet,
@@ -578,7 +580,8 @@ static inline struct fw_iso_context *fw_iso_context_create(struct fw_card *card,
 {
 	union fw_iso_callback cb = { .sc = callback };
 
-	return __fw_iso_context_create(card, type, channel, speed, header_size, cb, callback_data);
+	return __fw_iso_context_create(card, type, channel, speed, header_size, PAGE_SIZE, cb,
+				       callback_data);
 }
 
 /**
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
