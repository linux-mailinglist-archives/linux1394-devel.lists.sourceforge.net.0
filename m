Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3863E8B66CE
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Apr 2024 02:14:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1b8b-0004g1-9J;
	Tue, 30 Apr 2024 00:14:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1b8Z-0004fs-NP
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 00:14:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tp122UnR3pnsKSGpowqnjXWFjoFKONpXEM4cHTo76o0=; b=ZSvJhYFmsKKA6hKyryxndgygAq
 bllmfWwbpo24i7aoFya+OY/gJYzeO8hV+JxZMe4SB+k5AqirC4RGCa7weJalsA34jRembDRfzp8PO
 9u/WFez5Z9AFercpDp8EeZlLydB3uiCC0m0dLzDy8+AZLGD8QMnu9nv8/AyGiInH7mJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tp122UnR3pnsKSGpowqnjXWFjoFKONpXEM4cHTo76o0=; b=L9SqBbI4G8/KiiXgLUgQuujjRq
 8GaBMcNdlPQufk4u3a6Mr9gd3ztGsaztUk19ibDcShyGn00/UOUYGwKYcIMOYjBDvR83DVCyWoN5P
 jWz3KNlFkiYy0+6xGSc7DWq92mstxUXNMuxdKEU4YlA0XS6FKl2fhfnWwgIf2RwJCswo=;
