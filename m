Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DF671489B
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 May 2023 13:34:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3b98-0003wF-MY;
	Mon, 29 May 2023 11:34:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3b94-0003w0-JD
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=19oDU4fEk+sheHYZWOnoN5cHboklhnnlKJrCnG0DjSI=; b=f2dbUcf2THoG2Li9Ffw8qKXgpr
 8gc58OXDKkjgnXxmE+tMX94Rcd4FzvCxmWt+/Su1Conmx63GXzRpypejG+Y17e4HT//xReZuanJJq
 UO+x2HSibIQePMoEryr7h77xLUwFnKxUU3zA++7XXGqbY8jlWrYBwuPPYuUxRT8ZPXoE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=19oDU4fEk+sheHYZWOnoN5cHboklhnnlKJrCnG0DjSI=; b=OXl8zIsWasv8RqCpmq0ITYhDh4
 w85aNxgmGKbX8KvdVRKN7WwHrpYbElDMpjba8wqG8RQ3XAAMVR2/s0FEbZz/I0KSRkriqdPnC96uq
 4mvJjRn1YRnojIC2PmOoQZqFjcHYmBThgL6lAnDyM9eZtb0qRCweqsV1/s+f3UU53m40=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3b93-0008Lb-0C for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 11:34:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 6FE6832004CE;
 Mon, 29 May 2023 07:34:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 29 May 2023 07:34:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685360071; x=
 1685446471; bh=19oDU4fEk+sheHYZWOnoN5cHboklhnnlKJrCnG0DjSI=; b=f
 Vu2ThrHMZYnWxx/VPt3E9aDHlxv35J9s3YH7epWvBi8RJhUlJv8qRUAKHd2MpSUP
 Hh5x4ltcuv347uPGyT+JYANMH4c9hL5Gqlds+cR89gBjVI1gQ2w1N6a5N5R92Foo
 qyYzYxk5xFXFtAoLGV4Trq35ZnPZjf9/HdAQrkRuTaKZtLvPCMF2Mvot4OI7xDIV
 4A83JfWK8iy2ua4S/IIjJwv96cK+YKC5H0DGAXl5aaO+n9okgA5R29Bb5H8FbYxf
 nRLLis014TKu+e3SXP0I51elJd/MmgoKpunSKUB03bZuLpquy25g0wYUqLtfKCNF
 94XrmERtJ3lw2ALfDuAeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685360071; x=1685446471; bh=1
 9oDU4fEk+sheHYZWOnoN5cHboklhnnlKJrCnG0DjSI=; b=YZdQMWgNnc91Co2nh
 CRi3lb9z9uwMwuAwY+QU8bivt0qVB5wJikOCSa5+drJJ2kQ28QZyHtLp6bUJL8pr
 WdIjtGPfQIFiBu6Qv8qmkQ4V6/x1t+T49Z//AYYsVBissiBnY4hNiv0ua8MjCywf
 5L8SAiYaPZoqfCifieUkmzmzYpH1Vh8qP8vN08CE+WBp+qfQdvmo/HhExJ5mHhT/
 JV2gOJH9RzRsfDWBbgskVBfS4qSmuC0Mu7W6b3uKypeeyNc1iDJ6qBS8UqoXv2E7
 qmfjCyZmcCzWNzCOX6HdjcovwAPoF+rJosVxPWV4lawU0uMHlIGTjayxV5Qv9ikq
 b4thQ==
X-ME-Sender: <xms:xo10ZO4VMOwh02NRcraHVqvbi7uLtXZJVJOGV2ZE4M_gY8a_7fM7kQ>
 <xme:xo10ZH5Gi6fdxesSTHV1fLpxeex5pSjNsVcHa6vNN_a4pu76lYnxQdZun9rkKGJqJ
 09JSN9pz2aAGPswODg>
X-ME-Received: <xmr:xo10ZNePKq-1QzLQ9kdDPDmQLHn6ZrssLDUZwFTgt5YPL6PmUnEEank3vwtUE8Qsc8jVl5mgLnkm3jco8EqdD2V-tk5pJg4zBUuHzkPz0Wi9zA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekhedggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:xo10ZLLUcSMMaXMn28pis7TEjlbes_hYjMGiyJsi2dB-SfR7qUH8kw>
 <xmx:xo10ZCJA6wgswI2RScNKtnsdZ03nebOw0fQ_NbLLTcC41F_yCqza_Q>
 <xmx:xo10ZMx2B0SUcgWx04JrefZV3cdm1ZF5agam8fhSjoj0OYKUej_dLQ>
 <xmx:x410ZMwwM3-tnzNtdKtE5qgu9iXmXCiaj6w5JzbZ-dB-yRaHvzQxEA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 07:34:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 09/12] firewire: cdev: implement new event to notify
 response subaction with time stamp
Date: Mon, 29 May 2023 20:34:03 +0900
Message-Id: <20230529113406.986289-10-o-takashi@sakamocchi.jp>
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
 Content preview: The callback function now receives an argument for time
 stamps
 relevant to asynchronous transaction. This commit implements a new event
 to notify response subaction with the time stamps for user space [...] 
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
X-Headers-End: 1q3b93-0008Lb-0C
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

The callback function now receives an argument for time stamps relevant
to asynchronous transaction. This commit implements a new event to
notify response subaction with the time stamps for user space.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 96 ++++++++++++++++++++++++------------
 1 file changed, 65 insertions(+), 31 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 315ebc8c545d..8b24abdd51b8 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -172,6 +172,7 @@ struct outbound_transaction_event {
 	struct outbound_transaction_resource r;
 	union {
 		struct fw_cdev_event_response without_tstamp;
+		struct fw_cdev_event_response2 with_tstamp;
 	} rsp;
 };
 
