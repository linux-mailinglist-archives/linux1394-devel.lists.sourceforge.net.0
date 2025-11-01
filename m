Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6ADC27B9D
	for <lists+linux1394-devel@lfdr.de>; Sat, 01 Nov 2025 11:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=akzrJ5KLO6VHjGXP9No9B3NQtKqH1fsO695NT9xrcn4=; b=XpQxVyfUH3b+vWUWxqa7eglljn
	fh/CyuMTPfKajrE8zt3OEI+9JZ1VMZMFkXqbNlZUCbMJnwj+YukfqN5eKl3e0+FIQZdumkuDb/rcd
	/bqi+fyJ2x2QEbqig+M7bGhpy1epY8ZM+lCojIIVyLjckJNHjZM7CW3vjqgbM9Kc3Nak=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vF8jy-00032w-9r;
	Sat, 01 Nov 2025 10:21:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vF8jw-00032j-N9
 for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Nov 2025 10:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VDehe93yxTJXuOHBmVVwaEhZloz0X+dnzSOWWU6PpS0=; b=S+vNn9R+beVhhq84oBLmJVBLux
 +CAS+wIKbsiaq/Ldw47QWnygshrhGJzBVk4xTxTw+vWx1wQ5fAwWjdVxBCRBHcZzHHtZXi8Mh50P1
 gIGPsvoLF1Gd2o9p1mRW9F4p5fVE9voeIMI4c98/P3sWLD9iDjqUrVnqX2ItYDB4LcMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VDehe93yxTJXuOHBmVVwaEhZloz0X+dnzSOWWU6PpS0=; b=WwtKmGtonM6ml3AsmLApqjZzzT
 kAXawxWmoNWIIhtcrcrwmFQTjJmTzjAu/eCuzv4XBLNIU+gtbIhbaCTdvbS1Zn5xMd5MxX1lGs+3G
 0YhmeirSqUzxBxdTFoMc7CSlZYHNannk+HLstZwj4OGQzOB7vSgL7o1e+MNV6Tft0nGs=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vF8jw-0001pa-6a for linux1394-devel@lists.sourceforge.net;
 Sat, 01 Nov 2025 10:21:44 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id 7CC33EC00DA;
 Sat,  1 Nov 2025 06:21:38 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Sat, 01 Nov 2025 06:21:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1761992498; x=
 1762078898; bh=VDehe93yxTJXuOHBmVVwaEhZloz0X+dnzSOWWU6PpS0=; b=d
 pRB9xT/th3Z6KGq5FNgfkfDwJ3WHxkIt7OhcjRU15s7Fpchf3iyDXD+VSnJVbizU
 co/SeFl7eG5u7N0IskowZYp5WLBFvdwJvSr8U1ODR9GfUH/ROXluE4t+WfZYxNk8
 pYppYckAb65PL5HBz/4QzBwy4j1C9i9AsGCbJ4nWJj0/otcuwL67XkeVAHkbp9mx
 5OltfhCIAwhGPFNILM8hbg6A52AQss33QGv2V8LMkJxLtbcndTIVp2ZmUiAOD5mE
 BbtHsfQCyTt4s2lkeqMq+Fz0+dBSO0HiHwtbuiM31KRxxojjJragoWc4Jo1ekfrM
 2NITtTE2xFpVfjwJAVSbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1761992498; x=1762078898; bh=V
 Dehe93yxTJXuOHBmVVwaEhZloz0X+dnzSOWWU6PpS0=; b=3OGk3FwtFXjnGr/w+
 zxx4x8lHuoJR9EDRb9VOqWqscWa7yuvG60Zl4cbufXgAtatInHkV954PV0ggH0UF
 q6A5fb9Jqgo03AOkJYkXpmjkCn1/viNMlFngw9nYXqzc0cVKKN7jGsfiY1eppJve
 9oWNkqzpkpEe9x9/NKf5J1uBTqLsP9k5lR1tBskvqAU67zCh2z6/WFmT3j/jo7e+
 Yef8VnC1IpGB3G7OLvxQfyKEx4W03UFLYtX4gbHLrDw1v8OM5dtItVGnYjD4e0uE
 T+hamhZxhrj9Px8pEvkyVhy0ajcXDV5aklcIkFMl7N4xKrB6SgaG5VufhnuQ1rXG
 pvVVw==
X-ME-Sender: <xms:Mt8FaZ7sCbtqHB1xpkHUsN-owZnC8_0dOagWNlmEPdDJqF5syOmYhA>
 <xme:Mt8FaU38UdsKQYTdRcYHmfPRrYgyhr2RXHsRkgaZwE774g_ECo6wxOmNfpCMwZ1Os
 1GyqVZa19yvsfgGTOrHBx1S0HPI1LAxhAQJg5Z_r3uNn0ujSWme-_E>
