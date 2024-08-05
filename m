Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F257C9477A2
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUF-0005Ip-Of;
	Mon, 05 Aug 2024 08:54:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUC-0005Hn-KH
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=cIEHMd2SUdzflk4FGxtrthzPHr
 zXjBwJNDIzV4bnpadvu4Q9RkOBd91oc/XpnYRUrSNt4WmguNpiVjkWXPBEkdwSzktJjwdH70Qa4tz
 tJFQ94stEFxX3EopChBACuzg1vzhNr2B0/WTFCxPGnw6HMou3j4YSM56SygjhA55KsHU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=cndzt5pU2Q8K7cAQJ5po6hlZnr
 J7I0XMkASnKyKX9uOMlKqR1aqSzCU2pmlk15k97QX6Bu2tv+oy/fe58b1wCr5wX6gOUfDQxpyvrZN
 PHBjdiMn2F185gtk52KESjnFQpjobIZJRpMq7oK+6fwIA7e60Xboh0LJr59N/TY+A8aM=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUB-0002rG-0l for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:35 +0000
Received: from compute8.internal (compute8.nyi.internal [10.202.2.227])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 716101151C98;
 Mon,  5 Aug 2024 04:54:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute8.internal (MEProxy); Mon, 05 Aug 2024 04:54:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848069; x=
 1722934469; bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=h
 1hbO/m3dTERfIpcXjMaQnrRa4ZAijkqeHGIvBIahQ77+RT4ycp37OOQyTgNNLh9u
 7Y4n35YNpf9D+eN5wAkVn0bWee2HNLnna9UFRL1ZayizPeI+tcM2GmFbfxTs/vte
 NG5EIkYTKnQNC01xDD9djFlL8H6Ajl8++aPuoHiIxloTzcI2KgBYA9mgGPo9kosW
 KGuQmm1jyCtxP5Uj0X5vClCj3pE0KL96gbSMAMa+rYcl6EvBWHjzZt5a0v9+X2va
 ITC0o0U7bTht+oHuv+8ZqzV+KP4OyQpihg5rUyPXTmRbuAASO9MyZlmzfK83c1+I
 9uij5B9FfRDImnvBjglFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848069; x=
 1722934469; bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=s
 cOuyjtzQypE19EU8ClqxsFqRaZCEDEYeKKMiPXC5e8tcnCehi2I8TXXD6AfQY4Fc
 VKh2AQSaARYal9xeBxzF2TdgyBkcnK/58e+haqWbrJ41cccUzC6zl7C3SgURY3yB
 0VHOUwN8lX53MSrradxBHZfp4O9upSrH2hhN6o37KYxQGgsruD5DmzApn2iistvA
 W4ZgRT0+YoQi1FEUxhpu/J+Wj7zRjxBpn63rsM3r4shsR+Xehv2s/h5eUF9bs/pC
 HxPKWvrYIGcbxjScqkNa43Fx2tWMpqqXIMoyJK+LfOSsUD85ztSibvRyVE+YcFou
 J+7n/nWFPCTydA+x4Lg2w==
X-ME-Sender: <xms:RZOwZn1pMvV_dZcySsrsi-pXRmSew8kNrje7GeXVfNg_Vkic-hDqAg>
 <xme:RZOwZmFUb57HSM0iM-cFRDD2I4WBuGLX3MmLXNocMXzvyZzQFGSsQvA33jsIjolw1
 RWHHOc-4ROORxXdplM>
X-ME-Received: <xmr:RZOwZn5rAlqmsPtTWtGCud2FlhaU5qxgvjELBAypSZgkw9k5iCpyeGmLGwkqOfy6FE7wE4ka8A8lVsjsy-1PjjLIgd4827aQ8p7J6J4NBuI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:RZOwZs1kpiDTp7Q9iovp-JRgyEJ_10ztHWJsK-KdTqgz8UvnNaPCIQ>
 <xmx:RZOwZqHdqFQ7Wac9TOK2F4Gzo95lThE7Wb-xkTjWMYhc7ZkTlPqZRw>
 <xmx:RZOwZt-fVzIqu05Et73H3bFJ_SNSj-vxvcmFcDVyQ33VHzuGsi9rXA>
 <xmx:RZOwZnn9Il8HaD9dxO1ZUnCBZG6CTGYKVc0AfbezObgsGPN-0-Jnkw>
 <xmx:RZOwZvSde49nHs8tq1SgjCcA7V7wO_t4am3nUNcukWuwzUm35Hca3qF_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:28 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 13/17] firewire: core: use guard macro to maintain list of
 asynchronous transaction
Date: Mon,  5 Aug 2024 17:54:04 +0900
Message-ID: <20240805085408.251763-14-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function maintains pending asynchronous transactions
 by list in the instance of fw_card. The concurrent access to the list is
 protected by spinlock in the instance. This commit uses guard macro to
 maintain the spinlock. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.155 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satUB-0002rG-0l
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

