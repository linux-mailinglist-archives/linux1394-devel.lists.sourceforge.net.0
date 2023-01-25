Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF2167B23E
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeVB-0005CP-2C;
	Wed, 25 Jan 2023 12:03:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeV4-0005BG-5R
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=emwjPuAJA02+UQjUpJ9j6SBs61cts4zb343YeiC8Exw=; b=FamTma5m6K5Iz+6ir5l4i/ddBE
 3kb11mXio9K1UEnD+q58/88lwhe+ejc5cl/P8sgn/9A5TMJsxp2yGDkbJG/ht/phvcmYItd9uz/qD
 imZcUqyLtur2OJcf80j05O0DOC1HqTmkA67P27dvkaJU7m5gWXW5Qqmxm/uT2g6a1LAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=emwjPuAJA02+UQjUpJ9j6SBs61cts4zb343YeiC8Exw=; b=jm9+WvWEcb8a5Zi1wdp23EYkEu
 FrVR8AFgzlmTwkUxGeaZeJoOxDcgGdTlTp9WxoDuDkrnXJoTcfJHAZYlcjcYdOYaAUCSTY75P+IxI
 43fSsjrZiUKya77+Sd5oB/+DAUcsnaOi3LXFohYfvqhIkt2Enjr45l0Ltketcb0SfcrM=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeV1-00FITv-Lf for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8CCB55C01BD;
 Wed, 25 Jan 2023 07:03:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 25 Jan 2023 07:03:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648203; x=
 1674734603; bh=emwjPuAJA02+UQjUpJ9j6SBs61cts4zb343YeiC8Exw=; b=d
 qLEnG1ZrdLHsiaHZH7Se3GHhqs9Br/qGT+OGCKVkk1WJf1PB4HRHwu8k46120LIj
 PDH2waylB5SM/c2A+ki42oiziu0kS8+coqzRqsAiSZQ2gA1EUSGYucmX8DyefT0E
 ZqMsn54i7Y89l8FFex2XQyJ4HDlFO1ILUlE8s2T/gDVGEIGC4PD6D8nDC7DsNBhk
 Fnlz/kZmirHX3g21HBn3wa+29U0C61VCNJdUGl+Q+vyRzYc1OYg7MT/Z+wkSjH5D
 o+pJQOT+A8YNdti2Hbe1+zxWKSl9bCtotfN6HzAkJAte1NSiByPpmT+fmQoNLArF
 qSeQQKG5bA8mr3IHoJShw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648203; x=1674734603; bh=emwjPuAJA02+U
 QjUpJ9j6SBs61cts4zb343YeiC8Exw=; b=DpKHuLaiwd3eJEJYICQnRol7s+Ptu
 xXknM4A4Li1yjpuGRojoxJexGfFWGbGJvqoskK6UIZedwQJKI1rlRRczVzLW+ezM
 IoIt6vs0RPGUhOYvqmHxsEQuQcVo8fXKIjVPfkfE27zrOC+yyl3+5n+3M/dhRv+H
 ryuvEF80cQgUh9GaM7vD/o1o8L5waLHwRFJYpMwLLh0CLFv8zZQmH3Lq4eGN6CYk
 VNwzCNKX7VVIpcLEBlR+9JTmyAFu7jB3cN/eXk6frG4rf4Jz8jTtDhWuSJo5HIRB
 +iNwGPHd9/8jU30qZKUWOX6YkzvpEujAD6NER6Ybb8YhNvImpUNekXjlQ==
X-ME-Sender: <xms:ixrRY0S-3tzrGlVNlNYM_LVTNOlNIL_N3nwX69zoyOvgCKAua6MJig>
 <xme:ixrRYxw3btDGKVmzIcFt_wvRVFrQoDFevMOBVSRg5YSl78T2RQJuQk0gmy4a5eP_k
 B1z06SXlwz_DlmJO1I>
