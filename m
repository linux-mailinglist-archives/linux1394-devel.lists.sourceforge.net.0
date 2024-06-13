Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E63E90734C
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Jun 2024 15:15:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sHkI8-0002Zv-Q7;
	Thu, 13 Jun 2024 13:15:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sHkI5-0002Zi-Bq
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pKmgdIHnHnIlspZLPXht7lfKdMoxfoyma3rtoghKko0=; b=JBvGVjaaeeOWyNA6HMTqCBYJ2p
 WzDQAE0hc7WWFTF5+3PcMo5J0TFvE/t+h5SShW3kqpvHMp+vdwcI1LD1kQ+drZxNRen7tRxqE6tKI
 grhVCmmSfpnAhJKz4RahQPo92JXju55wRt6r+c02AL+S3AER103PAg+EEOU0/JWG50uw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pKmgdIHnHnIlspZLPXht7lfKdMoxfoyma3rtoghKko0=; b=UdgzkHgXUWxiYBkVlgW/Nsvhk0
 9bYOwkU4wv5ajDjxtThSqFKOElAmGEUMpb1tTiUuJ4FFeCUyOIFt12MOtozvtf7vrHPm/qYyh1uOB
 OkO6wBhE96fm0vim1EUBW+JwLVe/IwN1FjklRCJA65TzzVTL3neiCrHaMe2JAp/ai4hU=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sHkI4-0003ly-MD for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Jun 2024 13:14:56 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id 57AF7138008A;
 Thu, 13 Jun 2024 09:14:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 13 Jun 2024 09:14:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718284490; x=
 1718370890; bh=pKmgdIHnHnIlspZLPXht7lfKdMoxfoyma3rtoghKko0=; b=O
 9yOsOReifzDzgytpBnqKGj5OtTE3Uc7FWY5pdSmDsaM9WnPKYnyM/GhrLdjbDX72
 eBM/qy83wOlS/HWyTm4n9U6V/XtoDrWDRFh3vTSv2PiAj1LA/+YAYxw/5k8pb9tn
 PvppA51zA+Au+4OvC/4l73pCaV0WeEoLRDEzQP7/eldSzvyEZWQnZGlELlk3XXX4
 Ms1EIGk9/A8TEohkY0BpOjOHbhIlRqJDpEFlTUe5OFXg+IgZ/BWOT1yMwp8hUs8a
 CjjdOmUQaOr6UYaBuZy2MS8VkbSVFSRzM2i6/tggsQplswqrjjtJ2f0t4pTFkSyb
 gDmk28KTQB2Moq7uiGBzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718284490; x=
 1718370890; bh=pKmgdIHnHnIlspZLPXht7lfKdMoxfoyma3rtoghKko0=; b=f
 f3SvrhYlXQ9Gk85BhEda40+k7gViWQFssF2zVC6nnc2fcEx/yk+wzWuJxYoHERg9
 jpOwzWw4FAq6JG9O8AnHiKINGdRa1X0GG2O/C2O6tvh01SzXMBy3R6oDOGcX4/N6
 kYbhVmeunOo1BHwqrp6ChyKbF0l352JWU33gpp+4H5aEsa5XOHHa4oS4M/cmYqAA
 idpYLKI5YMcS0HINa77A/o1Edx9t18vrlqb+bbKbYlX1TADfXGsK6Y87SFJSggO/
 jvbgy8p1+GTyiUoKoqv6pl7vDYofdATGfGbgXgvbyrXj7mJBNV5YtodEoHeD0i3W
 p1480UxkJeDiNBv5x0w2A==
X-ME-Sender: <xms:yvBqZm-096AauJuCHFlZwZ5_RwhgZ_gySiVZp8xZxuoUrh987fAbZw>
 <xme:yvBqZmup3fW7ydQOlUDN8RCDN0LiqRIFLFzT7FTQXZU11D-LLWHMr6Q71QqthT9_K
 kASsC2TOgKe0ivwWz8>
