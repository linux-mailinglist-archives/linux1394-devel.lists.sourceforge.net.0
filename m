Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F6B946EDC
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:03:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saat7-0006WB-Do;
	Sun, 04 Aug 2024 13:03:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saat2-0006V6-0B
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=L8AINH+6AqCd6k+zuUOU2vv2Nl
 YWu9O+iLC1oogsIXS8UP2fuyLGgOZChNEkJkD9roCUw0/O+6vhz7Xv66yAS+yrUgquy/VevR9+sqV
 tj+9naml1IP4AiK2omXAb7yjFXPwNs2yHCYcRzeelEgpFUpbW7pbWUPeaPOk9Tb9qofI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=Ysw/I9jQnU+zcHvGNwXTGwZj89
 qT/X5vD4MfpTw7rtH9sGMGhJ5QF4mzJy/YFY27bgitmHs62LxUmpw6OL+xcXgvbIItVe4KP/PSIyn
 nsTUMbvvJ57eH9EV3Fnl/jqs9K79QgREgD23uVLPS5+ElLsmDLib+ggFn63P8inxqDhw=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasz-0001En-Ha for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:58 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id EEB471147EEC;
 Sun,  4 Aug 2024 09:02:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 04 Aug 2024 09:02:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776566; x=
 1722862966; bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=T
 nd5eC+Rb8fuBOlh0O1ynU4gSoXL7iS0VicHZjA4YzmPCbEAO/YAKPgnrpyzvK93H
 bzPTF/j57xKacc4vn/RdlFDbf+jG1U8QEh9VGr4Yi/B9sW2bhkeiqHfluiNFfaw8
 Yh89EHJvUWHYhGXYrmzinrVMefk11OBuG2Gw7lcrhEWd/KmIbBWneM+gDIGB18WK
 CjbJNbPVzeQ19rEw/XzGEkzroMj5BljaqrPuIOQMeeRPNB4uJ9gYXdA24Ls+EjAV
 wmiHmwqxu+PTI8F6io0dTMK6OSyBIl6cyH6RJ12JQAnqsJJIWrDslV5xrJd1nPEy
 92c87GJdwAuk+8lVSIKqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776566; x=
 1722862966; bh=g2ZYQpdmVR2Qgn3ioWPYVE8uCIbn3OBt2eoIeM+wq4M=; b=P
 kR2XVIFBD5HNS1hL3MB0ROi2Ylab6TbrXzWpMDyhZN1Xo5i6KIk4vqQd7MelGpuO
 x3mUcs5VYvBoElsLJLI1MK1NyZliisSYtF5vKfnzJxdIQicUIWHOluSHPdnPeCzM
 mPclUg6+NM4EPtf7RurLHpMkM9OVUocUTybzKvZ1884/DOi0PG4LPE7gWqiLKS+Q
 4JEeQNq8TVKUswcDtGUDT6vUifjM3Ek1OUxfquFti21mtBw03P1Px3WMbL+1zmUK
 fjkTvSOvwKopV4GXxg1M+lk1W597zFtUEY8Obwg6bAw22P+EOWclSWqU45rSJZq6
 +wUoqEU0tARQXgUurwjvQ==
X-ME-Sender: <xms:9nuvZll6tEhLQc8NFmfqlPXOmap8evesyDcxhMDqpFHKxwTZ6cTC3Q>
 <xme:9nuvZg0qxlqxkE3uFfHge1MxL4EbNlU-Abvqs2idAJbcyMzNc1pehRh70jzfa_BIx
 hKWcYIa0s1DaUZ0Kso>
X-ME-Received: <xmr:9nuvZrrtg7GYrf2wvSnLlWMbl6-VMmf8nLp_3j7owWlkh9in0lzexGUtcQAnaUhSqR144klp3uRUWs1s2WTu_b20Q8RsuBOcS0nSbTBfyfjuXg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:9nuvZlnAHNXU66YdiO9W8e92mvuXR-qYEoEKfdzpxu6j265Vc3uw6g>
 <xmx:9nuvZj2gXU5jIsE9ZGkao1he_ki6TU2cHAaqjfZS6byf3bmzLGQyVQ>
 <xmx:9nuvZkuk9potHbI59YbDmzdUvTbYPyUomx3JbLYT0Jp_O4LdKUl5nQ>
 <xmx:9nuvZnXnYISdTzevUESXUxwtvPgVjmdS0boHLoYT3ogyVGuuzVB13Q>
 <xmx:9nuvZhCYMwliekyFm__nQlDbG6UGG0oAqtVsHtVKk94xdFVEc8U94m59>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:45 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 13/17] firewire: core: use guard macro to maintain list of
 asynchronous transaction
Date: Sun,  4 Aug 2024 22:02:20 +0900
Message-ID: <20240804130225.243496-14-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [103.168.172.159 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1saasz-0001En-Ha
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