X-ME-Received: <xmr:ixrRYx33oNEBw5CdP1HGMBVmMA8kYwl-q86MnGTXKD87vah1kn98iCsRBjCN7BsIY6mlcguPx0W-RyZb-YzugRgJ5tdzqa1zCpIk20ffPRn7JWNz-pZajQE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ixrRY4CxLBkkvhuO2afuXqPCUzcVUTA8AhLyEsn1i0yLo56yOkH6ZA>
 <xmx:ixrRY9hXxL2JVUMF9R2ixxFb17jlClKscQC8RSLFDJtsrWQK00ztMg>
 <xmx:ixrRY0oTjP_hARGD2gyMvEn9ZJAVi6zSMXXqKWERG4DdZu_1EhGc9w>
 <xmx:ixrRYwuI4f9425BldjjUg0OPbYpzDrX93e-4u8w56EMm5oSAzO-Gkw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:22 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 11/11] firewire: cdev: implement new event relevant to phy
 packet with time stamp
Date: Wed, 25 Jan 2023 21:03:01 +0900
Message-Id: <20230125120301.51585-12-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
References: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In 1394 OHCI,
 the OUTPUT_LAST descriptor of Asynchronous Transmit
 (AT) context has timeStamp field, in which 1394 OHCI controller record the
 isochronous cycle when the packet was sent for the request [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pKeV1-00FITv-Lf
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
context has timeStamp field, in which 1394 OHCI controller record the
isochronous cycle when the packet was sent for the request subaction.
Additionally, the trailing quadlet of Asynchronous Receive (AR) context
has timeStamp field as well in which 1394 OHCI controller record the
isochronous cycle when the packet arrived. The time stamps are also
available for the cases to send and receive phy packet.

This commit implements new events with time stamp field for user space.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 90 +++++++++++++++++++++++++++---------
 1 file changed, 68 insertions(+), 22 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 2220de3c945e..6274b86eb943 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -206,6 +206,7 @@ struct outbound_phy_packet_event {
 	struct fw_packet p;
 	union {
 		struct fw_cdev_event_phy_packet without_tstamp;
+		struct fw_cdev_event_phy_packet2 with_tstamp;
 	} phy_packet;
 };
 
@@ -213,6 +214,7 @@ struct inbound_phy_packet_event {
 	struct event event;
 	union {
 		struct fw_cdev_event_phy_packet without_tstamp;
+		struct fw_cdev_event_phy_packet2 with_tstamp;
 	} phy_packet;
 };
 
@@ -1555,7 +1557,6 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 		container_of(packet, struct outbound_phy_packet_event, p);
 	struct client *e_client = e->client;
 	u32 rcode;
-	struct fw_cdev_event_phy_packet *pp;
 
 	switch (status) {
 	// expected:
@@ -1583,10 +1584,31 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 		break;
 	}
 
-	pp = &e->phy_packet.without_tstamp;
-	pp->rcode = rcode;
-	pp->data[0] = packet->timestamp;
-	queue_event(e->client, &e->event, &e->phy_packet, sizeof(*pp) + pp->length, NULL, 0);
+	switch (e->phy_packet.without_tstamp.type) {
+	case FW_CDEV_EVENT_PHY_PACKET_SENT:
+	{
+		struct fw_cdev_event_phy_packet *pp = &e->phy_packet.without_tstamp;
+
+		pp->rcode = rcode;
+		pp->data[0] = packet->timestamp;
+		queue_event(e->client, &e->event, &e->phy_packet, sizeof(*pp) + pp->length,
+			    NULL, 0);
+		break;
+	}
+	case FW_CDEV_EVENT_PHY_PACKET_SENT2:
+	{
+		struct fw_cdev_event_phy_packet2 *pp = &e->phy_packet.with_tstamp;
+
+		pp->rcode = rcode;
+		pp->tstamp = packet->timestamp;
+		queue_event(e->client, &e->event, &e->phy_packet, sizeof(*pp) + pp->length,
+			    NULL, 0);
+		break;
+	}
+	default:
+		WARN_ON(1);
+		break;
+	}
 
 	client_put(e_client);
 }
@@ -1596,13 +1618,12 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 	struct fw_cdev_send_phy_packet *a = &arg->send_phy_packet;
 	struct fw_card *card = client->device->card;
 	struct outbound_phy_packet_event *e;
