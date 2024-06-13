Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D516B907355
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkIY-00042f-33;
	Thu, 13 Jun 2024 13:15:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkIG-00041h-Ka
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I8uNY8Z0JU6uknnPbF1XPQmmJMnq42rmOIUNt32Gy64=; b=S2+oHW8BJriQdRTpc7x3HPd/n1
 yNhuRcMX9UZqaglJ0wk4+iRTYDzTglr2IAA0+aQBtKNkL//M/ontswPiSmgIQpbQ4TWqxSDBn8neh
 ql88yT8Mt7ik/hyj0LsfUrD0/OVqzaR5a8uPvvKr7aodSDvm1xYkpo3ACfvJQLksYX6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I8uNY8Z0JU6uknnPbF1XPQmmJMnq42rmOIUNt32Gy64=; b=dpDyzOyyMhx0vRyF2Hgb9rDkRo
 +6VztooEK6MKDMUj8wXNN1dsCy0A5Ib9XOUat4JU1uyEe/cbxxvlxyccVB28S8MewiFWQopvPyPRx
 kQM4Vv6UIBfujvDJvDTwZ/XDw6ajme0tzWOZOuHJ26YSEKXJg4RnXeq3zsWqawKOeVYg=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkIF-0003mq-Mo for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:07 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 5698B13800CA;
 Thu, 13 Jun 2024 09:14:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 13 Jun 2024 09:14:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284496; x=
 1718370896; bh=I8uNY8Z0JU6uknnPbF1XPQmmJMnq42rmOIUNt32Gy64=; b=A
 xrXim1ypDdQX1Mzo0lQ4tgvnLpiEhUVlUMhjAi1KagBDHYejLdLLAfO2Qk89KGV/
 I0BpY8JhMNvnjX/3xBKwDStXHDDx++EsybLrNE8QHWdpKqPNdEGv8mRyf75X8HBt
 7Vjoo7bgXzlxZf2bjzXHzFqQrtltnWNRWRAeluXHUbL9aJX3lDhQMaxWxPMcWzWW
 uvAigPOPM1oMyg6TiFFAWEKH2pqm7C8f4SBNeE9oPUJQ0IKLD8wXUEL1oVJXs6Y4
 HlP6bxYoVmyWfCYxepoE59Jfc7k4+B9oB5ERGcRO0NgVOK3t+xyf8bXnwKqQEB81
 imsj5V8zLiqTLA6vCyUQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284496; x=
 1718370896; bh=I8uNY8Z0JU6uknnPbF1XPQmmJMnq42rmOIUNt32Gy64=; b=L
 7AEWbE1zUxczl1mBq9XIy9bOWL0x3U4xYJRf1oDApya9Jrz5W/IWhs9riI8NMYn8
 6FfmtqddN7GgMDi6w8OXFp95xlwcTru7q65Gv5fuhPAN6Dz5buz1crufra+aky5s
 dfDb2nT27Wt0Oaf8Zv1nWZVIA8yynMDSqRVwS/VXc09KYmXEb1Myj3IPwYcYIOW1
 eZ7SmKLmWQUNsW8Ce8CuceZv5zm+9nrLd+DkOm9mVEQjBOiktdRSN0D7eoydSPeH
 OvujpNIRrTpAfikAl1YpuVpT0vBGHoUOEUsL53dr4NC1cALOGwxu/NIRXSXRAKP9
 nx4R7179URoIlwmFk79HQ==
X-ME-Sender: <xms:0PBqZlGtT-lv4-sSkBpF92G-F-NRH2-2AaSh-959PaKdKyOKrFnE6g>
 <xme:0PBqZqWtRTmURMY_3ML8CfsvpjfXKhlY_YB6eClT57iig-VzHGMpb5SEpXneHeAJF
 wXRSIEZbI63br7ntWg>
X-ME-Received: <xmr:0PBqZnKFKR5EE98C8Nt2Jd3yEXpjEmKVqekRZjr7FYYm--W8qZQRcP0HjsKowJUuGRx4RqBIA80wVTjCI5TIbR47YbwjqASrToh8jMYiHaZ3gw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:0PBqZrGpjUukGyV2qdKZknP2VGhPml68rvxMoRWVLFvAn5S7dx25Dw>
 <xmx:0PBqZrUKNptCwwHEd8HrOYAUeR1JBhZ-EKJRLeupo6YcHv8z0vakMQ>
 <xmx:0PBqZmPJY_ktCKPE5R-2MjryIK5Fa6Dh3ic2YlMFqGwJKJsv7X2Gcw>
 <xmx:0PBqZq1CTcpT-oTJewp529fqLeIOYDFD12jNs6Y9xZiXpNFXf15kXg>
 <xmx:0PBqZojZkUZso3pVlObWOASvz8stApKBA8FC8_xE9E2y0E68EVM1pV6n>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:55 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 8/8] firewire: core: record card index in bus_reset_handle
 tracepoints event
Date: Thu, 13 Jun 2024 22:14:40 +0900
Message-ID: <20240613131440.431766-9-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
References: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The bus reset event occurs in the bus managed by one of 1394
 OHCI controller in Linu system, however the existing tracepoints events has
 the lack of data about it to distinguish the issued hardware fr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.149 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHkIF-0003mq-Mo
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

The bus reset event occurs in the bus managed by one of 1394 OHCI
controller in Linu system, however the existing tracepoints events has
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
index 837cc44d8d9f..8107eebd4296 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -508,7 +508,7 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 	struct fw_node *local_node;
 	unsigned long flags;
 
-	trace_bus_reset_handle(generation, node_id, bm_abdicate, self_ids, self_id_count);
+	trace_bus_reset_handle(card->index, generation, node_id, bm_abdicate, self_ids, self_id_count);
 
 	spin_lock_irqsave(&card->lock, flags);
 
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index e6485051f546..5ccc0d91b220 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -339,22 +339,25 @@ DEFINE_EVENT(bus_reset_arrange_template, bus_reset_postpone,
 );
 
 TRACE_EVENT(bus_reset_handle,
-	TP_PROTO(unsigned int generation, unsigned int node_id, bool bm_abdicate, u32 *self_ids, unsigned int self_id_count),
-	TP_ARGS(generation, node_id, bm_abdicate, self_ids, self_id_count),
+	TP_PROTO(unsigned int card_index, unsigned int generation, unsigned int node_id, bool bm_abdicate, u32 *self_ids, unsigned int self_id_count),
+	TP_ARGS(card_index, generation, node_id, bm_abdicate, self_ids, self_id_count),
 	TP_STRUCT__entry(
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(u8, node_id)
 		__field(bool, bm_abdicate)
 		__dynamic_array(u32, self_ids, self_id_count)
 	),
 	TP_fast_assign(
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		__entry->node_id = node_id;
 		__entry->bm_abdicate = bm_abdicate;
 		memcpy(__get_dynamic_array(self_ids), self_ids, __get_dynamic_array_len(self_ids));
 	),
 	TP_printk(
-		"generation=%u node_id=0x%04x bm_abdicate=%s self_ids=%s",
+		"card_index=%u generation=%u node_id=0x%04x bm_abdicate=%s self_ids=%s",
+		__entry->card_index,
 		__entry->generation,
 		__entry->node_id,
 		__entry->bm_abdicate ? "true" : "false",
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
