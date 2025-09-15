Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C13B5888A
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G6+F4Orwn3BKnftOR2kUwukeZHjcORhMsVHO6Oqz5uw=; b=Rvr5P8hl2XhAVGFgS+1j2Fmm0X
	BoXzfZbzz8Gr6Hv17jeO/A7rwWQW1CajgFNTkaW4LOyUg85WTNYHY48Z0k9X0GkoB74lT5ubtOANy
	Mw7kw1Cako2Umof/Zmb1uOl6zI+4+9ZrrU7XD01ZDqBDfXBqfQuruLcYW/4sAUp96k90=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIva-0000Uy-I8;
	Mon, 15 Sep 2025 23:48:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIvZ-0000Um-2i
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ftRdwZYdPo5igfENPCqfeghdCxDccZ9UOFd6fov0EIE=; b=XhzV5a8sGq8uZ33iysceZ5uFlY
 mnpR8ik/5rHLZxVgzhbhQOiDlosdc9i0TnQHwX2qlvkWg11gE6YaI/fEKHnYR4lm/wIzfwi+MxDiG
 oONolkFOHvjaCumgoaERDkxzgvd2FL29yHlWposw/+f+tzMRN7obr33i5YnZQPYzifaw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ftRdwZYdPo5igfENPCqfeghdCxDccZ9UOFd6fov0EIE=; b=WJf5rWiJSR0jJGpMCvi9knPWRc
 cHMp1F+wAz+R6YMHWXAg64BUG/R7SpHOAB1WBvM39c0I8vSb+Fu/GBkbVxHEDMJuq2YFa07EIns+E
 JOBHRygEdR4PFUHz25fppP8ZWCrPI+f6MLr09T+IPR3RK5kkhLB10zWRzEjP8AlB6QF0=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIvY-0002KN-52 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:09 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id A37921D001B7;
 Mon, 15 Sep 2025 19:47:57 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Mon, 15 Sep 2025 19:47:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757980077; x=
 1758066477; bh=ftRdwZYdPo5igfENPCqfeghdCxDccZ9UOFd6fov0EIE=; b=p
 ywV4gCNyrk68zkwyUIwCL9BMtcUTqujSgeDdoA490/iHRipJirD0CmsCEXJd81l3
 q/vxmmfgZW8pS51F7tmTNSosSqa1oseA1WSVrk4ajA5vv1QBD5Up8FCJzBvrdhvX
 9Ar56LWOUbg8h/LD79k93Mbnai2y8P9DMW8ffIZJHiybLGwfPQWOX4AKNUQfDkwg
 7UCw64Rxg82BbJ8/X4A+YW40GRNi1zvaySWhJFuVeYR3caZeYAWhTofQ0O7sxb80
 VxiydZ5gSmEtRD9gi2Vqc1N87HEX61JQwtWvxaRj+ZE9IJHy8a2kYxkjgT4dhkuv
 MJ0dj4rFbB31WgbouazGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757980077; x=1758066477; bh=f
 tRdwZYdPo5igfENPCqfeghdCxDccZ9UOFd6fov0EIE=; b=bmS/Bh7bGeAdCpfuC
 ej14kHpghapfjS96YTApc6IDLCLkHOqEDvpXvm3+L2L5VInZ1pECYLcDlTm7vS7H
 CeaCRbK4ZbASgCSioO17eOUEWLYBRSXJDhndMdnktAtKLdeWGnPZfnzIELbj9jWD
 /BkGKtOcikKfwZ6/6VGU3RAz9hfl7z+nnVOMI7JODtC4oo5hL6TNZiI0TRusQ+ov
 wxA9VN5Xm6e85LOEemWBaFCpYp8gxd/OEpYEXgWQ3Nc3QRvgIHZM2xrNLsp3NQA0
 PLfoN/XkHb1lUjm69DZZHknxgDmQCQ0+c5m/kR7UaQO6uaNPF3+mQYq/UPh/OQOf
 YeZnw==
X-ME-Sender: <xms:raXIaDj4K1DFCUeuYzYPoGyfpQtxdCszls4P2nNh7kww7aAwmSNP1A>
 <xme:raXIaEXr8qTK8TzdjcwYA7VqGkJ2SVQoJWMvyPHhVsjDqBa_CQwdcn_MjTnsS2Kny
 jnB0zQ8zjxe8oe6FZk>
