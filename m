Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B89907354
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkIW-0005UN-QJ;
	Thu, 13 Jun 2024 13:15:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkIG-0005TP-OH
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AGsv0aysTD3ZzDyuMSeXNAH/CM0Cg2AP7pJ8uuAcP8M=; b=Y8/IHV8r+851GAD9OYkX0xoDsm
 eA3tyqIV0GF4LNRu0TeP438On0JH/Fj157rWhCBQJuwF7fH9MTgMaeLiCGUZ4F995FuyBlkMO3sGu
 p1cQ1HOgdb6YJeHTtMsS2yvayxi+kzBZ48LDCGgExwf69R7lUZf78JsQO80XLnNFdLoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AGsv0aysTD3ZzDyuMSeXNAH/CM0Cg2AP7pJ8uuAcP8M=; b=OEQNa8obAFTsAcoMYh+FgG2ATY
 cso8o1TXxQMpfDwR90gEhPQW1BNcF/BPOMPONSE4Ez+MYUZ+HiVWVVWLo26H+Pbo3MdZEF8nbEd/4
 JiGHGMxu7KkytA5MJS2G+qKD3D3B8JbokE5t3b5LcoL51q9sOGH/PN2bNA8uT0BzA5ik=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkIC-0003mZ-O3 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:15:04 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 5FCC613800AF;
 Thu, 13 Jun 2024 09:14:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 13 Jun 2024 09:14:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284493; x=
 1718370893; bh=AGsv0aysTD3ZzDyuMSeXNAH/CM0Cg2AP7pJ8uuAcP8M=; b=h
 /BaPTUw2CLEZtN94+3IrZ7aXazkU/pdR/IUfy/HSUR0uRLiUPVIKMZjx16O96FGB
 EHt9Zs87ia1b97ClzUyDJNRgOzVRERDEcziWDuCpbu8h7+zkPNRFitugUok4Dx3K
 SNnGlskUPQbq1NQOY9XUXtTi5/Hgi1zrOPyFEcQ1l+KOcuW02IMLakVoAshsN4pG
 jHT3b2jqkyPonjsOOD9+S60EFWZqtYJKQRht97RUdKkW4o9Abtux8ztzd6bphKDB
 uRQdk82rQARF7V4PGY8uXOsQPkchzUHpeD7KYAofnUse18NGkpA1N+dqVa5Z7pkp
 EIdduoDdogYPHzHQVpupA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284493; x=
 1718370893; bh=AGsv0aysTD3ZzDyuMSeXNAH/CM0Cg2AP7pJ8uuAcP8M=; b=M
 fT/OxSDC69y6iphM7EprcDjh5vlo9SqaefE7d0MICAQwlkKDh5Ma44YWNZaQ+8Jj
 ga1+P8SNLclcxo0uGlmNFzDCnBUSunZstXlvzJ27FiC5ltguMylvb4HPX3zYQISs
 MMdTg2SX88StPEJ/NlRYw51DxC92P40TUb7PdlcNcsw+5D5wRsurFPcpceur52c1
 RVfpS62zKkGOJFDiJcD1KlweJaPSlW5EFC5tInUdKNOYcjl2q9e8LfW1c7JuwYoH
 oUR8bVZzdPHFEAmNOt98MqIu83eLGppSdeYAI4wVq1hCqumJQFq9uBJQExcKXRHO
 ADJd3AxfxzSuc4bWONnVQ==
X-ME-Sender: <xms:zfBqZm3jALAEP27JUEdmXCLB9HYZMcbjDiUfyrQSnzrjXz_aXclQxg>
 <xme:zfBqZpHfJjOz81B0uTIoKSgDxQ3sZuSpApixZrFP2Wv5YbRa7J-iYkoMM1wSuJKYu
 A3YfaSt9paUGSLK43M>
X-ME-Received: <xmr:zfBqZu7OdYMVsjKIAGyET1HedcCxHmjR3euVAn0_Obf6GXz1Gzi-I10KfX838o44fRdun4mLFUFtvt-JJDxZ0Xd7-ZwRsvy4zZjJ4cWBNPUvGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:zfBqZn1bXj1Yl1u3OU716NxgfZtyrMVeAEaYxdKnDtM8CZ9cqtL9Yg>
 <xmx:zfBqZpEG3-CzVpPq98jA9IqzrLCZcGm9jRGTddXfRqtxbFtj6AMi0A>
 <xmx:zfBqZg-ubmsf8UoUii_o_HOZY-fVUeCk03nvX9KfoWfjrpqxA96veA>
 <xmx:zfBqZukn8xiBcC5aAoU9XAGu1-sFfPDXp3KUfYbZ0RZMYOgYfuu79A>
 <xmx:zfBqZuT0k0BimhAtdmjmg0S1V30xp_AqgsFpMcasV5AXokBsegdDyxQe>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/8] firewire: core: record card index in async_phy_inbound
 tracepoints event
Date: Thu, 13 Jun 2024 22:14:38 +0900
Message-ID: <20240613131440.431766-7-o-takashi@sakamocchi.jp>
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
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sHkIC-0003mZ-O3
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
 drivers/firewire/core-transaction.c | 2 +-
 include/trace/events/firewire.h     | 8 +++++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index bd5a467cfd60..76ab6a209768 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -997,7 +997,7 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
 
 	tcode = async_header_get_tcode(p->header);
 	if (tcode_is_link_internal(tcode)) {
-		trace_async_phy_inbound((uintptr_t)p, p->generation, p->ack, p->timestamp,
+		trace_async_phy_inbound((uintptr_t)p, card->index, p->generation, p->ack, p->timestamp,
 					 p->header[1], p->header[2]);
 		fw_cdev_handle_phy_packet(card, p);
 		return;
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index 61c7a2461fbc..e5524fc71880 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -271,10 +271,11 @@ TRACE_EVENT(async_phy_outbound_complete,
 );
 
 TRACE_EVENT(async_phy_inbound,
-	TP_PROTO(u64 packet, unsigned int generation, unsigned int status, unsigned int timestamp, u32 first_quadlet, u32 second_quadlet),
-	TP_ARGS(packet, generation, status, timestamp, first_quadlet, second_quadlet),
+	TP_PROTO(u64 packet, unsigned int card_index, unsigned int generation, unsigned int status, unsigned int timestamp, u32 first_quadlet, u32 second_quadlet),
+	TP_ARGS(packet, card_index, generation, status, timestamp, first_quadlet, second_quadlet),
 	TP_STRUCT__entry(
 		__field(u64, packet)
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(u8, status)
 		__field(u16, timestamp)
@@ -290,8 +291,9 @@ TRACE_EVENT(async_phy_inbound,
 		__entry->second_quadlet = second_quadlet
 	),
 	TP_printk(
-		"packet=0x%llx generation=%u status=%u timestamp=0x%04x first_quadlet=0x%08x second_quadlet=0x%08x",
+		"packet=0x%llx card_index=%u generation=%u status=%u timestamp=0x%04x first_quadlet=0x%08x second_quadlet=0x%08x",
 		__entry->packet,
+		__entry->card_index,
 		__entry->generation,
 		__entry->status,
 		__entry->timestamp,
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