-	struct fw_cdev_event_phy_packet *pp;
 
 	/* Access policy: Allow this ioctl only on local nodes' device files. */
 	if (!client->device->is_local)
 		return -ENOSYS;
 
-	e = kzalloc(sizeof(*e) + 4, GFP_KERNEL);
+	e = kzalloc(sizeof(*e) + sizeof(a->data), GFP_KERNEL);
 	if (e == NULL)
 		return -ENOMEM;
 
@@ -1616,11 +1637,23 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 	e->p.header_length	= 12;
 	e->p.callback		= outbound_phy_packet_callback;
 
-	pp = &e->phy_packet.without_tstamp;
-	pp->closure = a->closure;
-	pp->type = FW_CDEV_EVENT_PHY_PACKET_SENT;
-	if (is_ping_packet(a->data))
-		pp->length = 4;
+	if (client->version < FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP) {
+		struct fw_cdev_event_phy_packet *pp = &e->phy_packet.without_tstamp;
+
+		pp->closure = a->closure;
+		pp->type = FW_CDEV_EVENT_PHY_PACKET_SENT;
+		if (is_ping_packet(a->data))
+			pp->length = 4;
+	} else {
+		struct fw_cdev_event_phy_packet2 *pp = &e->phy_packet.with_tstamp;
+
+		pp->closure = a->closure;
+		pp->type = FW_CDEV_EVENT_PHY_PACKET_SENT2;
+		// Keep the data field so that application can match the response event to the
+		// request.
+		pp->length = sizeof(a->data);
+		memcpy(pp->data, a->data, sizeof(a->data));
+	}
 
 	card->driver->send_request(card, &e->p);
 
@@ -1655,20 +1688,33 @@ void fw_cdev_handle_phy_packet(struct fw_card *card, struct fw_packet *p)
 	spin_lock_irqsave(&card->lock, flags);
 
 	list_for_each_entry(client, &card->phy_receiver_list, phy_receiver_link) {
-		struct fw_cdev_event_phy_packet *pp;
-
 		e = kmalloc(sizeof(*e) + 8, GFP_ATOMIC);
 		if (e == NULL)
 			break;
 
-		pp = &e->phy_packet.without_tstamp;
-		pp->closure = client->phy_receiver_closure;
-		pp->type = FW_CDEV_EVENT_PHY_PACKET_RECEIVED;
-		pp->rcode = RCODE_COMPLETE;
-		pp->length = 8;
-		pp->data[0] = p->header[1];
-		pp->data[1] = p->header[2];
-		queue_event(client, &e->event, &e->phy_packet, sizeof(*pp) + 8, NULL, 0);
+		if (client->version < FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP) {
+			struct fw_cdev_event_phy_packet *pp = &e->phy_packet.without_tstamp;
+
+			pp->closure = client->phy_receiver_closure;
+			pp->type = FW_CDEV_EVENT_PHY_PACKET_RECEIVED;
+			pp->rcode = RCODE_COMPLETE;
+			pp->length = 8;
+			pp->data[0] = p->header[1];
+			pp->data[1] = p->header[2];
+			queue_event(client, &e->event, &e->phy_packet, sizeof(*pp) + 8, NULL, 0);
+		} else {
+			struct fw_cdev_event_phy_packet2 *pp = &e->phy_packet.with_tstamp;
+
+			pp = &e->phy_packet.with_tstamp;
+			pp->closure = client->phy_receiver_closure;
+			pp->type = FW_CDEV_EVENT_PHY_PACKET_RECEIVED2;
+			pp->rcode = RCODE_COMPLETE;
+			pp->length = 8;
+			pp->tstamp = p->timestamp;
+			pp->data[0] = p->header[1];
+			pp->data[1] = p->header[2];
+			queue_event(client, &e->event, &e->phy_packet, sizeof(*pp) + 8, NULL, 0);
+		}
 	}
 
 	spin_unlock_irqrestore(&card->lock, flags);
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