X-ME-Received: <xmr:Mt8FaYAYWFGJR5jz8yGn0Mm2eUcWpBMkm3fhpPtI4PXFs2GMGaZRMrtxWiFSk9nuiUnKUyC4JGpqqxGUKh6MXp4wV7WBCvPOiPt4v4DLcJQMrLI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujedvuddvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Mt8Fae1ZHfxfqSR6I-BIcZuwQAMTOuH2veVvLfM8d2HQAB1rVo_Quw>
 <xmx:Mt8FaavqWv9Fz3Yxxa54fOLEJuQu-d_3Fx3wDkmUX2t-9IolQ5_5TA>
 <xmx:Mt8FaW6EAbr3pkffNGN0-aqOrP8yEA9GDFK7eXURSjI6hIHHBz6A-g>
 <xmx:Mt8FaTI_hj3j0oZJjj_l9btdD8Gm9-WWSGOi8zYDEWn-wrFV_cFEvA>
 <xmx:Mt8Faat8CYe-5aBVKv5dprVZiT_NrgrqoYwh4lmGGsw0rlhOo4DTYPiV>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 1 Nov 2025 06:21:37 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: code refactoring to find and pop
 transaction entry
Date: Sat,  1 Nov 2025 19:21:31 +0900
Message-ID: <20251101102131.925071-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251101102131.925071-1-o-takashi@sakamocchi.jp>
References: <20251101102131.925071-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The list operation to find and pop transaction entry appears
 several times in transaction implementation, and can be replaced with a helper
 functional macro. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-transaction.c | 45 ++++++++++++++ 1 file changed,
 22 insertions(+), 23 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vF8jw-0001pa-6a
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

The list operation to find and pop transaction entry appears several
times in transaction implementation, and can be replaced with a helper
functional macro.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 45 ++++++++++++++---------------
 1 file changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 8bd79c3f97f2..e80791d6d46b 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -51,28 +51,34 @@ static void remove_transaction_entry(struct fw_card *card, struct fw_transaction
 	card->transactions.tlabel_mask &= ~(1ULL << entry->tlabel);
 }
 
+// card->transactions.lock must be acquired in advance.
+#define find_and_pop_transaction_entry(card, condition)			\
+({									\
+	struct fw_transaction *iter, *t = NULL;				\
+	list_for_each_entry(iter, &card->transactions.list, link) {	\
+		if (condition) {					\
+			t = iter;					\
+			break;						\
+		}							\
+	}								\
+	if (t && try_cancel_split_timeout(t))				\
+		remove_transaction_entry(card, t);			\
+	t;								\
+})
+
 static int close_transaction(struct fw_transaction *transaction, struct fw_card *card, int rcode,
 			     u32 response_tstamp)
 {
-	struct fw_transaction *t = NULL, *iter;
+	struct fw_transaction *t;
 
 	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
 	// local destination never runs in any type of IRQ context.
 	scoped_guard(spinlock_irqsave, &card->transactions.lock) {
-		list_for_each_entry(iter, &card->transactions.list, link) {
-			if (iter == transaction) {
-				if (try_cancel_split_timeout(iter)) {
-					remove_transaction_entry(card, iter);
-					t = iter;
-				}
-				break;
-			}
-		}
+		t = find_and_pop_transaction_entry(card, iter == transaction);
+		if (!t)
+			return -ENOENT;
 	}
 
-	if (!t)
-		return -ENOENT;
-
 	if (!t->with_tstamp) {
 		t->callback.without_tstamp(card, rcode, NULL, 0, t->callback_data);
 	} else {
@@ -1102,7 +1108,7 @@ EXPORT_SYMBOL(fw_core_handle_request);
 
 void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 {
-	struct fw_transaction *t = NULL, *iter;
+	struct fw_transaction *t = NULL;
 	u32 *data;
 	size_t data_length;
 	int tcode, tlabel, source, rcode;
@@ -1144,15 +1150,8 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
 	// local destination never runs in any type of IRQ context.
 	scoped_guard(spinlock_irqsave, &card->transactions.lock) {
-		list_for_each_entry(iter, &card->transactions.list, link) {
-			if (iter->node_id == source && iter->tlabel == tlabel) {
-				if (try_cancel_split_timeout(iter)) {
-					remove_transaction_entry(card, iter);
-					t = iter;
-				}
-				break;
-			}
-		}
+		t = find_and_pop_transaction_entry(card,
+				iter->node_id == source && iter->tlabel == tlabel);
 	}
 
 	trace_async_response_inbound((uintptr_t)t, card->index, p->generation, p->speed, p->ack,
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
