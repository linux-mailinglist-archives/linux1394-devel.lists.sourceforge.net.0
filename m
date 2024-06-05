Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D434E8FDAE9
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qd-0008Gu-Iq;
	Wed, 05 Jun 2024 23:52:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Qb-0008Gb-1O
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H+eY1/AV2QPj0CXHcejIiaTss5Dil3imgP/c8kjn9RY=; b=jnYPxsDt8BdFpnJVdm2sDoLb/T
 ukCkNL8BaADbWonP6e4r9V9jkgBDKYOT/ZMfvED3MT7qxW6sWBjvW50e9sU7srpFeoN2kkR8h7W9B
 KNM8Eata01MQ4oQHDc6N78C3/MtSaRs3/LF7+ltB1/oq3WGsR4sQaiwiH9YcW2SWlnQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H+eY1/AV2QPj0CXHcejIiaTss5Dil3imgP/c8kjn9RY=; b=EwcXWlUcsqTcPbr2Tu8X0avScv
 Fe1PV2Rs/cRbhYGuUWi7stSpSeZKNYbsk9tbz+qbXkZfqd3+aQciXJ2gdpvZrnAmOy1oXTdycsDMH
 kGPhvM5wnOT/pUREsolV0e1Sw3HAByCU+lEI8mMNk0btUSJ2ZOr3qXfF1+IgOaMRYFZI=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0QY-0004Yf-Ga for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.west.internal (Postfix) with ESMTP id 2040F1C000F9;
 Wed,  5 Jun 2024 19:52:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 05 Jun 2024 19:52:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631530; x=
 1717717930; bh=H+eY1/AV2QPj0CXHcejIiaTss5Dil3imgP/c8kjn9RY=; b=K
 obBh3wMy/aNAP5mRghBPI5f7n+8W93AW7I6MlXz3Cco9POoNrO52gOJPZwRLnUi7
 FFANvRZEAhMWF9ODZUBODUm6euBB1TkYWmXXoM89BqCbwqmz/8UfrMfCyMHaNTx7
 7iwYTJ+OX+9f4K/+J61z8owLrlTs+7VSTmzSnWUCw46d0yFwOmy4b2c7rwYWy7rl
 5Z+vtFl22WpZKhkkGuRCJQM+Li8PkzplGDS+mEOiYO4nwM6ODcIgMk/fp/nxPkLU
 dicZgBuA650OBS7bNXZ+sarIG4W4zxqFs8NlcpVugr1FWo+Rv5rugZxprbMEk9Gk
 DJE+YGZvwlxDjzeSDJs5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631530; x=
 1717717930; bh=H+eY1/AV2QPj0CXHcejIiaTss5Dil3imgP/c8kjn9RY=; b=c
 dmgG+Ct4uI1ox70rhZ+fD0OQSOhYFdFD8/36tT+noXmIC/9Du9wjqOveTcEwyYoa
 Dl8ls/4/uZoAZsI/E6AprzOWGUM+2fFPoYv7EA4/OPa0t2mCDlcuRWnfKCE+pjNl
 3I3JNWdkwDg1bUNoTv/ohIl+TRoMy1n6G8CjrX//x+9EUfd5yluBxZ1tYYV6eehl
 zf/YAj2R0euqWZWB9Wi3oeBPzZxdzK+d5jTVswIwtd5+ovPEKKAIi9i+QyOL6Gqy
 lwY1I59+8HTGZXk8xrw1GwBS3GhBlPZd2vAB6PXLfzBBpUszHJKx06HUTS08STDu
 wrRHnrvwTCtefBnoyLUoA==
X-ME-Sender: <xms:KvpgZgoI-rnnDYv6Af8TloBaaJOw_KMzHlC2Yorf3KgmLdEO6USPww>
 <xme:KvpgZmqE3C-Ttk5zQRhCXTVIqWGJ50Ir16l-1kVao9U4TfOUtXoQoR688UUwYaBKj
 055id_6G92G7twX2Is>
