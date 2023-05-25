Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0076C7109D9
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 May 2023 12:16:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q281b-0008Li-Of;
	Thu, 25 May 2023 10:16:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q281Y-0008Kv-IK
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zx5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=TFsIi07TlOVOxl283HZek2HeuQ
 X7fcWmeIabj6APu+tWM5Xg9YVZh8fH1MQUpnzZpG3iwmprmZFHW3s8EC7efS5feznH+ooq5EL/wFP
 3rFQ1WIGLaY1wGjqXbvUVkABw6u0dDD455OJ9s1M4YSlDuNm7TF8NKxP20eczMUfeXRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zx5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=MqAgKLFE0BKCzoAO7shSqRqi4d
 YgtLKtO+NxchtT8PjeqyNaNCQGRx5p+qy5xmywsUgfFsfr0HEZGr1Egr37u4IWtLRY+HweXnJjtDt
 cUZe/FSawkEXTRSfNFTFAJ98pwFuaWfMiL4qx9mejjwvsAZEeoJRcYxXatnp5ztIYEUU=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q281Y-0029kO-9d for linux1394-devel@lists.sourceforge.net;
 Thu, 25 May 2023 10:16:49 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 296265C0244;
 Thu, 25 May 2023 06:16:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 25 May 2023 06:16:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685009798; x=
 1685096198; bh=Zx5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=l
 m74cWIzolzGl1ucQMSKLGaBg07P2vizDWBXWO0+s6MAi+KHg+JNgGT8bJeJxdNSf
 VCqkbw/l8lsRh/jXmNJC+aUsTWyy24BrXrlXh62Bklvz3hHwvqMyFX4dcFJdb1K7
 3oF0+sAmP91Wba/EtzxkEgra/BT37rMEDOeI1U/VxvuDt4pn+10LddS4+muEYJ0S
 bgApsubG/EUbmcsvQq2mdq4XY+j+OebRoQUoyrFl6qM5gILktTjAZR2Kw0Rskpbl
 CzUEsGy1svOOmH3/VWSPI5yK1cJjA+GKhxTC2KK536SGOOSA5ERnoWE8DfM1LK/k
 NJQ8EUoeqC1Vmst9lKGWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685009798; x=1685096198; bh=Z
 x5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=gimzlISCzlg/ojFrl
 quqOQaRddmnklRE08uxjIIgoReweKBeyICy5sfqxBifEDrQDPmDR7VQZJ13A9WQy
 sADtAcCS4I1zL/p0lMaXlGhZKhqSQbBxXcswCTWy4EiAeygSa7ZsQSfubA+sCORf
 X3VFduQItKfOe/uAawXouYPRtENiz+tjp2kmrmfji9F6SYpMVA8aigit05nNL8Vu
 fgWtxYCymOFNRgvGF05WQeL4fv9AmDa6WRG7kjBRwdBxjpIUP4LtimN/EZgBGIfB
 snnR9YAnrfx+1eYqbqMpouYHESntwzKz3A3/jRcwoOCqzyaPk+Kb33r5bb6N0Mmp
 6UIIw==
X-ME-Sender: <xms:hjVvZLiLojGQcbddpV4o_iR_h-W5F-HNKtnzlL3la6JKCmuh0rWHUQ>
 <xme:hjVvZIDpUtEGi_CfWWNu6W-WkfSkkrLUwEy5HEB-ybV1jEByickBOxa-MHzgBZ_Sm
 F1qG_47D_X4Jl9rEZU>
X-ME-Received: <xmr:hjVvZLHDdtdKa3EOBJ2haP6q6Ey0AsPPYOjU2ceAJURJxPQxCWn60Sxtov72v03iBtsjZ7RwouhjkWToPoVkz86Je1tAFuE1LI49eKmW9UH4iA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeejjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:hjVvZITEcZvuFwtbgfYcrIQbQEq2FC9T7kav8GrL_WWNCLCR3zzt6A>
 <xmx:hjVvZIwI80N-Nnh2V9JX-qZEsl7P3zH1nnIIU8EF9tBWh6ymgKitrw>
 <xmx:hjVvZO4HHxKbqxClE0q_ja-Fz-jLUJbsCgkYzHimdO_AgR6EJYD4CA>
 <xmx:hjVvZOZFvOkk9rrTrAbLkMlNIh_9yYHMtkkUD6rc3-HvOXD5T3EPuA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 May 2023 06:16:37 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/12] firewire: core: implement variations to send request
 and wait for response with time stamp
