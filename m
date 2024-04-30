Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F37528B66CD
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Apr 2024 02:14:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1b8V-0007qH-2z;
	Tue, 30 Apr 2024 00:14:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1b8T-0007q7-3v
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 00:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hr78+iTtvJXTwj7q8gZRLKxv3nui8iV2ZdOeKx/4HVw=; b=iIhp9XZsgbU2eTgB1O1DPvVF0A
 7+zUl71hjEC9REtjLr2HvvaQW0Y2uUU7/pbt9czTjLRVaKJZpfaY9xx0Pi3KLvRhnf0BEq8+fwyvV
 vRSHOUii1fWKI3Y0g7gd+WqpbmW3AS3zhaMCkD4H2ItMH9X/Ro/TNBO302TkdWc+xUO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hr78+iTtvJXTwj7q8gZRLKxv3nui8iV2ZdOeKx/4HVw=; b=kOEoErlYrPCgWTOdQv/v5ZCcLH
 uG5Q+4ggNvHEhNJhoD9Kb1a7ZdYpMSLj55o74wx79tANCHJhUleEgoVkDviRut8R4xaIx+cNVCTVK
 YTTjPj62LELW4zRNj6V+DzV+YgVe7fF+SZNdscz3K6LI8AnUjeewv6jd0xZjGjJiqTZ0=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1b8R-0001hs-L2 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 00:14:17 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id 6A2AA1800117;
 Mon, 29 Apr 2024 20:14:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 29 Apr 2024 20:14:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714436050; x=
 1714522450; bh=Hr78+iTtvJXTwj7q8gZRLKxv3nui8iV2ZdOeKx/4HVw=; b=d
 H/If4aIpp0PqrRHNEJWcIgt3c4HyGXWbGd4F/9YaHr6DrBboQ7c4US2mjGbQuGCQ
 wZ7VYL0hS15VeY3deLzciybhBdIjlOJrZZsxjrUx3pZOWxtoThkjS5pElzAY1v38
 s/32HK1it6WLnYjiTDTbvVfACoMo33o6ivkxguW0F0qwTcOGVlGSOml2Rnmb2k3C
 79gDPrYjsVCFv/0dZgmgXJ0hKcby0Rt+Q0iW7i9v68hzY4i3EsM75nE3BQpLO3Ze
 ci8mxE8jkXc9/2Iwt8fiA7rTliazPqZXTyBopXChDirabbA3CYCzu9XXSsI5PcHH
 gB2+cV306zgv041SD3kvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714436050; x=
 1714522450; bh=Hr78+iTtvJXTwj7q8gZRLKxv3nui8iV2ZdOeKx/4HVw=; b=b
 n77oDCp3NNtWEbqDlGfyALlShZsn9f0SEhOV0IRZYATyHQ2vlgYHvfD0ya3grU7a
 bAzUz8WFbWrDhx2L/plH+WVZPu86D6Ytmfg9D6EUFACyDTXSw8NQMowvbnUMiHaO
 KKrAEZf/uFDth4AI3aNYFEi6FKGyxOeETb0KU7nJmK5OEGYfNypaRuCXZxhJjB5i
 sNX1Fk7G2n8oSS3eRC3UmwE2SzvVWOmVTBs+rDQr+ugIGy592CHgcfnKA/pfFTLK
 iw6X5mYXGTbEXlMowa14v4wNPlbbfjng33BPdkXrEF7rcfSFbr1iGqLrT9irOdqH
 vRdiOoEm75g/Dvhof31Yg==
X-ME-Sender: <xms:0TcwZo5djTquAhZt99wdBSqMUDGcB5Wmoho9rW5xvS0L-QZSAfKgyQ>
 <xme:0TcwZp6FHJurRTfKEExze4z9osWwQtAVKnin5zGWsmtAbuor-cw2FQHoXvAAKmEd9
 j8_ZnpKk8fBtDaQOLA>
X-ME-Received: <xmr:0TcwZncwOdReupCh0cQFK9QEjNEFbeSqCWswtEQaTVlKeiXC9snzMVz0Wn18Egj2aYm2MBRTZlnDFy2cmXk2vjbp6CPuRNooPsEq1oCu12ZRwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduvddgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:0TcwZtL4e-K-XkRH_yX7ShCslkBbTQAca9Esmfr2EmKDJDfarF9Ecw>
 <xmx:0TcwZsJhMYohtpgy366vyYcUNbpOMBxGiNnvvXE9tsDV90fd5n6wCg>
 <xmx:0TcwZuyHmRCqaqHWmnHaZnAOfBS4Wg3HbhY3BUCBjeXVtftQM4z1sw>
 <xmx:0TcwZgJ5qmlcYblIraBStauynPDhykp8wo_OVfGYmFIsQn8pPHunVg>
 <xmx:0jcwZjUl6tfPqYMM2pw2ZAgIQ44Q8iTs11V8-YhOgdNUayw8puBx_cpB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 20:14:08 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core/cdev: add tracepoints events for
 asynchronous phy packet
