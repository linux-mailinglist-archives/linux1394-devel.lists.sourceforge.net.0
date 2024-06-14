Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B8D908033
	for <lists+linux1394-devel@lfdr.de>; Fri, 14 Jun 2024 02:43:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHv24-0005n6-5g;
	Fri, 14 Jun 2024 00:43:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHv23-0005mv-65
 for linux1394-devel@lists.sourceforge.net;
 Fri, 14 Jun 2024 00:43:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eyJmLqrBgLDDwAvjEwuA/NvV1Y5fbUSGVnmBpGBEbyk=; b=SzG3djelECCa5I9e8NaX5961VQ
 e17gHkrRDxh0Gi8SzwSkv7iAUu84PEARMMhEzsWIrz6ockOo8AfgvQmm4g305eVDvbzdJ2CnA/twz
 SB84WWeGw1Vreo9Qj/KUQAXCVBLiTZ+QJhf7ISwrKUepGGZgdj/P/zHaphaYhtSFbG+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eyJmLqrBgLDDwAvjEwuA/NvV1Y5fbUSGVnmBpGBEbyk=; b=K
 ZviKQv7ezN5RboZ77IhvyDFI7P9d/G/6kRv+T7s1XwY6saUFj/AzL1foPJ2nTtEXqoASWRyqJfrs+
 VWiamKzf0epeWbkIPZlwF990TDpFFSTyK01xoGxkXaZ/cxrTfZVWva6DjTG0CS5oCYMifRua15g5D
 E1XU0Tb1JaPcIulU=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHv23-0007IW-R6 for linux1394-devel@lists.sourceforge.net;
 Fri, 14 Jun 2024 00:43:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id 6F3621380195;
 Thu, 13 Jun 2024 20:42:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 13 Jun 2024 20:42:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1718325776; x=1718412176; bh=eyJmLqrBgL
 DDwAvjEwuA/NvV1Y5fbUSGVnmBpGBEbyk=; b=kR+KrhHvmDo1HwMizK7kaSU2to
 D/prFuSW+6nDPYPvuEy7xckCXsDOYynow81nyA530OSw6OX1ZJWYzi4H1+EUxCcL
 45SgnMo+2Gn87s/Iq3IQLO/LIBMN0aCR0BQJ+7oc7aZv3Iqj5CQk05IXb3gH+MwF
 fhyVn57iDapmm30losZdkMr9mkELnZedPow/T+VUL1kvNLcpHFH61D71bFRiI4R0
 /rFrBVa+7vOEwz5e0eLjm0KTCBhy5Is91rr/UEBnC2hJFQRqbLCwUt5JZeHnzqCz
 R4Ot8Cc2nUvqt+te/p8w1/yUkeZZ6JwE9wt9yj6Lap+NBP2bvQY1Wf2FH5GA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1718325776; x=1718412176; bh=eyJmLqrBgLDDwAvjEwuA/NvV1Y5f
 bUSGVnmBpGBEbyk=; b=ctZsseJ9+AuMhi5mC7zyMJ2N1Ouj1YUNNMfVg/O42t7i
 RWF7rsh/w4xRGdYSW0lMAnbhZmVxi82nnXbgZ/dYkTZq2J1B23tzEX5nZRGOU9Ds
 C+E5agbAEqng8jlxDPf/Eu+cycSuhwX+61yvQwzocUfElY7WK8KRpwQwBiusCPKG
 /OYM9vc847xAwaIcs4x38S5TrzpT0JAgvGf+37EKaJ/o47WQbOGIbanbC1q7pmYQ
 wzIaQYyKynLbaLXEAyRPzbQMYrWoof2JROrJzImzGL0BluYmTRtE7zeq6KVdaZl7
 S6Mjjr+0VEUm9zOg6tYhFNH5mkLpKisDEdz+3DtFuQ==
X-ME-Sender: <xms:EJJrZnmWORhmWb1jICbjRkSn7NfIbyYNotm7WAmnqNAUW8wEAFXoTg>
 <xme:EJJrZq3jN_uqJWDC_8nwYO5Cg55yPkMXOYUVlr81FemN8UuPdXmh8MDYwEz7GA_t5
 lqCHfB0kPjoEUSNr2Q>