Date: Thu, 25 May 2023 19:16:19 +0900
Message-Id: <20230525101625.888906-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
References: <20230525101625.888906-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the previous commit, the core function of Linux FireWire
 subsystem was changed for two cases to operate asynchronous transaction with
 or without time stamp. This commit changes kernel API for the two cases.
 Current kernel API, fw_send_request(), is changed to be static inline function
 to call __fw_send_request(), which receives two argument for union and [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q281Y-0029kO-9d
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

In the previous commit, the core function of Linux FireWire subsystem
was changed for two cases to operate asynchronous transaction with or
without time stamp.

This commit changes kernel API for the two cases. Current kernel API,
fw_send_request(), is changed to be static inline function to call
__fw_send_request(), which receives two argument for union and flag of
callback function. The new kernel API, fw_send_request_with_tstamp() is
also added as static inline function, too. When calling, the two
arguments are copied to internal structure, then used in softIRQ
context.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 41 +++++++++++------
 include/linux/firewire.h            | 69 +++++++++++++++++++++++++++--
 2 files changed, 92 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a20f97fdd06c..130b95aca629 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -316,7 +316,8 @@ static int allocate_tlabel(struct fw_card *card)
 }
 
 /**
- * fw_send_request() - submit a request packet for transmission
+ * __fw_send_request() - submit a request packet for transmission to generate callback for response
+ *			 subaction with or without time stamp.
  * @card:		interface to send the request at
  * @t:			transaction instance to which the request belongs
  * @tcode:		transaction code
@@ -326,7 +327,9 @@ static int allocate_tlabel(struct fw_card *card)
  * @offset:		48bit wide offset into destination's address space
  * @payload:		data payload for the request subaction
  * @length:		length of the payload, in bytes
- * @callback:		function to be called when the transaction is completed
+ * @callback:		union of two functions whether to receive time stamp or not for response
+ *			subaction.
+ * @with_tstamp:	Whether to receive time stamp or not for response subaction.
  * @callback_data:	data to be passed to the transaction completion callback
  *
  * Submit a request packet into the asynchronous request transmission queue.
@@ -363,10 +366,10 @@ static int allocate_tlabel(struct fw_card *card)
  * transaction completion and hence execution of @callback may happen even
  * before fw_send_request() returns.
  */
