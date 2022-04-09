Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A79B34FA240
	for <lists+linux1394-devel@lfdr.de>; Sat,  9 Apr 2022 06:13:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nd2TC-0007Oz-Q7; Sat, 09 Apr 2022 04:13:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nd2T9-0007Oq-Q3
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Apr 2022 04:13:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xjv7PryUnQ/sSS2IjRh4IzsfRmPzJsgIJAyISLxo2oQ=; b=UpWNnj7gXcY8q7+Xo3qO5GIcf7
 E1whCqLQ6Rq1dTvaVrWOv7z3z4CGULrp8jH3aj7DMTNgRfbQMvwkKZS62xSDF72uB/B4TOH659RBZ
 9GUUDUc7R0pNT8/GCmiybXwafTHtPutbQfsp81MYdJGRHRQFwjEJHuV/d1jt5sk8Yl0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xjv7PryUnQ/sSS2IjRh4IzsfRmPzJsgIJAyISLxo2oQ=; b=W4M6BA3x7sM/NJ3edSquriWKvR
 WaLBHRsPjvO2Wr74TW/kc65al5su0Dq9P9A2Inhv+Ybj/k5HF9JliE5gJCNTYOYZYfjvPczdtgjli
 OSk6UieHqiO/TsoOa6/9Ux+GJ+/Wvv5rIzeOSlXuWantquPFcMOARAztEFKUng+W5xfw=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nd2T5-00086s-H5
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Apr 2022 04:13:02 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id AE0E33201E5F;
 Sat,  9 Apr 2022 00:12:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 09 Apr 2022 00:12:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; bh=xjv7PryUnQ/sSS
 2IjRh4IzsfRmPzJsgIJAyISLxo2oQ=; b=PGf8K/P3wyI1Hg4mTUbhJR8eQ206xD
 qlbfdsJLKSUOBmfEP4Z1v1P0BmfHJ77ob/njORS9P1UjeFbJAiRRiE92gnm5Y9F9
 3T2PRhqM3yct+B2F8uoaTjpyo+twgr6eevwS2YofPnifDNS+l8OlArgSXJMjgxMM
 BTe8s75NNl+ou0IZURqriR1W5dBuguv4H86JrmtvDsBPaKr13/JYuRp4lVOfzBl1
 ZSsQxP2tTnWyCZZYNXUz33GO/6BIM86jlhR8Ru+ziBy4oFlDYURpcG49IwrFsX2h
 JjgT/CbSIM11WvQPA5xO+qNrq8KaxuZLSep50lmh8pxIYDUKs4kcfZ1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=xjv7Pr
 yUnQ/sSS2IjRh4IzsfRmPzJsgIJAyISLxo2oQ=; b=AwoAknZR4SBAURYnDYmMH0
 PFo0Zn+Fh0DrSDavnJ+jfT43qN0kLoBXCoUSb6M02Cge1N08ohjrD3LM4e0wD79o
 u6tS5FavHHWfEGwgSyIODZ4sLy9b/ZpQtFPFOeyb8/1RqGcIp5/RQx2HAqSyLXn4
 eZFAuPu+OKLoQkkT0qjOT5vWT6cCXGJGN8AkrtQGeiVx5afJWU2wc6e6e5hWBvG0
 5xgG/NoNfEPq+/Ue/Aw7Rz+vZQaCBorItbqjmLywAEIkGoMlfQ/iXBH1KVWAWpjv
 0lUdIhFTpoGhFQ6Ckxu0XL0oT9qOlTlAeU/nTG32HglbviXaXn8G3O7R2t4543ow
 ==
X-ME-Sender: <xms:xQdRYkyc4tad-jtl43cu16upuOefbRQlN_xaeciwNNCe5zG_BrJdDA>
 <xme:xQdRYoTw7lzsXnWH7MzqSuzk9odE03_-er_yhW1-tM1miY8TyR0nkPgm2ts1IWgz7
 vr0Qw-OjetlXrtyzOw>
X-ME-Received: <xmr:xQdRYmVY42Yb_LJBnNI4pUmjIBrUzSWIX62Y0WsIpuuAxg4iCnJebj8NZfdcIKvLvbXnk5NMMLFiBvc423Uhuzv8PbgXsCg-n4IlNRdcN8nvVNGy1rk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekuddgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeduuefffeeiteeludevieetgeeiueelfeeifffhheet
 veeiveelfeetheeuhfektdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:xQdRYijNNmiwvx0NP0mpKNx0lpkl8-EMZWOYNYL1jv9kwtdNxGGjFQ>
 <xmx:xQdRYmAOy6j1JBDvLagQTo-dIGpfSD68U8AL5nUDgDjOltxIrWrfbA>
 <xmx:xQdRYjL7xU4xJ24mVq1PmveF2-OcQFxdlkharCmZrNQRNs2cZGelqw>
 <xmx:xQdRYp9qcK-_yx-zvkGbwxSHKulj7Qot-OaK9LgUfLX5jt6kIX2ljA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 9 Apr 2022 00:12:51 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de
Subject: [PATCH 2/3] firewire: remove check of list iterator against head past
 the loop body
Date: Sat,  9 Apr 2022 13:12:42 +0900
Message-Id: <20220409041243.603210-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220409041243.603210-1-o-takashi@sakamocchi.jp>
References: <20220409041243.603210-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jakob Koschel <jakobkoschel@gmail.com> When
 list_for_each_entry()
 completes the iteration over the whole list without breaking the loop, the
 iterator value will be a bogus pointer computed based on the head element.
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nd2T5-00086s-H5
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Jakob Koschel <jakobkoschel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Jakob Koschel <jakobkoschel@gmail.com>

