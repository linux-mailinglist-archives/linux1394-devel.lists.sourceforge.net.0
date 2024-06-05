Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 203758FDAEB
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qh-0006ev-KO;
	Wed, 05 Jun 2024 23:52:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Qd-0006eP-Ji
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qWFO7zoF+O3PVNs52gcGbFCEy0eI0C7UgJjzmWKpW4M=; b=h8xgX1ntkEtT188VwRrdjBWY+z
 ej/K3B1IaDpCU55V6gWmf+dLaqjiE5yRYw9G5aKT6DbPYSFP8whnuYqfNLaIpcxrxaqbA/g6t3lot
 Mh+QPbrUVw/PbApiKXg0BPSvySsic+zNvanzbZM8TNsod2FDNrv9qZybm5BwevL0/Ig8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qWFO7zoF+O3PVNs52gcGbFCEy0eI0C7UgJjzmWKpW4M=; b=Zm8dQ65fMPKwMRl4Vpe4Rat9v7
 45ypFlKHdTMzEZ0+mtxB/7JTvV1OilDL0soGLuoW0ZpBY4CUj8/euOQxrKIC2bl2sgQTQYInoLUJc
 Y+0gEpwNDRk5er9J3oGgZuhlaiTe8flM0idaWFd8ZV/r6gahUI1kaP+S5aPdY6IEPkO4=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0Qe-0004ZE-SI for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.west.internal (Postfix) with ESMTP id 8B2F71C0005B;
 Wed,  5 Jun 2024 19:52:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 05 Jun 2024 19:52:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631537; x=
 1717717937; bh=qWFO7zoF+O3PVNs52gcGbFCEy0eI0C7UgJjzmWKpW4M=; b=R
 OQGTVMomLqSTv3VH+Y59El3gBqQUuTxNqEUZqFZt8r3U5walYP4RCrLkqootNYnp
 PNVYugQ1pWbA1WSiq2ml2GfOmo0Y8knR3zmyuHmA1adJnKL4OXtNdNedEpXKaeI2
 MjjIvZIuwAWNlugm/J8eMAy+ObwkUTF9Tey6iG0LgX3Eb+IHsnmsmekl78Y+C97R
 qKV8JJNe7OPQowfnXyEVyuCu/PI6JApWY3HQWPeuXAUwDJj+2MGWG8weIZBKXiw1
 SGwzr4mnGFsb3Z8iTxDOfjSxvsZLmuWI5MBHUhX0iTe23WeEKtiMcyfqdprpHosF
 QUXPfIh4Vu2t1spSa+T1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631537; x=
 1717717937; bh=qWFO7zoF+O3PVNs52gcGbFCEy0eI0C7UgJjzmWKpW4M=; b=a
 gncoT60BiYOu5cWM92bVrwh4BRGZxTDcKYnWBXC9k+zN02UnbNbKEcwG/U/mwBwe
 eTsKXZdYCxvlaIbz746po+mlzdmhyLy2iaAxNhdGOWhkBAK8VceiacW1uF24NECZ
 JY1TH6R1xL5W6nMeIQMnkGlMvSHZ7PVvAKjaKROeFB0FpVx9iVHM++SQBM5XjH/d
 MrEEVRyNascOw+qOyJgdKf4BBOSwlhm1/rHkQPP3a7QeJl0DLMXQ82ad7tGLkkiL
 94enZpBNqeK/59hIG3opkoPe0tRURRv948MDphGdwHSREjxWMV4MBVN0M+qFApij
 ZIrNHce04mGk9T7v5VvNQ==
X-ME-Sender: <xms:MfpgZghmbpUdOIg5m0M6BTvy2BIKGOCZtjaaSp3La5uIjr0nPE8duQ>
 <xme:MfpgZpC9AheCCUcXK6D9VI-WL8triDVp05t6AtXewE87qgQcvti3MiuHQoKOfhuW6
 DwhCZmnJK0n6g0ra6A>
X-ME-Received: <xmr:MfpgZoFumtr_vTgww4J95cPlwBrfox7_LKVYOPgJw94yBxk61RsPjhF83NiC6HoeRhFH0OzTZIEbVyAs24ciRbGDSTrejASh7DVd26_fJlTOIg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:MfpgZhRf2NRKe0kzME3kRQh6q6zIODFK2afOb2XqfzubMg4HSCCWtQ>
 <xmx:MfpgZtw3QEDDHpgygMKyuzWzaSacSCzPsIWNUiwYZ5syK4g5XLOgvA>
 <xmx:MfpgZv4MPtUmQe_pMdI24DjeNxcG0XVvLfv2uWMx0zQ-aZM9hMN61g>
 <xmx:MfpgZqxN3TtQhjx0Bs1d0bDOOX3QrkTApvnpKUVDNr5NmE7ZqfOVBg>
 <xmx:MfpgZo_kj573oFlJygdVJOJA-MAFhonie7LD5DY95qeSUba6DMlcHVrv>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:15 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 08/11] firewire: core: use helper inline functions to
 deserialize self ID packet
