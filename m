Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2C367B238
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeV5-0006x8-KI;
	Wed, 25 Jan 2023 12:03:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeUw-0006wM-MK
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F/oiWi7cRJV73Nbt/8UWuzBAGbYHl7xZd9sd5G9Zctc=; b=KrpqZDuiBjf9gds1mGeRUX6GfQ
 vdkOM6ANzi/c+Iu4DUa92B5ljgWgFYJ+TorKrQcbuCOpX75J7B4MknoXfHYAL/d3Rd5FVJ/YUkHDP
 Q/Driw5e/wLv/caN2r3NJMNhnBcs1ef65cM9XNimNiqhbx5fpfzsodbqIrlsyypUzSwU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F/oiWi7cRJV73Nbt/8UWuzBAGbYHl7xZd9sd5G9Zctc=; b=YZFOK1kLWva/8/bul1A3ATd1yc
 63FDjfj3hIW49C2+htuDMtDDh0BRGj5dlI0ZJGdDwSE+JzxgISqvG1WPMeCCYrTy65UgRS7GRSFR2
 BQAqDgBrCE0BMU99bBmCOHzcqNGAGxSSWNTGzXxA6uJAS33TKDMbF1CzxooPKXQiGKfU=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeUo-00FITG-CC for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:25 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id D2DC25C0071;
 Wed, 25 Jan 2023 07:03:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Wed, 25 Jan 2023 07:03:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648192; x=
 1674734592; bh=F/oiWi7cRJV73Nbt/8UWuzBAGbYHl7xZd9sd5G9Zctc=; b=c
 mcfVXXZNOODMceROvEsX/FZ/y9RRSkfuq6/qi7U2AOAA9kI3YmOB53jy0ubgGD4+
 adSSsgE6WnvtkN6+0Dx7SlOUPaQG3hhAuSA7sM3ZDPbjv53lAsX7S16D4L2ugUtr
 JlWTjLtwwO5QdKzKriQYcMPWFPNiWpdyxOXymk3epY4hSbqsSxTLuxhxUWmY4OfB
 01N2ApcCZy8JEnGE++Rdryoo6hN99xVSCRxR1vy8DTSjsutJUxDVBhi3ecrNK9j0
 Ri7bApaO5EBCBSq7AMTEiKopfoZasvepN52QodzjkfzUDJWVld/b2NrvOR+VhjiV
 k0xklMid99WegqIjFTA7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648192; x=1674734592; bh=F/oiWi7cRJV73
 Nbt/8UWuzBAGbYHl7xZd9sd5G9Zctc=; b=fKxDhgz0PGadoyZWgW+twIAzPEZkC
 LG793D6wCXOzOzo9TvIoqG5rSY54qwEtRjiyI0MKFrPMfk20b6TpQZnpeXzi/oEG
 PbHBpX9AtV2Ra/IqOX5wBAnPWNcle8fwi2B7lhpNx+kfg/2F0hWMkzxdb+8a1l1u
 rEbyrnmEMhoymxDbwE6CDgXsRNMl5pD3vkccOdrRXRYbO5JR0mBgP4F5XEOA8h++
 q2/tNhtXbjKQeiR5apVIUs52qvoZVFYjRq6wRP0d0OycpjQ+Omwa8OKqjn6eo9ge
 nM6ly50227eoxygNvunLeJk1il9Fx9MxbrFSJKXwcWlzD2fvuWRTT6rug==
X-ME-Sender: <xms:gBrRYyvrozzHQnQAwY5Uyz4eVS_0Nk9eSii2IeQvYAKv4gF5yNvGTw>
 <xme:gBrRY3ffrXRnrrWmi6Q9Qz7-Y4OEjIKuO29LwZzSBXXPqO10zbvr-Zs0tW-4ksCpg
 5RIWF5QwpFeWYnDLEY>