When list_for_each_entry() completes the iteration over the whole list
without breaking the loop, the iterator value will be a bogus pointer
computed based on the head element.

While it is safe to use the pointer to determine if it was computed
based on the head element, either with list_entry_is_head() or
&pos->member == head, using the iterator variable after the loop should
be avoided.

In preparation to limit the scope of a list iterator to the list
traversal loop, use a dedicated pointer to point to the found element [1].

Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
Cc: <stable@vger.kernel.org>
Signed-off-by: Jakob Koschel <jakobkoschel@gmail.com>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 30 +++++++++++++++--------------
 drivers/firewire/sbp2.c             | 13 +++++++------
 2 files changed, 23 insertions(+), 20 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index ac487c96bb71..6c20815cc8d1 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -73,24 +73,25 @@ static int try_cancel_split_timeout(struct fw_transaction *t)
 static int close_transaction(struct fw_transaction *transaction,
 			     struct fw_card *card, int rcode)
 {
-	struct fw_transaction *t;
+	struct fw_transaction *t = NULL, *iter;
 	unsigned long flags;
 
 	spin_lock_irqsave(&card->lock, flags);
-	list_for_each_entry(t, &card->transaction_list, link) {
-		if (t == transaction) {
-			if (!try_cancel_split_timeout(t)) {
+	list_for_each_entry(iter, &card->transaction_list, link) {
+		if (iter == transaction) {
+			if (!try_cancel_split_timeout(iter)) {
 				spin_unlock_irqrestore(&card->lock, flags);
 				goto timed_out;
 			}
-			list_del_init(&t->link);
-			card->tlabel_mask &= ~(1ULL << t->tlabel);
+			list_del_init(&iter->link);
+			card->tlabel_mask &= ~(1ULL << iter->tlabel);
+			t = iter;
 			break;
 		}
 	}
 	spin_unlock_irqrestore(&card->lock, flags);
 
-	if (&t->link != &card->transaction_list) {
+	if (t) {
 		t->callback(card, rcode, NULL, 0, t->callback_data);
 		return 0;
 	}
@@ -935,7 +936,7 @@ EXPORT_SYMBOL(fw_core_handle_request);
 
 void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 {
-	struct fw_transaction *t;
+	struct fw_transaction *t = NULL, *iter;
 	unsigned long flags;
 	u32 *data;
 	size_t data_length;
@@ -947,20 +948,21 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	rcode	= HEADER_GET_RCODE(p->header[1]);
 
 	spin_lock_irqsave(&card->lock, flags);
-	list_for_each_entry(t, &card->transaction_list, link) {
-		if (t->node_id == source && t->tlabel == tlabel) {
-			if (!try_cancel_split_timeout(t)) {
+	list_for_each_entry(iter, &card->transaction_list, link) {
+		if (iter->node_id == source && iter->tlabel == tlabel) {
+			if (!try_cancel_split_timeout(iter)) {
 				spin_unlock_irqrestore(&card->lock, flags);
 				goto timed_out;
 			}
-			list_del_init(&t->link);
-			card->tlabel_mask &= ~(1ULL << t->tlabel);
+			list_del_init(&iter->link);
+			card->tlabel_mask &= ~(1ULL << iter->tlabel);
+			t = iter;
 			break;
 		}
 	}
 	spin_unlock_irqrestore(&card->lock, flags);
 
-	if (&t->link == &card->transaction_list) {
+	if (!t) {
  timed_out:
 		fw_notice(card, "unsolicited response (source %x, tlabel %x)\n",
 			  source, tlabel);
diff --git a/drivers/firewire/sbp2.c b/drivers/firewire/sbp2.c
index 85cd379fd383..60051c0cabea 100644
--- a/drivers/firewire/sbp2.c
+++ b/drivers/firewire/sbp2.c
@@ -408,7 +408,7 @@ static void sbp2_status_write(struct fw_card *card, struct fw_request *request,
 			      void *payload, size_t length, void *callback_data)
 {
 	struct sbp2_logical_unit *lu = callback_data;
-	struct sbp2_orb *orb;
+	struct sbp2_orb *orb = NULL, *iter;
 	struct sbp2_status status;
 	unsigned long flags;
 
@@ -433,17 +433,18 @@ static void sbp2_status_write(struct fw_card *card, struct fw_request *request,
 
 	/* Lookup the orb corresponding to this status write. */
 	spin_lock_irqsave(&lu->tgt->lock, flags);
-	list_for_each_entry(orb, &lu->orb_list, link) {
+	list_for_each_entry(iter, &lu->orb_list, link) {
 		if (STATUS_GET_ORB_HIGH(status) == 0 &&
-		    STATUS_GET_ORB_LOW(status) == orb->request_bus) {
-			orb->rcode = RCODE_COMPLETE;
-			list_del(&orb->link);
+		    STATUS_GET_ORB_LOW(status) == iter->request_bus) {
+			iter->rcode = RCODE_COMPLETE;
+			list_del(&iter->link);
+			orb = iter;
 			break;
 		}
 	}
 	spin_unlock_irqrestore(&lu->tgt->lock, flags);
 
-	if (&orb->link != &lu->orb_list) {
+	if (orb) {
 		orb->callback(orb, &status);
 		kref_put(&orb->kref, free_orb); /* orb callback reference */
 	} else {
-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
