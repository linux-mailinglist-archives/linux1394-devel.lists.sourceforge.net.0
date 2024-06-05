Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC378FDAEF
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qo-0001Qr-5n;
	Wed, 05 Jun 2024 23:52:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Ql-0001QW-MT
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mFLRPY8Emv7QgVYkbWBjf7n/0RQSBEsg8Su4xKUqlzM=; b=Gs90SJVUDD73/LwqM/mUhr4D/o
 P3IqXBbEYfJtvzAE7r4BbclMccHaFa/5XxwCyFXjsV2iAZ67dOn65mb65PrpLtPN98qQLKhSjWT81
 K8Ic0rpTJVaIMbmBMTCu9Aot8186N9Eq0q9+C2Cxy6Y99JuvWoc+1wrj77R0pbZ0UsEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mFLRPY8Emv7QgVYkbWBjf7n/0RQSBEsg8Su4xKUqlzM=; b=iLoAAH3fgLc1UfDhHa/myi49MB
 nn1xaBLnX8Jx+/fZzAwhoEL7ONUiuT/2HrzGQ1bEAF5yvsvjs/1nzjloPAtgasAh+jBYDrtgPYEHx
 e3JqrGtmK8qp/oeMcmFUaPZHCASfcC7rhbTNzAp4YX4LQZGImKRWSeM3eOwksY1RyaQc=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0Qk-0004Zg-Vo for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:35 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id A96771800124;
 Wed,  5 Jun 2024 19:52:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 05 Jun 2024 19:52:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631543; x=
 1717717943; bh=mFLRPY8Emv7QgVYkbWBjf7n/0RQSBEsg8Su4xKUqlzM=; b=F
 COyQRTQp65TYKhNrarr04rO868DSMZRojvdmk8bPb6Yc7YlxjXWax4ndmBay0bKE
 gnoVq8qc3kdICfT1cwpFnMQ7JZF3eIySf2Qyd1OL99/73dFBGDLYxWbddsfHCnJn
 Tj5ukmzEpWg0vSl3qAW3XyN2hyWPJD8KZUhXb7hEvs+wFaOkh4RbRt+gIgm6YY0I
 zMyYVXMzKeP8dZxifVrCpn3q5oDfcHT97jnXAjA/M2EDnjwcR0DOy+McvPmEFWYN
 J5jqqSsav9z+jvcM+AlPb9+6ldjvq9r+Qu4JQ3PGzYzoagBO1nm5gyQ4a3JMFdr6
 G8cuBOq1B1vaVox1E3H7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631543; x=
 1717717943; bh=mFLRPY8Emv7QgVYkbWBjf7n/0RQSBEsg8Su4xKUqlzM=; b=D
 J4yzf2mCGdKbb46ZDM3jvxOZ63Fhljlm5j75BWzgmy92ALE+dy90hhvXt5HzdNTF
 Dg/OPYwsH7F7akZofd6YTLOuHAnGHCWQ9UAtPTsAYlU3+dXwO2lmOOKfQQ9MNmsQ
 Tm3VMu+/F5em76wgXyJQI8pmnlvOGUb+Wn9dJaeTWUQ0WnxVXljdwe+XRAH3v3Qs
 AkoVi4Idw77wIiDMSE4Oq1O/v96ZFa6zYAbj9QjTc88JmUmV4gWUjwg8WIK4rn2z
 7TaYZOhcShX1JHmQKuZ52upXJLrJLAZ/1UyhHTqXLut7v5UXqbf4k2VmYuDmYeH+
 NyvoJIpgqPhJ4Y7lhe9EQ==
X-ME-Sender: <xms:N_pgZpFCdhIAvjkEidkOlGslsNZ9K4PDYvcuaNuFlVHSWT0FiXpvrQ>
 <xme:N_pgZuW5yn-o3NpY6FbZbdv75YsNDdnKLmDBJTgnTHCpadDzwfh9lI2_TzIJpvZt6
 BB22yvZsaaZG4lIriw>