X-ME-Received: <xmr:gBrRY9xn4Q-eX-jAxdtNIDqvrw7RY4_y-GmZUsD_evapviHubSdCo0FbawL4V7G0JL7sq53qTaitWXcOcoTGpcokdZTJnUt-L_AWsmWGCIvRiIBPuz6lfgg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:gBrRY9NM_BF7tdtb5YoxTujQow6cXA1pysQjBfGCHvct6qfRv_5WaQ>
 <xmx:gBrRYy8MOl5883z26YJ-VjVkJI23ZxTmUafWdpKrvs5O8vQXH4dFsg>
 <xmx:gBrRY1UG5MNflinnHlqL0XTR4UXN-sOFZRznsf8LrJ8K0_V-N4djEQ>
 <xmx:gBrRY0LQouO1Fb1k44jr0ED86z7xl2MzI2zhuepRsKU4wCA49vjhjw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:11 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 04/11] firewire: core: use union for callback of transaction
 completion
Date: Wed, 25 Jan 2023 21:02:54 +0900
Message-Id: <20230125120301.51585-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
References: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 1394 OHCI,
 the OUTPUT_LAST descriptor of Asynchronous Transmit
 (AT) request context has timeStamp field, in which 1394 OHCI controller record
 the isochronous cycle when the packet was sent for the [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pKeUo-00FITG-CC
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
Cc: tiwai@suse.de, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In 1394 OHCI, the OUTPUT_LAST descriptor of Asynchronous Transmit (AT)
request context has timeStamp field, in which 1394 OHCI controller
record the isochronous cycle when the packet was sent for the request
subaction. Additionally, for the case of split transaction in IEEE 1394,
Asynchronous Receive (AT) request context is used for response subaction
to finish the transaction. The trailer quadlet of descriptor in the
context has timeStamp field, in which 1394 OHCI controller records the
isochronous cycle when the packet arrived.

Current implementation of 1394 OHCI controller driver stores values of
both fields to internal structure as time stamp, while Linux FireWire
subsystem provides no way to access to it. When using asynchronous
transaction service provided by the subsystem, callback function is passed
to kernel API. The prototype of callback function has the lack of argument
for the values.

This commit adds a new callback function for the purpose. It has an
additional argument to point to the constant array with two elements. For
backward compatibility to kernel space, a new union is also adds to wrap
two different prototype of callback function. The fw_transaction structure
has the union as a member and a boolean flag to express which function
callback is available.

The core function is changed to handle the two cases; with or without
time stamp. For the error path to process transaction, the isochronous
cycle is computed by current value of CYCLE_TIMER register in 1394 OHCI
controller. Especially for the case of timeout of split transaction, the
expected isochronous cycle is computed.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 58 +++++++++++++++++++++++------
 drivers/firewire/core.h             |  7 ++++
 drivers/firewire/ohci.c             | 17 ++++++++-
 include/linux/firewire.h            | 13 ++++++-
 4 files changed, 80 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a9f70c96323e..a20f97fdd06c 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -70,8 +70,8 @@ static int try_cancel_split_timeout(struct fw_transaction *t)
 		return 1;
 }
 