Received: from wfout3-smtp.messagingengine.com ([64.147.123.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1b8Y-0001jP-SL for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 00:14:24 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfout.west.internal (Postfix) with ESMTP id A4FAE1C00139;
 Mon, 29 Apr 2024 20:14:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Mon, 29 Apr 2024 20:14:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714436052; x=
 1714522452; bh=Tp122UnR3pnsKSGpowqnjXWFjoFKONpXEM4cHTo76o0=; b=j
 6fLsFqNSmkHgAwtQtHhdEUXfpMCc1/fp5Oj0fTo5C5VPD3AZcgw90C5c07yp9dsv
 yHhdPdXik6EerF4dnoO8pu1of77RN8CGBDkgBMURu48hR0/Rz2SYC3fIQczGx1ui
 h1qDp63X+hq72ETsLiB/nyLd7ZxNsXd+KvcRBO9Rsmk36IgUej8dTqNEK0TVrMkB
 6ilaBJfOC+dvXRdTQTJMvpPpFLn9TD9dtF/ohos1BO4e7pgESFLgJX5wGfJsjdje
 Rm8eG8j76J9z4x4PiOdVepYCN2mT65zocQJmnY4rrYb0omve7VRSI3sWh37TApfx
 5VJmslt93+8XvLGDmhmWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714436052; x=
 1714522452; bh=Tp122UnR3pnsKSGpowqnjXWFjoFKONpXEM4cHTo76o0=; b=L
 q5o/44Ig6XzllntaVdiLyc8Ed3SlU5iXugfIFBL6Zc+IrTZwC++hGpeFjUATDfuk
 NIivjMPHHEudDPA96k95u16AV4+EK2tDw2aJRH/sEmgVl+rS+33Xw54UPQYK/xu5
 40K5dcW8TuSzP9JXDUubHislsaYPrFxveaN5cS1PlZkVZwYQUuan7eFvzoKFndHk
 Xmr5dHU/HERcptorsNe5rHkOyVCMnNdOj8paI3rVqfcUqKlb411HbKOD+o6UCHkl
 dTpQflzSpv3AdNAekis1bDsZm+apy0Yn1S2ojWMlv+VsUF9RHMmRJMbGExqzEwPG
 xL6eaDI+0TQdyS4ePu+7Q==
X-ME-Sender: <xms:0zcwZvst1t87p-coPKYkONsvBhh2lrBGDaNBuVej-2287PUSdG-JOg>
 <xme:0zcwZgcy2xAcvKVC5gyqAqtZEXBJbw81qYanPcRI2BJ0x8-7SJ6drwN0jXUoZd6oF
 -m2a__7g83S4v9lacY>
X-ME-Received: <xmr:0zcwZizvGkSYeyBJZX5_ce4Ygx_y_1mUOV0YeOcT2EOmMPsfF5LxNNmxks8_tmHjnST4tTUquTj0qsh8uxJNXIiSJ8iWvqfuaN7IEyZSZpK62A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduvddgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:0zcwZuPJzBsV58UgyENtQnzvGyg2JreK6mSgmE5PKftyR3xnKRQbHg>
 <xmx:0zcwZv-rGwdYXYTH0oi9g1oG5qZa_klZHLnvXfoBmJtPKPIwLF-zpw>
 <xmx:0zcwZuXxSRXVaOwIxBKnFDs1trZcxprEQLXHKwj0C6G80sRzarkygQ>
 <xmx:0zcwZgdOiYekWWdMHJxrXPf2kSJL88d1b2owtH9KeLq2teWhrJ7eZA>
 <xmx:1DcwZhKaChQzmBaRlm6RqvWNuZHTV4UnZw_KybxcCcv4d9NYqyO8QlEH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 20:14:10 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: add tracepoints event for asynchronous
 inbound phy packet
Date: Tue, 30 Apr 2024 09:14:04 +0900
Message-ID: <20240430001404.734657-3-o-takashi@sakamocchi.jp>
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
 Content preview:  At the former commit, a pair of tracepoints events is added
 to trace asynchronous outbound phy packet. This commit adds a tracepoints
 event to trace inbound phy packet. It includes transaction status [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1b8Y-0001jP-SL
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

At the former commit, a pair of tracepoints events is added to trace
asynchronous outbound phy packet. This commit adds a tracepoints event
to trace inbound phy packet. It includes transaction status as well as
the content of phy packet.

This is an example for Remote Reply Packet as a response to Remote Access
Packet sent by lsfirewirephy command in linux-firewire-utils:

async_phy_inbound: \
  packet=0xffff955fc02b4e10 generation=1 status=1 timestamp=0x0619 \
  first_quadlet=0x001c8208 second_quadlet=0xffe37df7

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c |  2 ++
 include/trace/events/firewire.h     | 30 +++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a828b7167d15..d3eefbf23663 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -995,6 +995,8 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 
 	tcode = async_header_get_tcode(p->header);
 	if (tcode_is_link_internal(tcode)) {
+		trace_async_phy_inbound((uintptr_t)p, p->generation, p->ack, p->timestamp,
+					 p->header[1], p->header[2]);
 		fw_cdev_handle_phy_packet(card, p);
 		return;
 	}
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 3ade7d4b9268..db49b9828bd1 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -254,6 +254,36 @@ TRACE_EVENT(async_phy_outbound_complete,
 	)
 );
 
+TRACE_EVENT(async_phy_inbound,
+	TP_PROTO(u64 packet, unsigned int generation, unsigned int status, unsigned int timestamp, u32 first_quadlet, u32 second_quadlet),
+	TP_ARGS(packet, generation, status, timestamp, first_quadlet, second_quadlet),
+	TP_STRUCT__entry(
+		__field(u64, packet)
+		__field(u8, generation)
+		__field(u8, status)
+		__field(u16, timestamp)
+		__field(u32, first_quadlet)
+		__field(u32, second_quadlet)
+	),
+	TP_fast_assign(
+		__entry->packet = packet;
+		__entry->generation = generation;
+		__entry->status = status;
+		__entry->timestamp = timestamp;
+		__entry->first_quadlet = first_quadlet;
+		__entry->second_quadlet = second_quadlet
+	),
+	TP_printk(
+		"packet=0x%016llx generation=%u status=%u timestamp=0x%04x first_quadlet=0x%08x second_quadlet=0x%08x",
+		__entry->packet,
+		__entry->generation,
+		__entry->status,
+		__entry->timestamp,
+		__entry->first_quadlet,
+		__entry->second_quadlet
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