The core function maintains pending asynchronous transactions by list in
the instance of fw_card. The concurrent access to the list is protected
by spinlock in the instance.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 85 ++++++++++++-----------------
 1 file changed, 34 insertions(+), 51 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a006daf385e9..0f58a5d13d28 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -49,35 +49,31 @@ static int close_transaction(struct fw_transaction *transaction, struct fw_card
 			     u32 response_tstamp)
 {
 	struct fw_transaction *t = NULL, *iter;
-	unsigned long flags;
 
-	spin_lock_irqsave(&card->lock, flags);
-	list_for_each_entry(iter, &card->transaction_list, link) {
-		if (iter == transaction) {
-			if (!try_cancel_split_timeout(iter)) {
-				spin_unlock_irqrestore(&card->lock, flags);
-				goto timed_out;
+	scoped_guard(spinlock_irqsave, &card->lock) {
+		list_for_each_entry(iter, &card->transaction_list, link) {
+			if (iter == transaction) {
+				if (try_cancel_split_timeout(iter)) {
+					list_del_init(&iter->link);
+					card->tlabel_mask &= ~(1ULL << iter->tlabel);
+					t = iter;
+				}
+				break;
 			}
-			list_del_init(&iter->link);
-			card->tlabel_mask &= ~(1ULL << iter->tlabel);
-			t = iter;
-			break;
 		}
 	}
-	spin_unlock_irqrestore(&card->lock, flags);
 
-	if (t) {
-		if (!t->with_tstamp) {
-			t->callback.without_tstamp(card, rcode, NULL, 0, t->callback_data);
-		} else {
-			t->callback.with_tstamp(card, rcode, t->packet.timestamp, response_tstamp,
-						NULL, 0, t->callback_data);
-		}
-		return 0;
+	if (!t)
+		return -ENOENT;
+
+	if (!t->with_tstamp) {
+		t->callback.without_tstamp(card, rcode, NULL, 0, t->callback_data);
+	} else {
+		t->callback.with_tstamp(card, rcode, t->packet.timestamp, response_tstamp, NULL, 0,
+					t->callback_data);
 	}
 
- timed_out:
-	return -ENOENT;
+	return 0;
 }
 
 /*
@@ -121,16 +117,13 @@ static void split_transaction_timeout_callback(struct timer_list *timer)
 {
 	struct fw_transaction *t = from_timer(t, timer, split_timeout_timer);
 	struct fw_card *card = t->card;
-	unsigned long flags;
 
-	spin_lock_irqsave(&card->lock, flags);
-	if (list_empty(&t->link)) {
-		spin_unlock_irqrestore(&card->lock, flags);
-		return;
+	scoped_guard(spinlock_irqsave, &card->lock) {
+		if (list_empty(&t->link))
+			return;
+		list_del(&t->link);
+		card->tlabel_mask &= ~(1ULL << t->tlabel);
 	}
-	list_del(&t->link);
-	card->tlabel_mask &= ~(1ULL << t->tlabel);
-	spin_unlock_irqrestore(&card->lock, flags);
 
 	if (!t->with_tstamp) {
 		t->callback.without_tstamp(card, RCODE_CANCELLED, NULL, 0, t->callback_data);
@@ -143,20 +136,14 @@ static void split_transaction_timeout_callback(struct timer_list *timer)
 static void start_split_transaction_timeout(struct fw_transaction *t,
 					    struct fw_card *card)
 {
-	unsigned long flags;
+	guard(spinlock_irqsave)(&card->lock);
 
-	spin_lock_irqsave(&card->lock, flags);
-
-	if (list_empty(&t->link) || WARN_ON(t->is_split_transaction)) {
-		spin_unlock_irqrestore(&card->lock, flags);
+	if (list_empty(&t->link) || WARN_ON(t->is_split_transaction))
 		return;
-	}
 
 	t->is_split_transaction = true;
 	mod_timer(&t->split_timeout_timer,
 		  jiffies + card->split_timeout_jiffies);
-
-	spin_unlock_irqrestore(&card->lock, flags);
 }
 
 static u32 compute_split_timeout_timestamp(struct fw_card *card, u32 request_timestamp);
@@ -1015,7 +1002,6 @@ EXPORT_SYMBOL(fw_core_handle_request);
 void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 {
 	struct fw_transaction *t = NULL, *iter;
-	unsigned long flags;
 	u32 *data;
 	size_t data_length;
 	int tcode, tlabel, source, rcode;
@@ -1054,26 +1040,23 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 		break;
 	}
 
-	spin_lock_irqsave(&card->lock, flags);
-	list_for_each_entry(iter, &card->transaction_list, link) {
-		if (iter->node_id == source && iter->tlabel == tlabel) {
-			if (!try_cancel_split_timeout(iter)) {
-				spin_unlock_irqrestore(&card->lock, flags);
-				goto timed_out;
+	scoped_guard(spinlock_irqsave, &card->lock) {
+		list_for_each_entry(iter, &card->transaction_list, link) {
+			if (iter->node_id == source && iter->tlabel == tlabel) {
+				if (try_cancel_split_timeout(iter)) {
+					list_del_init(&iter->link);
+					card->tlabel_mask &= ~(1ULL << iter->tlabel);
+					t = iter;
+				}
+				break;
 			}
-			list_del_init(&iter->link);
-			card->tlabel_mask &= ~(1ULL << iter->tlabel);
-			t = iter;
-			break;
 		}
 	}
-	spin_unlock_irqrestore(&card->lock, flags);
 
 	trace_async_response_inbound((uintptr_t)t, card->index, p->generation, p->speed, p->ack,
 				     p->timestamp, p->header, data, data_length / 4);
 
 	if (!t) {
- timed_out:
 		fw_notice(card, "unsolicited response (source %x, tlabel %x)\n",
 			  source, tlabel);
 		return;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