-void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
-		     int destination_id, int generation, int speed,
-		     unsigned long long offset, void *payload, size_t length,
-		     fw_transaction_callback_t callback, void *callback_data)
+void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
+		int destination_id, int generation, int speed, unsigned long long offset,
+		void *payload, size_t length, union fw_transaction_callback callback,
+		bool with_tstamp, void *callback_data)
 {
 	unsigned long flags;
 	int tlabel;
@@ -381,7 +384,19 @@ void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
 	tlabel = allocate_tlabel(card);
 	if (tlabel < 0) {
 		spin_unlock_irqrestore(&card->lock, flags);
-		callback(card, RCODE_SEND_ERROR, NULL, 0, callback_data);
+		if (!with_tstamp) {
+			callback.without_tstamp(card, RCODE_SEND_ERROR, NULL, 0, callback_data);
+		} else {
+			// Timestamping on behalf of hardware.
+			u32 curr_cycle_time = 0;
+			u32 tstamp;
+
+			(void)fw_card_read_cycle_time(card, &curr_cycle_time);
+			tstamp = cycle_time_to_ohci_tstamp(curr_cycle_time);
+
+			callback.with_tstamp(card, RCODE_SEND_ERROR, tstamp, tstamp, NULL, 0,
+					     callback_data);
+		}
 		return;
 	}
 
@@ -389,14 +404,12 @@ void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
 	t->tlabel = tlabel;
 	t->card = card;
 	t->is_split_transaction = false;
-	timer_setup(&t->split_timeout_timer,
-		    split_transaction_timeout_callback, 0);
-	t->callback.without_tstamp = callback;
-	t->with_tstamp = false;
+	timer_setup(&t->split_timeout_timer, split_transaction_timeout_callback, 0);
+	t->callback = callback;
+	t->with_tstamp = with_tstamp;
 	t->callback_data = callback_data;
 
-	fw_fill_request(&t->packet, tcode, t->tlabel,
-			destination_id, card->node_id, generation,
+	fw_fill_request(&t->packet, tcode, t->tlabel, destination_id, card->node_id, generation,
 			speed, offset, payload, length);
 	t->packet.callback = transmit_complete_callback;
 
@@ -406,7 +419,7 @@ void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
 
 	card->driver->send_request(card, &t->packet);
 }
-EXPORT_SYMBOL(fw_send_request);
+EXPORT_SYMBOL_GPL(__fw_send_request);
 
 struct transaction_callback_data {
 	struct completion done;
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index d61693341da1..a7fd23d0010d 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -356,10 +356,71 @@ void fw_send_response(struct fw_card *card,
 		      struct fw_request *request, int rcode);
 int fw_get_request_speed(struct fw_request *request);
 u32 fw_request_get_timestamp(const struct fw_request *request);
-void fw_send_request(struct fw_card *card, struct fw_transaction *t,
-		     int tcode, int destination_id, int generation, int speed,
-		     unsigned long long offset, void *payload, size_t length,
-		     fw_transaction_callback_t callback, void *callback_data);
+
+void __fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
+		int destination_id, int generation, int speed, unsigned long long offset,
+		void *payload, size_t length, union fw_transaction_callback callback,
+		bool with_tstamp, void *callback_data);
+
+/**
+ * fw_send_request() - submit a request packet for transmission to generate callback for response
+ *		       subaction without time stamp.
+ * @card:		interface to send the request at
+ * @t:			transaction instance to which the request belongs
+ * @tcode:		transaction code
+ * @destination_id:	destination node ID, consisting of bus_ID and phy_ID
+ * @generation:		bus generation in which request and response are valid
+ * @speed:		transmission speed
+ * @offset:		48bit wide offset into destination's address space
+ * @payload:		data payload for the request subaction
+ * @length:		length of the payload, in bytes
+ * @callback:		function to be called when the transaction is completed
+ * @callback_data:	data to be passed to the transaction completion callback
+ *
+ * A variation of __fw_send_request() to generate callback for response subaction without time
+ * stamp.
+ */
+static inline void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
+				   int destination_id, int generation, int speed,
+				   unsigned long long offset, void *payload, size_t length,
+				   fw_transaction_callback_t callback, void *callback_data)
+{
+	union fw_transaction_callback cb = {
+		.without_tstamp = callback,
+	};
+	__fw_send_request(card, t, tcode, destination_id, generation, speed, offset, payload,
+			  length, cb, false, callback_data);
+}
+
+/**
+ * fw_send_request_with_tstamp() - submit a request packet for transmission to generate callback for
+ *				   response with time stamp.
+ * @card:		interface to send the request at
+ * @t:			transaction instance to which the request belongs
+ * @tcode:		transaction code
+ * @destination_id:	destination node ID, consisting of bus_ID and phy_ID
+ * @generation:		bus generation in which request and response are valid
+ * @speed:		transmission speed
+ * @offset:		48bit wide offset into destination's address space
+ * @payload:		data payload for the request subaction
+ * @length:		length of the payload, in bytes
+ * @callback:		function to be called when the transaction is completed
+ * @callback_data:	data to be passed to the transaction completion callback
+ *
+ * A variation of __fw_send_request() to generate callback for response subaction with time stamp.
+ */
+static inline void fw_send_request_with_tstamp(struct fw_card *card, struct fw_transaction *t,
+	int tcode, int destination_id, int generation, int speed, unsigned long long offset,
+	void *payload, size_t length, fw_transaction_callback_with_tstamp_t callback,
+	void *callback_data)
+{
+	union fw_transaction_callback cb = {
+		.with_tstamp = callback,
+	};
+	__fw_send_request(card, t, tcode, destination_id, generation, speed, offset, payload,
+			  length, cb, true, callback_data);
+}
+
 int fw_cancel_transaction(struct fw_card *card,
 			  struct fw_transaction *transaction);
 int fw_run_transaction(struct fw_card *card, int tcode, int destination_id,
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