-static int close_transaction(struct fw_transaction *transaction,
-			     struct fw_card *card, int rcode)
+static int close_transaction(struct fw_transaction *transaction, struct fw_card *card, int rcode,
+			     u32 response_tstamp)
 {
 	struct fw_transaction *t = NULL, *iter;
 	unsigned long flags;
@@ -92,7 +92,12 @@ static int close_transaction(struct fw_transaction *transaction,
 	spin_unlock_irqrestore(&card->lock, flags);
 
 	if (t) {
-		t->callback(card, rcode, NULL, 0, t->callback_data);
+		if (!t->with_tstamp) {
+			t->callback.without_tstamp(card, rcode, NULL, 0, t->callback_data);
+		} else {
+			t->callback.with_tstamp(card, rcode, t->packet.timestamp, response_tstamp,
+						NULL, 0, t->callback_data);
+		}
 		return 0;
 	}
 
@@ -107,6 +112,8 @@ static int close_transaction(struct fw_transaction *transaction,
 int fw_cancel_transaction(struct fw_card *card,
 			  struct fw_transaction *transaction)
 {
+	u32 tstamp;
+
 	/*
 	 * Cancel the packet transmission if it's still queued.  That
 	 * will call the packet transmission callback which cancels
@@ -121,7 +128,17 @@ int fw_cancel_transaction(struct fw_card *card,
 	 * if the transaction is still pending and remove it in that case.
 	 */
 
-	return close_transaction(transaction, card, RCODE_CANCELLED);
+	if (transaction->packet.ack == 0) {
+		// The timestamp is reused since it was just read now.
+		tstamp = transaction->packet.timestamp;
+	} else {
+		u32 curr_cycle_time = 0;
+
+		(void)fw_card_read_cycle_time(card, &curr_cycle_time);
+		tstamp = cycle_time_to_ohci_tstamp(curr_cycle_time);
+	}
+
+	return close_transaction(transaction, card, RCODE_CANCELLED, tstamp);
 }
 EXPORT_SYMBOL(fw_cancel_transaction);
 
@@ -140,7 +157,12 @@ static void split_transaction_timeout_callback(struct timer_list *timer)
 	card->tlabel_mask &= ~(1ULL << t->tlabel);
 	spin_unlock_irqrestore(&card->lock, flags);
 
-	t->callback(card, RCODE_CANCELLED, NULL, 0, t->callback_data);
+	if (!t->with_tstamp) {
+		t->callback.without_tstamp(card, RCODE_CANCELLED, NULL, 0, t->callback_data);
+	} else {
+		t->callback.with_tstamp(card, RCODE_CANCELLED, t->packet.timestamp,
+					t->split_timeout_cycle, NULL, 0, t->callback_data);
+	}
 }
 
 static void start_split_transaction_timeout(struct fw_transaction *t,
@@ -162,6 +184,8 @@ static void start_split_transaction_timeout(struct fw_transaction *t,
 	spin_unlock_irqrestore(&card->lock, flags);
 }
 
+static u32 compute_split_timeout_timestamp(struct fw_card *card, u32 request_timestamp);
+
 static void transmit_complete_callback(struct fw_packet *packet,
 				       struct fw_card *card, int status)
 {
@@ -170,28 +194,32 @@ static void transmit_complete_callback(struct fw_packet *packet,
 
 	switch (status) {
 	case ACK_COMPLETE:
-		close_transaction(t, card, RCODE_COMPLETE);
+		close_transaction(t, card, RCODE_COMPLETE, packet->timestamp);
 		break;
 	case ACK_PENDING:
+	{
+		t->split_timeout_cycle =
+			compute_split_timeout_timestamp(card, packet->timestamp) & 0xffff;
 		start_split_transaction_timeout(t, card);
 		break;
+	}
 	case ACK_BUSY_X:
 	case ACK_BUSY_A:
 	case ACK_BUSY_B:
-		close_transaction(t, card, RCODE_BUSY);
+		close_transaction(t, card, RCODE_BUSY, packet->timestamp);
 		break;
 	case ACK_DATA_ERROR:
-		close_transaction(t, card, RCODE_DATA_ERROR);
+		close_transaction(t, card, RCODE_DATA_ERROR, packet->timestamp);
 		break;
 	case ACK_TYPE_ERROR:
-		close_transaction(t, card, RCODE_TYPE_ERROR);
+		close_transaction(t, card, RCODE_TYPE_ERROR, packet->timestamp);
 		break;
 	default:
 		/*
 		 * In this case the ack is really a juju specific
 		 * rcode, so just forward that to the callback.
 		 */
-		close_transaction(t, card, status);
+		close_transaction(t, card, status, packet->timestamp);
 		break;
 	}
 }
@@ -363,7 +391,8 @@ void fw_send_request(struct fw_card *card, struct fw_transaction *t, int tcode,
 	t->is_split_transaction = false;
 	timer_setup(&t->split_timeout_timer,
 		    split_transaction_timeout_callback, 0);
-	t->callback = callback;
+	t->callback.without_tstamp = callback;
+	t->with_tstamp = false;
 	t->callback_data = callback_data;
 
 	fw_fill_request(&t->packet, tcode, t->tlabel,
@@ -1047,7 +1076,12 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
 	 */
 	card->driver->cancel_packet(card, &t->packet);
 
-	t->callback(card, rcode, data, data_length, t->callback_data);
+	if (!t->with_tstamp) {
+		t->callback.without_tstamp(card, rcode, data, data_length, t->callback_data);
+	} else {
+		t->callback.with_tstamp(card, rcode, t->packet.timestamp, p->timestamp, data,
+					data_length, t->callback_data);
+	}
 }
 EXPORT_SYMBOL(fw_core_handle_response);
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index eafa4eaae737..2a05f411328f 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -247,6 +247,13 @@ void fw_fill_response(struct fw_packet *response, u32 *request_header,
 void fw_request_get(struct fw_request *request);
 void fw_request_put(struct fw_request *request);
 
+// Convert the value of IEEE 1394 CYCLE_TIME register to the format of timeStamp field in
+// descriptors of 1394 OHCI.
+static inline u32 cycle_time_to_ohci_tstamp(u32 tstamp)
+{
+	return (tstamp & 0x0ffff000) >> 12;
+}
+
 #define FW_PHY_CONFIG_NO_NODE_ID	-1
 #define FW_PHY_CONFIG_CURRENT_GAP_COUNT	-1
 void fw_send_phy_config(struct fw_card *card,
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 17c9d825188b..06386c3b7f03 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1623,6 +1623,8 @@ static void handle_local_request(struct context *ctx, struct fw_packet *packet)
 	}
 }
 
+static u32 get_cycle_time(struct fw_ohci *ohci);
+
 static void at_context_transmit(struct context *ctx, struct fw_packet *packet)
 {
 	unsigned long flags;
@@ -1633,6 +1635,10 @@ static void at_context_transmit(struct context *ctx, struct fw_packet *packet)
 	if (HEADER_GET_DESTINATION(packet->header[0]) == ctx->ohci->node_id &&
 	    ctx->ohci->generation == packet->generation) {
 		spin_unlock_irqrestore(&ctx->ohci->lock, flags);
+
+		// Timestamping on behalf of the hardware.
+		packet->timestamp = cycle_time_to_ohci_tstamp(get_cycle_time(ctx->ohci));
+
 		handle_local_request(ctx, packet);
 		return;
 	}
@@ -1640,9 +1646,12 @@ static void at_context_transmit(struct context *ctx, struct fw_packet *packet)
 	ret = at_context_queue_packet(ctx, packet);
 	spin_unlock_irqrestore(&ctx->ohci->lock, flags);
 
-	if (ret < 0)
-		packet->callback(packet, &ctx->ohci->card, packet->ack);
+	if (ret < 0) {
+		// Timestamping on behalf of the hardware.
+		packet->timestamp = cycle_time_to_ohci_tstamp(get_cycle_time(ctx->ohci));
 
+		packet->callback(packet, &ctx->ohci->card, packet->ack);
+	}
 }
 
 static void detect_dead_context(struct fw_ohci *ohci,
@@ -2557,6 +2566,10 @@ static int ohci_cancel_packet(struct fw_card *card, struct fw_packet *packet)
 	log_ar_at_event(ohci, 'T', packet->speed, packet->header, 0x20);
 	driver_data->packet = NULL;
 	packet->ack = RCODE_CANCELLED;
+
+	// Timestamping on behalf of the hardware.
+	packet->timestamp = cycle_time_to_ohci_tstamp(get_cycle_time(ohci));
+
 	packet->callback(packet, &ohci->card, packet->ack);
 	ret = 0;
  out:
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 56505436d159..365a07783604 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -270,6 +270,15 @@ typedef void (*fw_packet_callback_t)(struct fw_packet *packet,
 typedef void (*fw_transaction_callback_t)(struct fw_card *card, int rcode,
 					  void *data, size_t length,
 					  void *callback_data);
+typedef void (*fw_transaction_callback_with_tstamp_t)(struct fw_card *card, int rcode,
+					u32 request_tstamp, u32 response_tstamp, void *data,
+					size_t length, void *callback_data);
+
+union fw_transaction_callback {
+	fw_transaction_callback_t without_tstamp;
+	fw_transaction_callback_with_tstamp_t with_tstamp;
+};
+
 /*
  * This callback handles an inbound request subaction.  It is called in
  * RCU read-side context, therefore must not sleep.
@@ -321,6 +330,7 @@ struct fw_transaction {
 	struct fw_card *card;
 	bool is_split_transaction;
 	struct timer_list split_timeout_timer;
+	u32 split_timeout_cycle;
 
 	struct fw_packet packet;
 
@@ -328,7 +338,8 @@ struct fw_transaction {
 	 * The data passed to the callback is valid only during the
 	 * callback.
 	 */
-	fw_transaction_callback_t callback;
+	union fw_transaction_callback callback;
+	bool with_tstamp;
 	void *callback_data;
 };
 
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