X-ME-Received: <xmr:EJJrZtq2NQ7OSM8CPhnwO0saIkzbaNOHqI4_zK1moyyu7LbcKzpzsPEjYjXnNSTEPxEWcMi7hukcvMzw5Gz3-gwsrpYizv0C4Bwpnbd_lAOC>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedukedgfeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:EJJrZvkiAjGetpvWJSL-OR2dSspjgndlKnAkH6dT880CDs5nr9U1Pg>
 <xmx:EJJrZl1eJDEGlboc2SsekGGmY6gPBzu7VtWVxygwPsidbFgr8wLplA>
 <xmx:EJJrZutX5r1tjCUGYxM_dvRaKLcbABZcDszY-Z_lz6B_nHWxDvmCUQ>
 <xmx:EJJrZpUiUhdpjPOYjPPEywf_4F75-P0YtFyMRkQ5Q5LMgnE2TFkCMg>
 <xmx:EJJrZjD6hw_Hl9rySXNPX0un3DI8wGcXRKqth3TpzJHpzGgza1nb0RIv>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 20:42:55 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: record card index in tracepoints event for
 self ID sequence
Date: Fri, 14 Jun 2024 09:42:51 +0900
Message-ID: <20240614004251.460649-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch is for for-next branch. The selfIDComplete event
 occurs in the bus managed by one of 1394 OHCI controller in Linux system,
 while the existing tracepoints events has the lack of data about it to
 distinguish the issued hardwar [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHv23-0007IW-R6
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

This patch is for for-next branch.

The selfIDComplete event occurs in the bus managed by one of 1394 OHCI
controller in Linux system, while the existing tracepoints events has
the lack of data about it to distinguish the issued hardware from the
others.

This commit adds card_index member into event structure to store the index
of host controller in use, and prints it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 2 +-
 include/trace/events/firewire.h  | 9 ++++++---
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 4a0b273392ab..a347e2f5482c 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -140,7 +140,7 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 		}
 
 		port_capacity = self_id_sequence_get_port_capacity(quadlet_count);
-		trace_self_id_sequence(self_id_sequence, quadlet_count, generation);
+		trace_self_id_sequence(card->index, self_id_sequence, quadlet_count, generation);
 
 		for (port_index = 0; port_index < port_capacity; ++port_index) {
 			port_status = self_id_sequence_get_port_status(self_id_sequence, quadlet_count,
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 4761b700ff84..ace95d38c6ea 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -370,14 +370,16 @@ void copy_port_status(u8 *port_status, unsigned int port_capacity, const u32 *se
 		      unsigned int quadlet_count);
 
 TRACE_EVENT(self_id_sequence,
-	TP_PROTO(const u32 *self_id_sequence, unsigned int quadlet_count, unsigned int generation),
-	TP_ARGS(self_id_sequence, quadlet_count, generation),
+	TP_PROTO(unsigned int card_index, const u32 *self_id_sequence, unsigned int quadlet_count, unsigned int generation),
+	TP_ARGS(card_index, self_id_sequence, quadlet_count, generation),
 	TP_STRUCT__entry(
+		__field(u8, card_index)
 		__field(u8, generation)
 		__dynamic_array(u8, port_status, self_id_sequence_get_port_capacity(quadlet_count))
 		__dynamic_array(u32, self_id_sequence, quadlet_count)
 	),
 	TP_fast_assign(
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		copy_port_status(__get_dynamic_array(port_status), __get_dynamic_array_len(port_status),
 				 self_id_sequence, quadlet_count);
@@ -385,7 +387,8 @@ TRACE_EVENT(self_id_sequence,
 					   __get_dynamic_array_len(self_id_sequence));
 	),
 	TP_printk(
-		"generation=%u phy_id=0x%02x link_active=%s gap_count=%u scode=%u contender=%s power_class=%u initiated_reset=%s port_status=%s self_id_sequence=%s",
+		"card_index=%u generation=%u phy_id=0x%02x link_active=%s gap_count=%u scode=%u contender=%s power_class=%u initiated_reset=%s port_status=%s self_id_sequence=%s",
+		__entry->card_index,
 		__entry->generation,
 		PHY_PACKET_SELF_ID_GET_PHY_ID(__get_dynamic_array(self_id_sequence)),
 		PHY_PACKET_SELF_ID_GET_LINK_ACTIVE(__get_dynamic_array(self_id_sequence)) ? "true" : "false",
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