X-ME-Received: <xmr:KvpgZlP183S0iVejb6Nnh-MXM1f7yiTQ5-jpJtD71tCIm5SVA8Pam-jMSz7CcgjAG0EwsedXgkX_E_jy2sM7Io8S25JFxFas79ioWRptPS5zTg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:KvpgZn5yr2HrC3VsJqq-TDEUcQ-qoAnlgRmQp9ENUsS88_FFgG-Hlg>
 <xmx:KvpgZv63_EQBHePy2ro-NsjzJ8UQzzSgqoWXh4b23kstgQ3XeO4psg>
 <xmx:KvpgZngn989WE2VwqHCJ9wcfglbKhNNRdlCTMZmoS78meEfjw1c69g>
 <xmx:KvpgZp4v735TMUT4iAT-3mp17aV-bBt5eZk_cHYqg0LDRM3pRSe3uQ>
 <xmx:KvpgZvGGW_Ew6ctYNxn-oNRVX5QP9-KXNgob9XRJ0i0zjj2gwvyoCxeI>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:09 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 05/11] firewire: core: use helper functions for self ID
 sequence
Date: Thu,  6 Jun 2024 08:51:49 +0900
Message-ID: <20240605235155.116468-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit replaces the existing implementation with the
 helper functions for self ID sequence. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-topology.c | 189 +++++++++++ 1 file changed, 69
 insertions(+), 120 deletions(-) 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.145 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0QY-0004Yf-Ga
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

This commit replaces the existing implementation with the helper
functions for self ID sequence.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 189 +++++++++++--------------------
 1 file changed, 69 insertions(+), 120 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 6a039293ee63..999ba2b121cd 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -20,80 +20,15 @@
 #include <asm/byteorder.h>
 
 #include "core.h"
+#include "phy-packet-definitions.h"
 #include <trace/events/firewire.h>
 
 #define SELF_ID_PHY_ID(q)		(((q) >> 24) & 0x3f)
-#define SELF_ID_EXTENDED(q)		(((q) >> 23) & 0x01)
 #define SELF_ID_LINK_ON(q)		(((q) >> 22) & 0x01)
 #define SELF_ID_GAP_COUNT(q)		(((q) >> 16) & 0x3f)
 #define SELF_ID_PHY_SPEED(q)		(((q) >> 14) & 0x03)
 #define SELF_ID_CONTENDER(q)		(((q) >> 11) & 0x01)
 #define SELF_ID_PHY_INITIATOR(q)	(((q) >>  1) & 0x01)