@@ -538,41 +539,64 @@ static void release_transaction(struct client *client,
 {
 }
 
-static void complete_transaction(struct fw_card *card, int rcode,
-				 void *payload, size_t length, void *data)
+static void complete_transaction(struct fw_card *card, int rcode, u32 request_tstamp,
+				 u32 response_tstamp, void *payload, size_t length, void *data)
 {
 	struct outbound_transaction_event *e = data;
-	struct fw_cdev_event_response *rsp = &e->rsp.without_tstamp;
 	struct client *client = e->client;
 	unsigned long flags;
 
-	if (length < rsp->length)
-		rsp->length = length;
-	if (rcode == RCODE_COMPLETE)
-		memcpy(rsp->data, payload, rsp->length);
-
 	spin_lock_irqsave(&client->lock, flags);
 	idr_remove(&client->resource_idr, e->r.resource.handle);
 	if (client->in_shutdown)
 		wake_up(&client->tx_flush_wait);
 	spin_unlock_irqrestore(&client->lock, flags);
 
-	rsp->type = FW_CDEV_EVENT_RESPONSE;
-	rsp->rcode = rcode;
+	switch (e->rsp.without_tstamp.type) {
+	case FW_CDEV_EVENT_RESPONSE:
+	{
+		struct fw_cdev_event_response *rsp = &e->rsp.without_tstamp;
+
+		if (length < rsp->length)
+			rsp->length = length;
+		if (rcode == RCODE_COMPLETE)
+			memcpy(rsp->data, payload, rsp->length);
+
+		rsp->rcode = rcode;
+
+		// In the case that sizeof(*rsp) doesn't align with the position of the
+		// data, and the read is short, preserve an extra copy of the data
+		// to stay compatible with a pre-2.6.27 bug.  Since the bug is harmless
+		// for short reads and some apps depended on it, this is both safe
+		// and prudent for compatibility.
+		if (rsp->length <= sizeof(*rsp) - offsetof(typeof(*rsp), data))
+			queue_event(client, &e->event, rsp, sizeof(*rsp), rsp->data, rsp->length);
+		else
+			queue_event(client, &e->event, rsp, sizeof(*rsp) + rsp->length, NULL, 0);
 
-	/*
-	 * In the case that sizeof(*rsp) doesn't align with the position of the
-	 * data, and the read is short, preserve an extra copy of the data
-	 * to stay compatible with a pre-2.6.27 bug.  Since the bug is harmless
-	 * for short reads and some apps depended on it, this is both safe
-	 * and prudent for compatibility.
-	 */
-	if (rsp->length <= sizeof(*rsp) - offsetof(typeof(*rsp), data))
-		queue_event(client, &e->event, rsp, sizeof(*rsp),
-			    rsp->data, rsp->length);
-	else
-		queue_event(client, &e->event, rsp, sizeof(*rsp) + rsp->length,
-			    NULL, 0);
+		break;
+	}
+	case FW_CDEV_EVENT_RESPONSE2:
+	{
+		struct fw_cdev_event_response2 *rsp = &e->rsp.with_tstamp;
+
+		if (length < rsp->length)
+			rsp->length = length;
+		if (rcode == RCODE_COMPLETE)
+			memcpy(rsp->data, payload, rsp->length);
+
+		rsp->rcode = rcode;
+		rsp->request_tstamp = request_tstamp;
+		rsp->response_tstamp = response_tstamp;
+
+		queue_event(client, &e->event, rsp, sizeof(*rsp) + rsp->length, NULL, 0);
+
+		break;
+	default:
+		WARN_ON(1);
+		break;
+	}
+	}
 
 	/* Drop the idr's reference */
 	client_put(client);
@@ -583,7 +607,6 @@ static int init_request(struct client *client,
 			int destination_id, int speed)
 {
 	struct outbound_transaction_event *e;
-	struct fw_cdev_event_response *rsp;
 	void *payload;
 	int ret;
 
@@ -600,10 +623,21 @@ static int init_request(struct client *client,
 		return -ENOMEM;
 	e->client = client;
 
-	rsp = &e->rsp.without_tstamp;
-	rsp->length = request->length;
-	rsp->closure = request->closure;
-	payload = rsp->data;
+	if (client->version < FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP) {
+		struct fw_cdev_event_response *rsp = &e->rsp.without_tstamp;
+
+		rsp->type = FW_CDEV_EVENT_RESPONSE;
+		rsp->length = request->length;
+		rsp->closure = request->closure;
+		payload = rsp->data;
+	} else {
+		struct fw_cdev_event_response2 *rsp = &e->rsp.with_tstamp;
+
+		rsp->type = FW_CDEV_EVENT_RESPONSE2;
+		rsp->length = request->length;
+		rsp->closure = request->closure;
+		payload = rsp->data;
+	}
 
 	if (request->data && copy_from_user(payload, u64_to_uptr(request->data), request->length)) {
 		ret = -EFAULT;
@@ -615,9 +649,9 @@ static int init_request(struct client *client,
 	if (ret < 0)
 		goto failed;
 
-	fw_send_request(client->device->card, &e->r.transaction, request->tcode, destination_id,
-			request->generation, speed, request->offset, payload, request->length,
-			complete_transaction, e);
+	fw_send_request_with_tstamp(client->device->card, &e->r.transaction, request->tcode,
+				    destination_id, request->generation, speed, request->offset,
+				    payload, request->length, complete_transaction, e);
 	return 0;
 
  failed:
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