X-ME-Received: <xmr:N_pgZrI80Xikrixo0MtUfND6ftL3q3PqSAiFCGGoMyNSXAyP7i9a50KUcWsoXvHtHrlq3uDlNwFB-NgKjd08X4TKFOyk0XjyAlh2aAduxwFIwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:N_pgZvEvmgJFGvuBpx9z-Duxl5XUxWilyC4MtMFWdQHK8GsjkDvGHQ>
 <xmx:N_pgZvWzKA_grUhUj7eSlo7-IwMlr4EACANSYUSSyyWMFqUPQCkPnw>
 <xmx:N_pgZqNZxeKUC56pC31wez4XnfKKrYrg5Rt_KfIivN361UEIo7xKRQ>
 <xmx:N_pgZu0tcUv3hBZU0JdjAnkdMmV7ARkHkqQ7iZLA9KfHmv6__86OeA>
 <xmx:N_pgZshqOCYj-lewRkxhiKmogX9UF2oniuBFk_T80tEbcKeI3goHnzHo>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:22 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 11/11] firewire: core: add tracepoints event for
 self_id_sequence
Date: Thu,  6 Jun 2024 08:51:55 +0900
Message-ID: <20240605235155.116468-12-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It is helpful to trace the content of self ID sequence when
 the core function building bus topology. This commit adds a tracepoints event
 fot the purpose. It seems not to achieve printing variable length of array
 in print time without any storage, thus the structure of event includes a
 superfluous ar [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.156 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.156 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0Qk-0004Zg-Vo
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

It is helpful to trace the content of self ID sequence when the core
function building bus topology.

This commit adds a tracepoints event fot the purpose. It seems not to
achieve printing variable length of array in print time without any
storage, thus the structure of event includes a superfluous array to store
the state of port. Additionally, there is no helper function to print
symbol array, thus the state of port is printed as raw value.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c |  7 ++--
 drivers/firewire/core-trace.c    | 15 ++++++++
 include/trace/events/firewire.h  | 59 ++++++++++++++++++++++++++++++++
 3 files changed, 79 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 6ec100e17500..4a0b273392ab 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -95,7 +95,8 @@ static inline struct fw_node *fw_node(struct list_head *l)
  * internally consistent.  On success this function returns the
  * fw_node corresponding to the local card otherwise NULL.
  */
-static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self_id_count)
+static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self_id_count,
+				  unsigned int generation)
 {
 	struct self_id_sequence_enumerator enumerator = {
 		.cursor = sid,
@@ -139,6 +140,8 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 		}
 
 		port_capacity = self_id_sequence_get_port_capacity(quadlet_count);
+		trace_self_id_sequence(self_id_sequence, quadlet_count, generation);
+
 		for (port_index = 0; port_index < port_capacity; ++port_index) {
 			port_status = self_id_sequence_get_port_status(self_id_sequence, quadlet_count,
 								       port_index);
@@ -482,7 +485,7 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 	card->bm_abdicate = bm_abdicate;
 	fw_schedule_bm_work(card, 0);
 
-	local_node = build_tree(card, self_ids, self_id_count);
+	local_node = build_tree(card, self_ids, self_id_count, generation);
 
 	update_topology_map(card, self_ids, self_id_count);
 
diff --git a/drivers/firewire/core-trace.c b/drivers/firewire/core-trace.c
index 7cbf850f3719..c9bc4990d66e 100644
--- a/drivers/firewire/core-trace.c
+++ b/drivers/firewire/core-trace.c
@@ -2,7 +2,22 @@
 // Copyright (c) 2024 Takashi Sakamoto
 
 #include <linux/types.h>
+#include <linux/err.h>
 #include "packet-header-definitions.h"
+#include "phy-packet-definitions.h"
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/firewire.h>
+
+#ifdef TRACEPOINTS_ENABLED
+void copy_port_status(u8 *port_status, unsigned int port_capacity,
+		      const u32 *self_id_sequence, unsigned int quadlet_count)
+{
+	unsigned int port_index;
+
+	for (port_index = 0; port_index < port_capacity; ++port_index) {
+		port_status[port_index] =
+			self_id_sequence_get_port_status(self_id_sequence, quadlet_count, port_index);
+	}
+}
+#endif
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 1f4ef0ed65bc..4761b700ff84 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -341,6 +341,65 @@ TRACE_EVENT(bus_reset_handle,
 	)
 );
 
+// Some macros are defined in 'drivers/firewire/phy-packet-definitions.h'.
+
+// The content of TP_printk field is preprocessed, then put to the module binary.
+
+#define PHY_PACKET_SELF_ID_GET_PHY_ID(quads)		\
+	((((const u32 *)quads)[0] & SELF_ID_PHY_ID_MASK) >> SELF_ID_PHY_ID_SHIFT)
+
+#define PHY_PACKET_SELF_ID_GET_LINK_ACTIVE(quads)	\
+	((((const u32 *)quads)[0] & SELF_ID_ZERO_LINK_ACTIVE_MASK) >> SELF_ID_ZERO_LINK_ACTIVE_SHIFT)
+
+#define PHY_PACKET_SELF_ID_GET_GAP_COUNT(quads)		\
+	((((const u32 *)quads)[0] & SELF_ID_ZERO_GAP_COUNT_MASK) >> SELF_ID_ZERO_GAP_COUNT_SHIFT)
+
+#define PHY_PACKET_SELF_ID_GET_SCODE(quads)		\
+	((((const u32 *)quads)[0] & SELF_ID_ZERO_SCODE_MASK) >> SELF_ID_ZERO_SCODE_SHIFT)
+
+#define PHY_PACKET_SELF_ID_GET_CONTENDER(quads)		\
+	((((const u32 *)quads)[0] & SELF_ID_ZERO_CONTENDER_MASK) >> SELF_ID_ZERO_CONTENDER_SHIFT)
+
+#define PHY_PACKET_SELF_ID_GET_POWER_CLASS(quads)	\
+	((((const u32 *)quads)[0] & SELF_ID_ZERO_POWER_CLASS_MASK) >> SELF_ID_ZERO_POWER_CLASS_SHIFT)
+
+#define PHY_PACKET_SELF_ID_GET_INITIATED_RESET(quads)	\
+	((((const u32 *)quads)[0] & SELF_ID_ZERO_INITIATED_RESET_MASK) >> SELF_ID_ZERO_INITIATED_RESET_SHIFT)
+
+void copy_port_status(u8 *port_status, unsigned int port_capacity, const u32 *self_id_sequence,
+		      unsigned int quadlet_count);
+
+TRACE_EVENT(self_id_sequence,
+	TP_PROTO(const u32 *self_id_sequence, unsigned int quadlet_count, unsigned int generation),
+	TP_ARGS(self_id_sequence, quadlet_count, generation),
+	TP_STRUCT__entry(
+		__field(u8, generation)
+		__dynamic_array(u8, port_status, self_id_sequence_get_port_capacity(quadlet_count))
+		__dynamic_array(u32, self_id_sequence, quadlet_count)
+	),
+	TP_fast_assign(
+		__entry->generation = generation;
+		copy_port_status(__get_dynamic_array(port_status), __get_dynamic_array_len(port_status),
+				 self_id_sequence, quadlet_count);
+		memcpy(__get_dynamic_array(self_id_sequence), self_id_sequence,
+					   __get_dynamic_array_len(self_id_sequence));
+	),
+	TP_printk(
+		"generation=%u phy_id=0x%02x link_active=%s gap_count=%u scode=%u contender=%s power_class=%u initiated_reset=%s port_status=%s self_id_sequence=%s",
+		__entry->generation,
+		PHY_PACKET_SELF_ID_GET_PHY_ID(__get_dynamic_array(self_id_sequence)),
+		PHY_PACKET_SELF_ID_GET_LINK_ACTIVE(__get_dynamic_array(self_id_sequence)) ? "true" : "false",
+		PHY_PACKET_SELF_ID_GET_GAP_COUNT(__get_dynamic_array(self_id_sequence)),
+		PHY_PACKET_SELF_ID_GET_SCODE(__get_dynamic_array(self_id_sequence)),
+		PHY_PACKET_SELF_ID_GET_CONTENDER(__get_dynamic_array(self_id_sequence)) ? "true" : "false",
+		PHY_PACKET_SELF_ID_GET_POWER_CLASS(__get_dynamic_array(self_id_sequence)),
+		PHY_PACKET_SELF_ID_GET_INITIATED_RESET(__get_dynamic_array(self_id_sequence)) ? "true" : "false",
+		__print_array(__get_dynamic_array(port_status), __get_dynamic_array_len(port_status), 1),
+		__print_array(__get_dynamic_array(self_id_sequence),
+			      __get_dynamic_array_len(self_id_sequence) / QUADLET_SIZE, QUADLET_SIZE)
+	)
+);
+
 #undef QUADLET_SIZE
 
 #endif // _FIREWIRE_TRACE_EVENT_H
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