X-ME-Received: <xmr:raXIaCPd_g9101WQpK0IW1Zi90lwooYFpj8RRPDgkFUFnCtesI_c8GuqmqebvE3Zd8FjMFsBW41Ri1UkHwZiXzACbQ9BWwvwXY-2l02_RdH5LQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefledthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:raXIaIaRR7J0J7LKDcJV7-7c0KnrOSeY270ezrS3R9kw8NZaTMo9lg>
 <xmx:raXIaGpiPcV6cem81KYQMl-DMTGFUDoYi2RkDZsMwK8_eLN2GK2QgQ>
 <xmx:raXIaMamELAzxj5CZVw_jAsaqG-D3MfyWHhoUBU6O4Jr_vcrVpH94A>
 <xmx:raXIaORh1snPXAD5P8xbzppNtO_6olr-I1XQRo9i4w8HPNFlwmjn2Q>
 <xmx:raXIaMSpCeAXDwuvx6_ZVBcVMUdYp7fYpd3TCI2gsar6BvwBhgcQI5G6>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:47:56 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/6] firewire: core: use spin lock specific to transaction
Date: Tue, 16 Sep 2025 08:47:45 +0900
Message-ID: <20250915234747.915922-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
References: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The list of instance for asynchronous transaction to wait
 for response subaction is maintained as a member of fw_card structure. The
 card-wide spinlock is used at present for any operation over the li [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uyIvY-0002KN-52
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

The list of instance for asynchronous transaction to wait for response
subaction is maintained as a member of fw_card structure. The card-wide
spinlock is used at present for any operation over the list, however it
is not necessarily suited for the purpose.

This commit adds and uses the spin lock specific to maintain the list.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c        | 12 ++++--
 drivers/firewire/core-transaction.c | 59 ++++++++++++++++++-----------
 include/linux/firewire.h            | 10 +++--
 3 files changed, 51 insertions(+), 30 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 616abb836ef3..39f95007305f 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -544,8 +544,12 @@ void fw_card_initialize(struct fw_card *card,
 	card->index = atomic_inc_return(&index);
 	card->driver = driver;
 	card->device = device;
-	card->current_tlabel = 0;
-	card->tlabel_mask = 0;
+
+	card->transactions.current_tlabel = 0;
+	card->transactions.tlabel_mask = 0;
+	INIT_LIST_HEAD(&card->transactions.list);
+	spin_lock_init(&card->transactions.lock);
+
 	card->split_timeout_hi = DEFAULT_SPLIT_TIMEOUT / 8000;
 	card->split_timeout_lo = (DEFAULT_SPLIT_TIMEOUT % 8000) << 19;
 	card->split_timeout_cycles = DEFAULT_SPLIT_TIMEOUT;
@@ -555,7 +559,7 @@ void fw_card_initialize(struct fw_card *card,
 
 	kref_init(&card->kref);
 	init_completion(&card->done);
-	INIT_LIST_HEAD(&card->transaction_list);
+
 	spin_lock_init(&card->lock);
 
 	card->local_node = NULL;
@@ -772,7 +776,7 @@ void fw_core_remove_card(struct fw_card *card)
 	destroy_workqueue(card->isoc_wq);
 	destroy_workqueue(card->async_wq);
 
-	WARN_ON(!list_empty(&card->transaction_list));
+	WARN_ON(!list_empty(&card->transactions.list));
 }
 EXPORT_SYMBOL(fw_core_remove_card);
 
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 8edffafd21c1..5366d8a781ac 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -49,12 +49,14 @@ static int close_transaction(struct fw_transaction *transaction, struct fw_card
 {
 	struct fw_transaction *t = NULL, *iter;
 
-	scoped_guard(spinlock_irqsave, &card->lock) {
-		list_for_each_entry(iter, &card->transaction_list, link) {
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->transactions.lock) {
+		list_for_each_entry(iter, &card->transactions.list, link) {
 			if (iter == transaction) {
 				if (try_cancel_split_timeout(iter)) {
 					list_del_init(&iter->link);
-					card->tlabel_mask &= ~(1ULL << iter->tlabel);
+					card->transactions.tlabel_mask &= ~(1ULL << iter->tlabel);
 					t = iter;
 				}
 				break;
@@ -117,11 +119,11 @@ static void split_transaction_timeout_callback(struct timer_list *timer)
 	struct fw_transaction *t = timer_container_of(t, timer, split_timeout_timer);
 	struct fw_card *card = t->card;
 
-	scoped_guard(spinlock_irqsave, &card->lock) {
+	scoped_guard(spinlock_irqsave, &card->transactions.lock) {
 		if (list_empty(&t->link))
 			return;
 		list_del(&t->link);
-		card->tlabel_mask &= ~(1ULL << t->tlabel);
+		card->transactions.tlabel_mask &= ~(1ULL << t->tlabel);
 	}
 
 	if (!t->with_tstamp) {
@@ -259,18 +261,21 @@ static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
 }
 
 static int allocate_tlabel(struct fw_card *card)
+__must_hold(&card->transactions_lock)
 {
 	int tlabel;
 
-	tlabel = card->current_tlabel;
-	while (card->tlabel_mask & (1ULL << tlabel)) {
+	lockdep_assert_held(&card->transactions.lock);
+
+	tlabel = card->transactions.current_tlabel;
+	while (card->transactions.tlabel_mask & (1ULL << tlabel)) {
 		tlabel = (tlabel + 1) & 0x3f;
-		if (tlabel == card->current_tlabel)
+		if (tlabel == card->transactions.current_tlabel)
 			return -EBUSY;
 	}
 
-	card->current_tlabel = (tlabel + 1) & 0x3f;
-	card->tlabel_mask |= 1ULL << tlabel;
+	card->transactions.current_tlabel = (tlabel + 1) & 0x3f;
+	card->transactions.tlabel_mask |= 1ULL << tlabel;
 
 	return tlabel;
 }
@@ -331,7 +336,6 @@ void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode
 		void *payload, size_t length, union fw_transaction_callback callback,
 		bool with_tstamp, void *callback_data)
 {
-	unsigned long flags;
 	int tlabel;
 
 	/*
@@ -339,11 +343,11 @@ void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode
 	 * the list while holding the card spinlock.
 	 */
 
-	spin_lock_irqsave(&card->lock, flags);
-
-	tlabel = allocate_tlabel(card);
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->transactions.lock)
+		tlabel = allocate_tlabel(card);
 	if (tlabel < 0) {
-		spin_unlock_irqrestore(&card->lock, flags);
 		if (!with_tstamp) {
 			callback.without_tstamp(card, RCODE_SEND_ERROR, NULL, 0, callback_data);
 		} else {
@@ -368,15 +372,22 @@ void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode
 	t->callback = callback;
 	t->with_tstamp = with_tstamp;
 	t->callback_data = callback_data;
-
-	fw_fill_request(&t->packet, tcode, t->tlabel, destination_id, card->node_id, generation,
-			speed, offset, payload, length);
 	t->packet.callback = transmit_complete_callback;
 
-	list_add_tail(&t->link, &card->transaction_list);
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->lock) {
+		// The node_id field of fw_card can be updated when handling SelfIDComplete.
+		fw_fill_request(&t->packet, tcode, t->tlabel, destination_id, card->node_id,
+				generation, speed, offset, payload, length);
+	}
 
-	spin_unlock_irqrestore(&card->lock, flags);
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->transactions.lock)
+		list_add_tail(&t->link, &card->transactions.list);
 
+	// Safe with no lock, since the index field of fw_card is immutable once assigned.
 	trace_async_request_outbound_initiate((uintptr_t)t, card->index, generation, speed,
 					      t->packet.header, payload,
 					      tcode_is_read_request(tcode) ? 0 : length / 4);
@@ -1111,12 +1122,14 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 		break;
 	}
 
-	scoped_guard(spinlock_irqsave, &card->lock) {
-		list_for_each_entry(iter, &card->transaction_list, link) {
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+	// local destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->transactions.lock) {
+		list_for_each_entry(iter, &card->transactions.list, link) {
 			if (iter->node_id == source && iter->tlabel == tlabel) {
 				if (try_cancel_split_timeout(iter)) {
 					list_del_init(&iter->link);
-					card->tlabel_mask &= ~(1ULL << iter->tlabel);
+					card->transactions.tlabel_mask &= ~(1ULL << iter->tlabel);
 					t = iter;
 				}
 				break;
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index aeb71c39e57e..8d6801cf2fca 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -88,11 +88,15 @@ struct fw_card {
 
 	int node_id;
 	int generation;
-	int current_tlabel;
-	u64 tlabel_mask;
-	struct list_head transaction_list;
 	u64 reset_jiffies;
 
+	struct {
+		int current_tlabel;
+		u64 tlabel_mask;
+		struct list_head list;
+		spinlock_t lock;
+	} transactions;
+
 	u32 split_timeout_hi;
 	u32 split_timeout_lo;
 	unsigned int split_timeout_cycles;
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
