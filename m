Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EF18FDAE8
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qf-0001Pu-Sv;
	Wed, 05 Jun 2024 23:52:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0Qb-0001PR-U6
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V1TVjKe7dwYJE6Q/S0G6qvmCcYsfTJyJOHYYPXE4GI4=; b=IkVVyPC3HSNm3TYGFSBYikvaaa
 0827rsCIzRtVt3NdpSvguiOx/sdWTRLtBAWnrlRhS5+lBgatVGlPqivLNNj6G+MtysHTCmcO6H7Q+
 zSce38UTDvHEx9UXOHtDyDH+NXsfPoTg6Nj3ZreFv8zCRUa/lKlM7rtDx+Q1wUrG69Y4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V1TVjKe7dwYJE6Q/S0G6qvmCcYsfTJyJOHYYPXE4GI4=; b=NnJ1Rsd6VQKFvjkZdgQv+Fk1gr
 92rI8rylU5Xw1F4+qij/TYB0Kz9E9RsplxkKodsPCrf19N3A2vrPA490oajl/WB+bAeLAquNI4ppL
 S2oVLG0wYYSuvW4UV7e8ejv2mqlLlHmvOtIkwCNKodBogkoaYYdvpV7M3mqjnQ1/dd1M=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0QU-0004YG-7z for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:18 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id E8CC91800124;
 Wed,  5 Jun 2024 19:52:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 05 Jun 2024 19:52:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717631526; x=
 1717717926; bh=V1TVjKe7dwYJE6Q/S0G6qvmCcYsfTJyJOHYYPXE4GI4=; b=X
 vrMfI6ysLPMQFljgayKpbPcIch6zg5Z8ksfXRxK64JCxZ//Zh52K6iWLQmgrGoUb
 XstwWrhhfRqEgGwEIEYtLMZskNup7Ocmo9SVlsdgihwY6WxyLuIUBTg3OUxh395b
 /nw57UGAHKhzori+igEYOt4sBrYc8VOI1Q47x/fMlBbZH/g6SX5Y0Ced7P6sllzR
 GQM5pltvxNw6260GHjfKcIH6f4/2UnKQyxcxypw1qPPgxh3MJfrfpYdp13aAexnT
 Fydj2fcdKPshYl9UMBLXYD/iXMYZJgtNpI5deAS57pkkQ5ib77glnnkAvjMpTAOv
 qedUTe3nYxypH48i7UjTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717631526; x=
 1717717926; bh=V1TVjKe7dwYJE6Q/S0G6qvmCcYsfTJyJOHYYPXE4GI4=; b=E
 f9PfqWbTK3+sOYwRfk00w0CBqy+SMZHTvLBVYqNQ4W06//vgi/6sFig9CZ43092N
 agT2iE259sXNWMWXaqVwK/IS+mOXw1wUQWmRlEDtvnNl1J+01e/C/w3dVLj459EJ
 Efo3vBxcnom6EcvWGasPnEL9eJzvEEmhID8mNj0mn7wAsILFRFna8WoLfqJm6eRn
 LsaxsOHGrzA5y/OjHCQhBRiInRnkvrZJnPzHC1qBXbnKuXq34XPpGBEV5PCDHK76
 x15yKQsXOVly0fDWKZTRoSj794NEfDeInjl28qQRp4d5jIauHh7Dx96qULM0CNTI
 9M6jOksqerRflWfTbwj1A==
X-ME-Sender: <xms:JvpgZndZ0mtyuQzTyt43Hw-57GxA_ux9rA4JcWgviMk1qLHiBBb9Yw>
 <xme:JvpgZtMdm9iiam5K8je3z07BpREJlSYQFrUFLGUrwGzffcUCxCsGKamaDbbo6TJ2g
 k8_PkThqt5xFTmnEYU>
X-ME-Received: <xmr:JvpgZgiduwaKlZdzbrbEgfMJ6xG624Zxq7x2tVhzAFicKmhy9NdVeuavgHMW25cEXhAEmaDYFOOk3_9osSjcBT_1ArhZ9V-K7c8NZhMVs2HgOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:JvpgZo94OmXhI0zQW3QaAb1vgBy4SA5QV2Dv1rZuy10Oxc8mzfg3EA>
 <xmx:JvpgZjuTTQR52ZO2fjlPWUTH00WDydWdUCmSgkYOA5tdfnwlzTfeag>
 <xmx:JvpgZnFOmeyfMz_z_ln4EvDBioH2oguCT7SzCM1sUHAAIF4pWiqgqQ>
 <xmx:JvpgZqN9iTrUQWD2xnc5pLOHtrZb8tsAU4Bc25n6hZJvWfPVGhWcsQ>
 <xmx:JvpgZs6sw2XOLw9DYuSvCf-tO6eM4yJQOoNTFzG1RInkSsih1LcDtpi1>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:52:05 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 03/11] firewire: core: minor code refactoring for topology
 builder
Date: Thu,  6 Jun 2024 08:51:47 +0900
Message-ID: <20240605235155.116468-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Current implementation to build tree according to self ID
 sequences has the rest to be refactored; e.g. putting local variables into
 block. This commit is for the purpose. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-topology.c | 25 ++++++++++++++ 1 file changed,
 14 insertions(+), 11 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0QU-0004YG-7z
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

Current implementation to build tree according to self ID sequences has
the rest to be refactored; e.g. putting local variables into block.

This commit is for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 837cc44d8d9f..6a039293ee63 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -38,14 +38,11 @@
 #define SELFID_PORT_NCONN	0x1
 #define SELFID_PORT_NONE	0x0
 
-static u32 *count_ports(u32 *sid, int *total_port_count, int *child_port_count)
+static const u32 *count_ports(const u32 *sid, int *total_port_count, int *child_port_count)
 {
 	u32 q;
 	int port_type, shift, seq;
 
-	*total_port_count = 0;
-	*child_port_count = 0;
-
 	shift = 6;
 	q = *sid;
 	seq = 0;
@@ -89,7 +86,7 @@ static u32 *count_ports(u32 *sid, int *total_port_count, int *child_port_count)
 	}
 }
 
-static int get_port_type(u32 *sid, int port_index)
+static int get_port_type(const u32 *sid, int port_index)
 {
 	int index, shift;
 
@@ -169,13 +166,12 @@ static inline struct fw_node *fw_node(struct list_head *l)
  * internally consistent.  On success this function returns the
  * fw_node corresponding to the local card otherwise NULL.
  */
-static struct fw_node *build_tree(struct fw_card *card,
-				  u32 *sid, int self_id_count)
+static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self_id_count)
 {
 	struct fw_node *node, *child, *local_node, *irm_node;
-	struct list_head stack, *h;
-	u32 *next_sid, *end, q;
-	int i, port_count, child_port_count, phy_id, parent_count, stack_depth;
+	struct list_head stack;
+	const u32 *end;
+	int phy_id, stack_depth;
 	int gap_count;
 	bool beta_repeaters_present;
 
@@ -190,8 +186,15 @@ static struct fw_node *build_tree(struct fw_card *card,
 	beta_repeaters_present = false;
 
 	while (sid < end) {
-		next_sid = count_ports(sid, &port_count, &child_port_count);
+		int port_count = 0;
+		int child_port_count = 0;
+		int parent_count = 0;
+		const u32 *next_sid;
+		u32 q;
+		struct list_head *h;
+		int i;
 
+		next_sid = count_ports(sid, &port_count, &child_port_count);
 		if (next_sid == NULL) {
 			fw_err(card, "inconsistent extended self IDs\n");
 			return NULL;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
