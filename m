Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04194907350
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkIN-0002bM-48;
	Thu, 13 Jun 2024 13:15:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkIH-0002at-J2
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rCStrtW4Fkq1R+S/nsCfskDATiiOElcsAJ727pxmbL8=; b=ZACZT4TANYO+NVeCIMOYpNAKDK
 VbKdkASzEQm0xXD4/6XBs6ZCXeH7GHic6CskKn7jsxMoLpvVy60ZvbJyK2frEgtchhDT8AUfQCVBI
 V+0ApYcijDESS/Ik+sXW1bVnjoROeNW3iBW2uoP4rUudFZzNq1luQv2HeuQeaefKbcYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rCStrtW4Fkq1R+S/nsCfskDATiiOElcsAJ727pxmbL8=; b=JH5dPUcTQK3XehxKeQwXTLN/3M
 Lo4PFeV5mdmLQbBHNFziOFzRjx3gkAMdqTKwOncLZO0snVZ72eAYFa2sROhqQtL1tKG9k7eUKaLzE
 iPmjOyH2QQf7fJSoBNfe6Sw7LSbC8Yt1yGqOxl0voX/7Si8OKlI+jh891oEuKzGHYJR8=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkIE-0003mf-6X for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:06 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id D656E13800ED;
 Thu, 13 Jun 2024 09:14:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 13 Jun 2024 09:14:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284494; x=
 1718370894; bh=rCStrtW4Fkq1R+S/nsCfskDATiiOElcsAJ727pxmbL8=; b=h
 iJJOTKa2tZ1Cwbrg/PQHqLF5kjBr5bkzpp4/pvc6YSox9/nqp2CLfqEJZ/WiY1GQ
 rLmSNxsno4EZCMcB8NDFHmFPXV26LA2qmC1RCeF5O4C/jYezt84Qdytf+9rggTab
 nTNWvBxY42hdofgIzn+iPokkQC1kFzZKTCygDg8WrwvPTvsaUdEr7ncgce/JFb2g
 95V79AKut7GsOOaeql82shKoX1An0DsQ9ExTUHujeCn5r5R/pCfzpF3ABmdJ4yIG
 394U+8ad1Ol1sfS+8fUN6WGxIuSPQLH8iTqXHPO5b5vPdU4TutKb+Sl9RdsAqYWI
 Elh2j8fVDr7nCQLmyQi9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284494; x=
 1718370894; bh=rCStrtW4Fkq1R+S/nsCfskDATiiOElcsAJ727pxmbL8=; b=j
 AMC1sPRhsp7OfSe23FR/2d5Ifjf20WGjG+J3a6UKLd32/Ix/DPeSSrcpnn0RoQdN
 q7EuedSAGUA3CXKym2Dnk5Ybryz0kzI8N2hAyvwwOSwWlD2CH3tIiGgurZ8tVcA6
 bk+dWVeZM1Ja3BsnM0wIFdJAbgLcVs1/kbl9WT498Vgw6VESMb0+Eo2lR0dPbG5M
 rVbhexA1DoUko/xbvmgMs7vxe2C/Qgq02oS159sJfKCknrM9knVc042/d2jVC07h
 oTUPoFpe2/+Cbgt4tZaoUAs49BJD0icOB9S+lg281szE+oOhxhiRVUrnGYA103hf
 J8rlrh02XjiGGVv1NdioQ==
X-ME-Sender: <xms:zvBqZrgGp2uJG1DaChBAEG7zqdZIYFwaLcrHGPNhsCUbF4b4_q4uhg>
 <xme:zvBqZoBIve-NX3_WYWneP_aycdeb6zfMv_hN6GPmeGe4OlrCd_b2t_IeheUs3x6yf
 arLqVD7XQNN4wOMZ94>
X-ME-Received: <xmr:zvBqZrE2G_DWCgnzGIu310pEJBFlpT6TcLt9UmdnLn7Lwl6xJhbLrboILLFNhbfKtbigOl4iUKxrRb7aGezO6EIWzeB4daE7nOF7eCSKvm3Khw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:zvBqZoS7yNxCFbh9eNpRDTz7jbQzixRTMXMaQ1CWUz2zA1WkBfq-3Q>
 <xmx:zvBqZowz5OvWkZvu69cB65liFjZ9JDSZQmMez7IsJiCh6XG92ioi4g>
 <xmx:zvBqZu5WcOT5IflqjEzGQPmpYBaGUwVCMhKXlCnuW7BXEj18wn-xuw>
 <xmx:zvBqZtxo9CtxjOs5zE0e4jESUfITZCS8f3Jw4i0MtAkXU7E-3-h9jA>
 <xmx:zvBqZj-mdUjf8tlf2CiKhc589n1YxsBFf8jfWtTefsQvEFmGgOHH2IGQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:53 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 7/8] firewire: core: record card index in tracepoinrts events
 derived from bus_reset_arrange_template
