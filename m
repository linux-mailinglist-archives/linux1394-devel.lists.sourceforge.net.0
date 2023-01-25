Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD59267B23F
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeVA-0005CD-Oa;
	Wed, 25 Jan 2023 12:03:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeV3-0005B2-MN
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4qNJoZP3xhEdcFzYFpHl0G/Z8VsY9m5iDjOTEFzn2zE=; b=f6cY0tqPrmKJCuz1uXkzpuJ+6s
 b3UoiAvxSEB1fJ//EtK9ygxmXQP26kDK1MrvHPNxUVHlYxe0e9JNJQ5/CARS2n5Yh7ANPLjc2TluI
 LplnzA/LagEmQn2TVJzTAFmSGkbzF5xwA636XAGGoh5C2BVflTj4ZfUm2RhAbLRjQc0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4qNJoZP3xhEdcFzYFpHl0G/Z8VsY9m5iDjOTEFzn2zE=; b=Fmikj/p+yxAEwr7Ht4FCEIap6Z
 AiEDDzAsbzBlymgYWMhqLqscmAOLvRiuYTsjMDhs+aVT85AxoFLKoMpuigmAGdUIHqdjC235yrOts
 quMLrTYHCVRMA3OO7XM1mgtYy3fwCG1x9wiJTEimLgne1f3R1aXIVLCd4LxaXIaSm3rU=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeV1-00088r-29 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 063845C01B3;
 Wed, 25 Jan 2023 07:03:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 25 Jan 2023 07:03:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648199; x=
 1674734599; bh=4qNJoZP3xhEdcFzYFpHl0G/Z8VsY9m5iDjOTEFzn2zE=; b=l
 zXMNCFet1y42P0mzSdaY6LlTG80H8x0KrAeXmnAjoCR9zvwFa6Gqnftph+ePZpQv
 OST1QSDYIfwCw78Zbk1rCKdyWU5OBNkAPnRjKHcxifz5EYgLu1kYeiZvkaRVkDVM
 cCqO8KOb+zgQ/CQ9pclXAKOMnQNraL+dyPB4jsOoCcTU970F0zd+lo7p+mcxBGLY
 SAVr09R9HULj6WdhNZ4TpkrHVAjIZdKLHlig0MnsIgQTk8kgioi0HE18GvRIhp/3
 rf1+HFT0LdSvYkDOrfJkdZNFWluX7nbYdzTyvc1Q0jHD88trn/NPM3nagGBQWy1F
 TH2Ll5RgYLLETuc6Us+5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648199; x=1674734599; bh=4qNJoZP3xhEdc
 FzYFpHl0G/Z8VsY9m5iDjOTEFzn2zE=; b=kzRuWlN4/vhhXo0yq3PYHhwnSd3Td
 ardoKNn5FqDWUj2oweQA9iAxaF7Y6yXwgTqBVL2ZcmMfLYItS6zJlXff7EPGCV6/
 CfQf26e4zlnL4toK20B73XfEWxiEMjUiUD9TZPFLuLOOe32QzmJzwRrLi2OXaJf7
 RFlzMGioY2dGv6kVrY8HbDyApSZHriciIxQIssDJ/iAKabXajmfYbAXANkfsP7kB
 MV1lV1Fi4XW8QJuH1RQF0exnAbp0hxrW5Vikyz76NrlxRuQ/V1YuRrn3xXs45ufD
 S1uE01QQ6TDLEMBkzbUpAsmR7dW2ezkBk46Ikv0NCOp6a1Fj4msaU1rtg==
X-ME-Sender: <xms:hhrRY2kHcHtltNNtXvdTkFfbluNaAtNmEmOC7NtmpbjV0pyevfsAbQ>
 <xme:hhrRY92ZHWCvkkbXe4ALBlVJjuLOr-3wD4VCCBlB7z-mIUlG6TmqSLwRIqfX4QXlz
 8ybzt3u3qsGdOlmlSc>
X-ME-Received: <xmr:hhrRY0pp8_lgg9tcrJIUVoZBWEGPxnnRR1iUiJ5zL-6ABgKurCKKUoEBeWWixy22myI6gU1ScTBAcVJPtre6W3q-AtqsJLrjmpKnaICxpUDLthtNHjJwVvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:hhrRY6m8V56fJWLN31RMgdhGmhKomeXBobHsw7lX4Y-yvWo-qbotZA>
 <xmx:hhrRY03u6vQd_rtXW-k6DJW4VstBwR5sj-Sc4VH-F69Ruzba4fnj8Q>
 <xmx:hhrRYxtBA1B9wfj-OKEDvWMVjjC_GKssUCabEH3JIgidilxLHJ4vCQ>
 <xmx:hxrRYyCYNn3ipmC4UPf-YW4sfavlDhcxNfU7yhsDtmPEUJVdmxBykA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:17 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 08/11] firewire: cdev: implement new event to notify response
 subaction with time stamp
Date: Wed, 25 Jan 2023 21:02:58 +0900
Message-Id: <20230125120301.51585-9-o-takashi@sakamocchi.jp>
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
 Content preview: The callback function now receives an argument for time
 stamps
 relevant to asynchronous transaction. This commit implements a new event
 to notify response subaction with the time stamps for user space [...] 
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
X-Headers-End: 1pKeV1-00088r-29
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
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