Date: Thu,  6 Jun 2024 08:51:52 +0900
Message-ID: <20240605235155.116468-9-o-takashi@sakamocchi.jp>
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
 Content preview:  This commit replaces the existing implementation with the
 helper functions for self ID packet. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-topology.c | 26 ++++++++++ 1 file changed,
 10 insertions(+), 16 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.145 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0Qe-0004ZE-SI
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
functions for self ID packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 26 ++++++++++----------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 999ba2b121cd..6ec100e17500 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -23,13 +23,6 @@
 #include "phy-packet-definitions.h"
 #include <trace/events/firewire.h>
 
-#define SELF_ID_PHY_ID(q)		(((q) >> 24) & 0x3f)
-#define SELF_ID_LINK_ON(q)		(((q) >> 22) & 0x01)
-#define SELF_ID_GAP_COUNT(q)		(((q) >> 16) & 0x3f)
-#define SELF_ID_PHY_SPEED(q)		(((q) >> 14) & 0x03)
-#define SELF_ID_CONTENDER(q)		(((q) >> 11) & 0x01)
-#define SELF_ID_PHY_INITIATOR(q)	(((q) >>  1) & 0x01)
-
 static struct fw_node *fw_node_create(u32 sid, int port_count, int color)
 {
 	struct fw_node *node;
@@ -39,10 +32,11 @@ static struct fw_node *fw_node_create(u32 sid, int port_count, int color)
 		return NULL;
 
 	node->color = color;
-	node->node_id = LOCAL_BUS | SELF_ID_PHY_ID(sid);
-	node->link_on = SELF_ID_LINK_ON(sid);
-	node->phy_speed = SELF_ID_PHY_SPEED(sid);
-	node->initiated_reset = SELF_ID_PHY_INITIATOR(sid);
+	node->node_id = LOCAL_BUS | phy_packet_self_id_get_phy_id(sid);
+	node->link_on = phy_packet_self_id_zero_get_link_active(sid);
+	// NOTE: Only two bits, thus only for SCODE_100, SCODE_200, SCODE_400, and SCODE_BETA.
+	node->phy_speed = phy_packet_self_id_zero_get_scode(sid);
+	node->initiated_reset = phy_packet_self_id_zero_get_initiated_reset(sid);
 	node->port_count = port_count;
 
 	refcount_set(&node->ref_count, 1);
@@ -119,7 +113,7 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 	stack_depth = 0;
 	phy_id = 0;
 	irm_node = NULL;
-	gap_count = SELF_ID_GAP_COUNT(*sid);
+	gap_count = phy_packet_self_id_zero_get_gap_count(*sid);
 	beta_repeaters_present = false;
 
 	while (enumerator.quadlet_count > 0) {
@@ -162,9 +156,9 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 			}
 		}
 
-		if (phy_id != SELF_ID_PHY_ID(self_id_sequence[0])) {
+		if (phy_id != phy_packet_self_id_get_phy_id(self_id_sequence[0])) {
 			fw_err(card, "PHY ID mismatch in self ID: %d != %d\n",
-			       phy_id, SELF_ID_PHY_ID(self_id_sequence[0]));
+			       phy_id, phy_packet_self_id_get_phy_id(self_id_sequence[0]));
 			return NULL;
 		}
 
@@ -194,7 +188,7 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 		if (phy_id == (card->node_id & 0x3f))
 			local_node = node;
 
-		if (SELF_ID_CONTENDER(self_id_sequence[0]))
+		if (phy_packet_self_id_zero_get_contender(self_id_sequence[0]))
 			irm_node = node;
 
 		for (port_index = 0; port_index < total_port_count; ++port_index) {
@@ -243,7 +237,7 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 
 		// If PHYs report different gap counts, set an invalid count which will force a gap
 		// count reconfiguration and a reset.
-		if (SELF_ID_GAP_COUNT(self_id_sequence[0]) != gap_count)
+		if (phy_packet_self_id_zero_get_gap_count(self_id_sequence[0]) != gap_count)
 			gap_count = 0;
 
 		update_hop_count(node);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