X-ME-Received: <xmr:yvBqZsCcm8VTiGtRDvH9uQFkEA-mkVm44aZMy1KT70CIeE7zQiyl87YPugxXXnZaMuBvxhRYL-1GIalGGQm50L2xILGyxBh6ml1Gk6byN4JDHw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedujedgheelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:yvBqZuep-Tc7zwP4Zw-vX457nFvm85m-OsZl8FFp5Ciztw_Wv9p5Ug>
 <xmx:yvBqZrOlKlP5WFFI8E1bGIicTLG3gMfVwBaroPcD86Oq1H_yP6qMww>
 <xmx:yvBqZon78TVkNgm1VjVT5qduCsM9HcObQl8kr-ckEChue0_0Y47Sag>
 <xmx:yvBqZtvA7oLtRB10ssWMXdLjyeGk3mkFZGs7k5mSHB28phu-Q5h0Xw>
 <xmx:yvBqZkaWExIJXfiAsDXgLylEm250QPAr217yy1izotl-S3x4DTNNetke>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 13 Jun 2024 09:14:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/8] firewire: core: record card index in
 async_phy_outbound_initiate tracepoints event
Date: Thu, 13 Jun 2024 22:14:36 +0900
Message-ID: <20240613131440.431766-5-o-takashi@sakamocchi.jp>
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
 Content preview: The asynchronous transaction is initiated on one of 1394 OHCI
 controller, however the existing tracepoints events has the lack of data
 about it. This commit adds card_index member into event structure to store
 the index of host controller in use, and prints it. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in sa-trusted.bondedsender.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.149 listed in bl.score.senderscore.com]
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
X-Headers-End: 1sHkI4-0003ly-MD
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

The asynchronous transaction is initiated on one of 1394 OHCI
controller, however the existing tracepoints events has the lack of data
about it.

This commit adds card_index member into event structure to store the index
of host controller in use, and prints it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c        | 4 ++--
 drivers/firewire/core-transaction.c | 2 +-
 include/trace/events/firewire.h     | 9 ++++++---
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 55993c9e0b90..ff8739f96af5 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1659,8 +1659,8 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 		memcpy(pp->data, a->data, sizeof(a->data));
 	}
 
-	trace_async_phy_outbound_initiate((uintptr_t)&e->p, e->p.generation, e->p.header[1],
-					  e->p.header[2]);
+	trace_async_phy_outbound_initiate((uintptr_t)&e->p, card->index, e->p.generation,
+					  e->p.header[1], e->p.header[2]);
 
 	card->driver->send_request(card, &e->p);
 
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 3503c238f8ae..e522dc3d9897 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -504,7 +504,7 @@ void fw_send_phy_config(struct fw_card *card,
 	phy_config_packet.generation = generation;
 	reinit_completion(&phy_config_done);
 
-	trace_async_phy_outbound_initiate((uintptr_t)&phy_config_packet,
+	trace_async_phy_outbound_initiate((uintptr_t)&phy_config_packet, card->index,
 					  phy_config_packet.generation, phy_config_packet.header[1],
 					  phy_config_packet.header[2]);
 
diff --git a/include/trace/events/firewire.h b/include/trace/events/firewire.h
index b72f613cfa02..a59dc26b2a53 100644
--- a/include/trace/events/firewire.h
+++ b/include/trace/events/firewire.h
@@ -217,23 +217,26 @@ DEFINE_EVENT(async_outbound_complete_template, async_response_outbound_complete,
 #undef ASYNC_HEADER_GET_RCODE
 
 TRACE_EVENT(async_phy_outbound_initiate,
-	TP_PROTO(u64 packet, unsigned int generation, u32 first_quadlet, u32 second_quadlet),
-	TP_ARGS(packet, generation, first_quadlet, second_quadlet),
+	TP_PROTO(u64 packet, unsigned int card_index, unsigned int generation, u32 first_quadlet, u32 second_quadlet),
+	TP_ARGS(packet, card_index, generation, first_quadlet, second_quadlet),
 	TP_STRUCT__entry(
 		__field(u64, packet)
+		__field(u8, card_index)
 		__field(u8, generation)
 		__field(u32, first_quadlet)
 		__field(u32, second_quadlet)
 	),
 	TP_fast_assign(
 		__entry->packet = packet;
+		__entry->card_index = card_index;
 		__entry->generation = generation;
 		__entry->first_quadlet = first_quadlet;
 		__entry->second_quadlet = second_quadlet
 	),
 	TP_printk(
-		"packet=0x%llx generation=%u first_quadlet=0x%08x second_quadlet=0x%08x",
+		"packet=0x%llx card_index=%u generation=%u first_quadlet=0x%08x second_quadlet=0x%08x",
 		__entry->packet,
+		__entry->card_index,
 		__entry->generation,
 		__entry->first_quadlet,
 		__entry->second_quadlet
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
