Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3096714898
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b91-0007W3-7y;
	Mon, 29 May 2023 11:34:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b8x-0007VT-CA
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zx5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=YFT37G4hMHDGCBjjRId6i1XVgY
 brkUPhP59p4kGlRO8ZfMvv5o3mSHIBAsswup5N7zxRhkV7MJTNoLZ/g96hQGPXHi6344A/I22uw93
 SvIcUtfgROq0/oMB+vv2idtzHhdm+M2dlxtlQRtKSoa9H4iLimA/QfDe3gkNSh8kl6L0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zx5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=QPXAHo+IxsLytRb3ki5qrV/4hb
 9oA42rVdkj0rmyYIrMB26Ybd9Luv9s4B6aPntiZi7QaCnH9ejtGpnr0nFgptAn8loaJoj4A8qkOhP
 SosUzCbpb85ZeoWXb6GZMyS0MS2RzovcJ9uPiO3Rw00cJ97ft14sM9fVo0N9m4XxTKaw=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b8w-005hn5-QO for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:31 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 42F9E3200392;
 Mon, 29 May 2023 07:34:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 29 May 2023 07:34:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360064; x=
 1685446464; bh=Zx5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=i
 2A7DnyPey/vY8w8dZY1/Sf2qnTaXL8TpEhP4UDEls+xyt4rC8XI3TS8DMYCKQmlw
 WRa/1FnSjbJDRM1wtPmpby7UbxdGdqB+kXAquNFnwqu0pOykWNEoBn6Yev1ynZsI
 5ww+igXez/118tHu6cza+nhzozeLM3HLe3trn6e/C/TLcG7IpZCNVjhhPcqy92TW
 Gy6Rux8s/tCz6enjKbJWEtxAyjY0NioTEiZCfAWZpe8vej1Bmpsc5FNm0ooiAHkW
 LuMri+mQeqs2aZrqDrVUI6RWeBQDpNIN0SrfN0u09hk/AqgFg2TknOW4csKlGWcS
 SUVD2omT9g3wCbDqW5nCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685360064; x=1685446464; bh=Z
 x5vRuZcoTFwzB00ySCuly08OEL537Ypl8d8EH6oHiA=; b=rHy0fOgdVxFdQoiAn
 Ob2MhSTuufPVZsLgK6KgMTBJoNQZA5nYiZ1j4mNPYnncPsie5s+48V7jG0LxeQZ7
 t7x3satvNB4HSGjrHjr0vdrp4biMYWivFpoHpXKm8sDb5TsQdhgKXVipoVxd82Py
 cby2Spv5Eu29/4tXyyEBr9y+gijE1irWUtxkFpiCxmdmZnd11eHQA1M4oOyzx+i/
 Hs0Qaf3fs48YHTJFSHjb2t6C6DzFKIsGRHUykrTCyI/CkPmton6ca0U0UoSZBAA2
 jgM9R12LmtTj/mKE6jg9emAOAVHjf8kf6EdCPQoCwNTnBCe8dyYseRN/i4v7+afo
 7IOOw==
X-ME-Sender: <xms:wI10ZDSS_c79oT_1tkJ2FgL0BnZo8jWFdGYFTDoj8kTOJ-nlpkJFDQ>
 <xme:wI10ZEwUOBv7O9tS4MtQKe5Mj6A7qw-hcoiDxCa5JKQQeNZpcJhgNz2BH8n-4rYRJ
 iEEJhiKtRYe2hbb5co>
X-ME-Received: <xmr:wI10ZI1EjY6MDBbv3w9BlScWjImi92Vr8fPavKjPcuFAOZa0b0hKlwFLJ3k0bPWvg20bmrA91JIEE-qp4mWaAdXu5qW9EKGhos2jaMQGjR7yCQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:wI10ZDBKnFrZ1JA1yMW_b82I-1ZLoYEtXoMy7gOdJ2c0e2OcIXT7Vw>
 <xmx:wI10ZMh6tj8oPlPltjmi9AQAakWr4yQCvPWB32AIGXPQKM-iLIDLww>
 <xmx:wI10ZHqTSDQUZJ4Pk0ykLcble-uqm7omssYvhjSDVgpxC1FyWq9Q9A>
 <xmx:wI10ZEKGd8HoWBdN-PbnVYCmhxKmsN2RDNg0-YYJYezPeVvzQjph5Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:23 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/12] firewire: core: implement variations to send request
 and wait for response with time stamp
Date: Mon, 29 May 2023 20:34:00 +0900
Message-Id: <20230529113406.986289-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
References: <20230529113406.986289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3b8w-005hn5-QO
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