Date: Thu, 13 Jun 2024 22:14:39 +0900
Message-ID: <20240613131440.431766-8-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
References: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The asynchronous transmission of phy packet is initiated on
 one of 1394 OHCI controller, however the existing tracepoints events has
 the lack of data about it. This commit adds card_index member into event
 structure
 to store the index of host controller in use, and prints it. 
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
 [103.168.172.149 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-accredit.habeas.com]
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
X-Headers-End: 1sHkIE-0003mf-6X
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

The asynchronous transmission of phy packet is initiated on one of 1394
OHCI controller, however the existing tracepoints events has the lack of
data about it.

This commit adds card_index member into event structure to store the index
of host controller in use, and prints it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c    |  6 +++---
 include/trace/events/firewire.h | 21 ++++++++++++---------
 2 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 127d87e3a153..f8b99dd6cd82 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -222,14 +222,14 @@ static int reset_bus(struct fw_card *card, bool short_reset)
 	int reg = short_reset ? 5 : 1;
 	int bit = short_reset ? PHY_BUS_SHORT_RESET : PHY_BUS_RESET;
 
-	trace_bus_reset_initiate(card->generation, short_reset);
+	trace_bus_reset_initiate(card->index, card->generation, short_reset);
 
 	return card->driver->update_phy_reg(card, reg, 0, bit);
 }
 
 void fw_schedule_bus_reset(struct fw_card *card, bool delayed, bool short_reset)
 {
-	trace_bus_reset_schedule(card->generation, short_reset);
+	trace_bus_reset_schedule(card->index, card->generation, short_reset);
 
 	/* We don't try hard to sort out requests of long vs. short resets. */
 	card->br_short = short_reset;
@@ -249,7 +249,7 @@ static void br_work(struct work_struct *work)
 	/* Delay for 2s after last reset per IEEE 1394 clause 8.2.1. */
 	if (card->reset_jiffies != 0 &&
 	    time_before64(get_jiffies_64(), card->reset_jiffies + 2 * HZ)) {
-		trace_bus_reset_postpone(card->generation, card->br_short);
+		trace_bus_reset_postpone(card->index, card->generation, card->br_short);
 
 		if (!queue_delayed_work(fw_workqueue, &card->br_work, 2 * HZ))
 			fw_card_put(card);
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index e5524fc71880..e6485051f546 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -303,36 +303,39 @@ TRACE_EVENT(async_phy_inbound,
 );
 
 DECLARE_EVENT_CLASS(bus_reset_arrange_template,
-	TP_PROTO(unsigned int generation, bool short_reset),
-	TP_ARGS(generation, short_reset),
+	TP_PROTO(unsigned int card_index, unsigned int generation, bool short_reset),
+	TP_ARGS(card_index, generation, short_reset),
 	TP_STRUCT__entry(
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(bool, short_reset)
 	),
 	TP_fast_assign(
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		__entry->short_reset = short_reset;
 	),
 	TP_printk(
-		"generation=%u short_reset=%s",
+		"card_index=%u generation=%u short_reset=%s",
+		__entry->card_index,
 		__entry->generation,
 		__entry->short_reset ? "true" : "false"
 	)
 );
 
 DEFINE_EVENT(bus_reset_arrange_template, bus_reset_initiate,
-	TP_PROTO(unsigned int generation, bool short_reset),
-	TP_ARGS(generation, short_reset)
+	TP_PROTO(unsigned int card_index, unsigned int generation, bool short_reset),
+	TP_ARGS(card_index, generation, short_reset)
 );
 
 DEFINE_EVENT(bus_reset_arrange_template, bus_reset_schedule,
-	TP_PROTO(unsigned int generation, bool short_reset),
-	TP_ARGS(generation, short_reset)
+	TP_PROTO(unsigned int card_index, unsigned int generation, bool short_reset),
+	TP_ARGS(card_index, generation, short_reset)
 );
 
 DEFINE_EVENT(bus_reset_arrange_template, bus_reset_postpone,
-	TP_PROTO(unsigned int generation, bool short_reset),
-	TP_ARGS(generation, short_reset)
+	TP_PROTO(unsigned int card_index, unsigned int generation, bool short_reset),
+	TP_ARGS(card_index, generation, short_reset)
 );
 
 TRACE_EVENT(bus_reset_handle,
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