Date: Tue, 30 Apr 2024 09:14:03 +0900
Message-ID: <20240430001404.734657-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240430001404.734657-1-o-takashi@sakamocchi.jp>
References: <20240430001404.734657-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In IEEE 1394 bus, the type of asynchronous packet without
 any offset to node address space is called as phy packet. The destination
 of packet is IEEE 1394 phy itself. This type of packet is used for s [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1b8R-0001hs-L2
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

In IEEE 1394 bus, the type of asynchronous packet without any offset to
node address space is called as phy packet. The destination of packet is
IEEE 1394 phy itself. This type of packet is used for several purposes,
mainly for selfID at the state of bus reset, to force selection of root
node, and to adjust gap count.

This commit adds tracepoints events for the type of asynchronous outbound
packet. Like asynchronous outbound transaction packets, a pair of events
are added to trace initiation and completion of transmission.

In the case that the phy packet is sent by kernel API, the match between
the initiation and completion is not so easy, since the data of
'struct fw_packet' is allocated statically. In the case that it is sent by
userspace applications via cdev, the match is easy, since the data is
allocated per each.

This example is for Remote Access Packet by lsfirewirephy command in
linux-firewire-utils:

async_phy_outbound_initiate: \
  packet=0xffff89fb34e42e78 generation=1 first_quadlet=0x00148200 \
  second_quadlet=0xffeb7dff
async_phy_outbound_complete: \
  packet=0xffff89fb34e42e78 generation=1 status=1 timestamp=0x0619

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c        |  7 +++++
 drivers/firewire/core-transaction.c |  6 ++++
 include/trace/events/firewire.h     | 48 +++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 6274b86eb943..55993c9e0b90 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -35,6 +35,7 @@
 
 
 #include "core.h"
+#include <trace/events/firewire.h>
 
 /*
  * ABI version history is documented in linux/firewire-cdev.h.
@@ -1558,6 +1559,9 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 	struct client *e_client = e->client;
 	u32 rcode;
 
+	trace_async_phy_outbound_complete((uintptr_t)packet, status, packet->generation,
+					  packet->timestamp);
+
 	switch (status) {
 	// expected:
 	case ACK_COMPLETE:
@@ -1655,6 +1659,9 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 		memcpy(pp->data, a->data, sizeof(a->data));
 	}
 
+	trace_async_phy_outbound_initiate((uintptr_t)&e->p, e->p.generation, e->p.header[1],
+					  e->p.header[2]);
+
 	card->driver->send_request(card, &e->p);
 
 	return 0;
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 0e49ebf52500..a828b7167d15 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -463,6 +463,8 @@ static DECLARE_COMPLETION(phy_config_done);
 static void transmit_phy_packet_callback(struct fw_packet *packet,
 					 struct fw_card *card, int status)
 {
+	trace_async_phy_outbound_complete((uintptr_t)packet, packet->generation, status,
+					  packet->timestamp);
 	complete(&phy_config_done);
 }
 
@@ -501,6 +503,10 @@ void fw_send_phy_config(struct fw_card *card,
 	phy_config_packet.generation = generation;
 	reinit_completion(&phy_config_done);
 
+	trace_async_phy_outbound_initiate((uintptr_t)&phy_config_packet,
+					  phy_config_packet.generation, phy_config_packet.header[1],
+					  phy_config_packet.header[2]);
+
 	card->driver->send_request(card, &phy_config_packet);
 	wait_for_completion_timeout(&phy_config_done, timeout);
 
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index d4688e341837..3ade7d4b9268 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -206,6 +206,54 @@ DEFINE_EVENT(async_outbound_complete_template, async_response_outbound_complete,
 #undef ASYNC_HEADER_GET_RCODE
 #undef QUADLET_SIZE
 
+TRACE_EVENT(async_phy_outbound_initiate,
+	TP_PROTO(u64 packet, unsigned int generation, u32 first_quadlet, u32 second_quadlet),
+	TP_ARGS(packet, generation, first_quadlet, second_quadlet),
+	TP_STRUCT__entry(
+		__field(u64, packet)
+		__field(u8, generation)
+		__field(u32, first_quadlet)
+		__field(u32, second_quadlet)
+	),
+	TP_fast_assign(
+		__entry->packet = packet;
+		__entry->generation = generation;
+		__entry->first_quadlet = first_quadlet;
+		__entry->second_quadlet = second_quadlet
+	),
+	TP_printk(
+		"packet=0x%016llx generation=%u first_quadlet=0x%08x second_quadlet=0x%08x",
+		__entry->packet,
+		__entry->generation,
+		__entry->first_quadlet,
+		__entry->second_quadlet
+	)
+);
+
+TRACE_EVENT(async_phy_outbound_complete,
+	TP_PROTO(u64 packet, unsigned int generation, unsigned int status, unsigned int timestamp),
+	TP_ARGS(packet, generation, status, timestamp),
+	TP_STRUCT__entry(
+		__field(u64, packet)
+		__field(u8, generation)
+		__field(u8, status)
+		__field(u16, timestamp)
+	),
+	TP_fast_assign(
+		__entry->packet = packet;
+		__entry->generation = generation;
+		__entry->status = status;
+		__entry->timestamp = timestamp;
+	),
+	TP_printk(
+		"packet=0x%016llx generation=%u status=%u timestamp=0x%04x",
+		__entry->packet,
+		__entry->generation,
+		__entry->status,
+		__entry->timestamp
+	)
+);
+
 #endif // _FIREWIRE_TRACE_EVENT_H
 
 #include <trace/define_trace.h>
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