-#define SELF_ID_MORE_PACKETS(q)		(((q) >>  0) & 0x01)
-
-#define SELF_ID_EXT_SEQUENCE(q)		(((q) >> 20) & 0x07)
-
-#define SELFID_PORT_CHILD	0x3
-#define SELFID_PORT_PARENT	0x2
-#define SELFID_PORT_NCONN	0x1
-#define SELFID_PORT_NONE	0x0
-
-static const u32 *count_ports(const u32 *sid, int *total_port_count, int *child_port_count)
-{
-	u32 q;
-	int port_type, shift, seq;
-
-	shift = 6;
-	q = *sid;
-	seq = 0;
-
-	while (1) {
-		port_type = (q >> shift) & 0x03;
-		switch (port_type) {
-		case SELFID_PORT_CHILD:
-			(*child_port_count)++;
-			fallthrough;
-		case SELFID_PORT_PARENT:
-		case SELFID_PORT_NCONN:
-			(*total_port_count)++;
-			fallthrough;
-		case SELFID_PORT_NONE:
-			break;
-		}
-
-		shift -= 2;
-		if (shift == 0) {
-			if (!SELF_ID_MORE_PACKETS(q))
-				return sid + 1;
-
-			shift = 16;
-			sid++;
-			q = *sid;
-
-			/*
-			 * Check that the extra packets actually are
-			 * extended self ID packets and that the
-			 * sequence numbers in the extended self ID
-			 * packets increase as expected.
-			 */
-
-			if (!SELF_ID_EXTENDED(q) ||
-			    seq != SELF_ID_EXT_SEQUENCE(q))
-				return NULL;
-
-			seq++;
-		}
-	}
-}
-
-static int get_port_type(const u32 *sid, int port_index)
-{
-	int index, shift;
-
-	index = (port_index + 5) / 8;
-	shift = 16 - ((port_index + 5) & 7) * 2;
-	return (sid[index] >> shift) & 0x03;
-}
 
 static struct fw_node *fw_node_create(u32 sid, int port_count, int color)
 {
@@ -168,9 +103,12 @@ static inline struct fw_node *fw_node(struct list_head *l)
  */
 static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self_id_count)
 {
+	struct self_id_sequence_enumerator enumerator = {
+		.cursor = sid,
+		.quadlet_count = self_id_count,
+	};
 	struct fw_node *node, *child, *local_node, *irm_node;
 	struct list_head stack;
-	const u32 *end;
 	int phy_id, stack_depth;
 	int gap_count;
 	bool beta_repeaters_present;
@@ -179,31 +117,54 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 	node = NULL;
 	INIT_LIST_HEAD(&stack);
 	stack_depth = 0;
-	end = sid + self_id_count;
 	phy_id = 0;
 	irm_node = NULL;
 	gap_count = SELF_ID_GAP_COUNT(*sid);
 	beta_repeaters_present = false;
 
-	while (sid < end) {
-		int port_count = 0;
-		int child_port_count = 0;
-		int parent_count = 0;
-		const u32 *next_sid;
-		u32 q;
+	while (enumerator.quadlet_count > 0) {
+		unsigned int child_port_count = 0;
+		unsigned int total_port_count = 0;
+		unsigned int parent_count = 0;
+		unsigned int quadlet_count;
+		const u32 *self_id_sequence;
+		unsigned int port_capacity;
+		enum phy_packet_self_id_port_status port_status;
+		unsigned int port_index;
 		struct list_head *h;
 		int i;
 
-		next_sid = count_ports(sid, &port_count, &child_port_count);
-		if (next_sid == NULL) {
-			fw_err(card, "inconsistent extended self IDs\n");
-			return NULL;
+		self_id_sequence = self_id_sequence_enumerator_next(&enumerator, &quadlet_count);
+		if (IS_ERR(self_id_sequence)) {
+			if (PTR_ERR(self_id_sequence) != -ENODATA) {
+				fw_err(card, "inconsistent extended self IDs: %ld\n",
+				       PTR_ERR(self_id_sequence));
+				return NULL;
+			}
+			break;
 		}
 
-		q = *sid;
-		if (phy_id != SELF_ID_PHY_ID(q)) {
+		port_capacity = self_id_sequence_get_port_capacity(quadlet_count);
+		for (port_index = 0; port_index < port_capacity; ++port_index) {
+			port_status = self_id_sequence_get_port_status(self_id_sequence, quadlet_count,
+								       port_index);
+			switch (port_status) {
+			case PHY_PACKET_SELF_ID_PORT_STATUS_CHILD:
+				++child_port_count;
+				fallthrough;
+			case PHY_PACKET_SELF_ID_PORT_STATUS_PARENT:
+			case PHY_PACKET_SELF_ID_PORT_STATUS_NCONN:
+				++total_port_count;
+				fallthrough;
+			case PHY_PACKET_SELF_ID_PORT_STATUS_NONE:
+			default:
+				break;
+			}
+		}
+
+		if (phy_id != SELF_ID_PHY_ID(self_id_sequence[0])) {
 			fw_err(card, "PHY ID mismatch in self ID: %d != %d\n",
-			       phy_id, SELF_ID_PHY_ID(q));
+			       phy_id, SELF_ID_PHY_ID(self_id_sequence[0]));
 			return NULL;
 		}
 
@@ -224,7 +185,7 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 		 */
 		child = fw_node(h);
 
-		node = fw_node_create(q, port_count, card->color);
+		node = fw_node_create(self_id_sequence[0], total_port_count, card->color);
 		if (node == NULL) {
 			fw_err(card, "out of memory while building topology\n");
 			return NULL;
@@ -233,48 +194,40 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 		if (phy_id == (card->node_id & 0x3f))
 			local_node = node;
 
-		if (SELF_ID_CONTENDER(q))
+		if (SELF_ID_CONTENDER(self_id_sequence[0]))
 			irm_node = node;
 
-		parent_count = 0;
-
-		for (i = 0; i < port_count; i++) {
-			switch (get_port_type(sid, i)) {
-			case SELFID_PORT_PARENT:
-				/*
-				 * Who's your daddy?  We dont know the
-				 * parent node at this time, so we
-				 * temporarily abuse node->color for
-				 * remembering the entry in the
-				 * node->ports array where the parent
-				 * node should be.  Later, when we
-				 * handle the parent node, we fix up
-				 * the reference.
-				 */
-				parent_count++;
+		for (port_index = 0; port_index < total_port_count; ++port_index) {
+			port_status = self_id_sequence_get_port_status(self_id_sequence, quadlet_count,
+								       port_index);
+			switch (port_status) {
+			case PHY_PACKET_SELF_ID_PORT_STATUS_PARENT:
+				// Who's your daddy?  We dont know the parent node at this time, so
+				// we temporarily abuse node->color for remembering the entry in
+				// the node->ports array where the parent node should be.  Later,
+				// when we handle the parent node, we fix up the reference.
+				++parent_count;
 				node->color = i;
 				break;
 
-			case SELFID_PORT_CHILD:
-				node->ports[i] = child;
-				/*
-				 * Fix up parent reference for this
-				 * child node.
-				 */
+			case PHY_PACKET_SELF_ID_PORT_STATUS_CHILD:
+				node->ports[port_index] = child;
+				// Fix up parent reference for this child node.
 				child->ports[child->color] = node;
 				child->color = card->color;
 				child = fw_node(child->link.next);
 				break;
+			case PHY_PACKET_SELF_ID_PORT_STATUS_NCONN:
+			case PHY_PACKET_SELF_ID_PORT_STATUS_NONE:
+			default:
+				break;
 			}
 		}
 
-		/*
-		 * Check that the node reports exactly one parent
-		 * port, except for the root, which of course should
-		 * have no parents.
-		 */
-		if ((next_sid == end && parent_count != 0) ||
-		    (next_sid < end && parent_count != 1)) {
+		// Check that the node reports exactly one parent port, except for the root, which
+		// of course should have no parents.
+		if ((enumerator.quadlet_count == 0 && parent_count != 0) ||
+		    (enumerator.quadlet_count > 0 && parent_count != 1)) {
 			fw_err(card, "parent port inconsistency for node %d: "
 			       "parent_count=%d\n", phy_id, parent_count);
 			return NULL;
@@ -285,20 +238,16 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 		list_add_tail(&node->link, &stack);
 		stack_depth += 1 - child_port_count;
 
-		if (node->phy_speed == SCODE_BETA &&
-		    parent_count + child_port_count > 1)
+		if (node->phy_speed == SCODE_BETA && parent_count + child_port_count > 1)
 			beta_repeaters_present = true;
 
-		/*
-		 * If PHYs report different gap counts, set an invalid count
-		 * which will force a gap count reconfiguration and a reset.
-		 */
-		if (SELF_ID_GAP_COUNT(q) != gap_count)
+		// If PHYs report different gap counts, set an invalid count which will force a gap
+		// count reconfiguration and a reset.
+		if (SELF_ID_GAP_COUNT(self_id_sequence[0]) != gap_count)
 			gap_count = 0;
 
 		update_hop_count(node);
 
-		sid = next_sid;
 		phy_id++;
 	}
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
