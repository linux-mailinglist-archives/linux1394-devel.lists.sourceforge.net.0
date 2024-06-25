Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75676915D49
	for <lists+linux1394-devel@lfdr.de>; Tue, 25 Jun 2024 05:18:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLwhP-0008Hn-O6;
	Tue, 25 Jun 2024 03:18:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLwhN-0008Hd-TJ
 for linux1394-devel@lists.sourceforge.net;
 Tue, 25 Jun 2024 03:18:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mSPkcXLIXHxec9tFgIIwhVMkJhD9BeYdevEsnZ7PZ/o=; b=hitrSIisSPDYW+xDrpY1xGYdYM
 sccAyX/3GebTuz60twH08a8+7WpzbUl0BP3T0ex6zoDfmJkSHxTLaLkN3QXbSB2zlLVHuZ/HTADIY
 op2bO6hZQAb/fmw4VOqOb2AinDbDpH4JekHhh5doYnFZaPn0RlxjSQYh2Xh/HfaxPwhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mSPkcXLIXHxec9tFgIIwhVMkJhD9BeYdevEsnZ7PZ/o=; b=W76/7eRwUGqSh/qiSrbD5Sm8PL
 arytOdzdpHPRCvKhXOM9CB9mxM5AfBbCshMvNkXpK3efg/8xpxILY929YeeEo0YKyidk5YToKFw/N
 3rUtMa5sD9m+1KcEy1p2pHWtRLSnWZQtrqAwW73O9NWL9OikULbHSYB9Qv+tgyXpz9jk=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLwhN-00022m-8o for linux1394-devel@lists.sourceforge.net;
 Tue, 25 Jun 2024 03:18:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id E8FAC13800F0;
 Mon, 24 Jun 2024 23:18:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 24 Jun 2024 23:18:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719285493; x=
 1719371893; bh=mSPkcXLIXHxec9tFgIIwhVMkJhD9BeYdevEsnZ7PZ/o=; b=T
 YiX2QH8Kz4C3qWWd/SVcj8XJqiQxjMOWQGHbIb3zeyP5MUtvTBENQG88UommJIKC
 4mJbIYcIKsrkg/MTCySdpDBXv7yDIbfLNA6iosughbGPk7/ZlY0yfokNYnq6Dt9i
 EwpfitJJ2ZtL+xHDBJ1J0K0VVqMje+vZ5Urpiu94so/YNVw/RRZjg5dslRnOyFNH
 MoPJ4Tc9+7jR1Q8rDEDWn2yN9Yn9jEoXm6PMw/ZY/nDtNygcoBSOf1b8HG+1qRz9
 sr4cArnVbr5PiADZviRtiykGQmjziFylYIG/tIQQy6FbpKbtxFxSpfW8DR7QvGEt
 RdDsguMtZAYeZ4TG6F2MA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719285493; x=
 1719371893; bh=mSPkcXLIXHxec9tFgIIwhVMkJhD9BeYdevEsnZ7PZ/o=; b=N
 PCpq3EahVlcRjdX/gxyy0xfINKTn1Q99ymb/s6F0J7nno0YHBA6Dw3Q4gKYinfgy
 XjB58sVAeqp9h0wizEujcLzEnaYgX8QeWDR9nqpR/3/pcAh9d2EbhDW5UJyHeGp3
 0V9Z4dWbkYBAEtwXU0Jt51ikx/iVdwyO1U47A5kC/tPZK+F6JVaWv2uqSxd2/WRp
 L9AvXtTpejFbzBpp8kCrIVZdEmn+03raDjhVuCEzpE6lk7dk0+V8POUQSr9ZSbD4
 einRzgAM1H444qNnY0a8RjngWrWpakJJtH9t2eorPk2dylJyXVpznIrOVLdZgUPj
 hYvvcjsgQnjJtL1MLFQWw==
X-ME-Sender: <xms:9TZ6ZiZbCUdOhBXEA4l0st7YXdJG1HzoPWIifjAI89Uu-Ey4TZAszQ>
 <xme:9TZ6ZlYP3ulJmrDrlDOD1bAIHwH6Vkir6WHwVPMxklSigCudPYkV_jEaWKRUWPsw3
 eQIgLKSeGWrkT_RAZs>
X-ME-Received: <xmr:9TZ6Zs8j_MO7mK0CNaa0KL3vTFUD5eEjaS3asm3UlD-KsIXDEIlFgaFXuAU0eZpw5INweWpxfOCEMWWMYnfkS4_osi27qWzzD7XhmQH83v8sbQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegvddgjeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:9TZ6ZkqlPsT9KrBmCQ_0GLEHyB6zAb4NPnEoNxaq8SrNMtghAamGow>
 <xmx:9TZ6ZtqgqJ_yBhFP8UETHzy2Pi-t9GBiXXPrhthURHSx10DmXN0JeA>
 <xmx:9TZ6ZiT1LlFiwzuCEslaFg_ab5jVj7anfKaSnVTRvYWLzjzm7x1IUA>
 <xmx:9TZ6ZtpJCmnlc8uWSOpY2hHVAllzcJAbAGtlGrZ_q2VVVqpReiQnGA>
 <xmx:9TZ6Zk0v8bK0sL4aNRqJJGdDl7AmVVrijMs4AWPh6oJr8QXPYqKAxwOW>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Jun 2024 23:18:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: ohci: add tracepoints event for hardIRQ event
Date: Tue, 25 Jun 2024 12:18:06 +0900
Message-ID: <20240625031806.956650-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240625031806.956650-1-o-takashi@sakamocchi.jp>
References: <20240625031806.956650-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: 1394 OHCI hardware triggers PCI interrupts to notify any
 events
 to software. Current driver for the hardware is programmed by the typical
 way to utilize top- and bottom- halves, thus it has a timing g [...] 
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
 [103.168.172.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sLwhN-00022m-8o
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

1394 OHCI hardware triggers PCI interrupts to notify any events to
software. Current driver for the hardware is programmed by the typical
way to utilize top- and bottom- halves, thus it has a timing gap to handle
the notification in softIRQ (tasklet).

This commit adds a tracepoint event for the hardIRQ event. The comparison
of the tracepoint event to tracepoints events in firewire subsystem is
helpful to diagnose the timing gap.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c              |  1 +
 include/trace/events/firewire_ohci.h | 33 +++++++++++++++++++++++++++-
 2 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 07adb4ddd444..df16a8f4ee7f 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2185,6 +2185,7 @@ static irqreturn_t irq_handler(int irq, void *data)
 	 */
 	reg_write(ohci, OHCI1394_IntEventClear,
 		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
+	trace_irqs(ohci->card.index, event);
 	log_irqs(ohci, event);
 	// The flag is masked again at bus_reset_work() scheduled by selfID event.
 	if (event & OHCI1394_busReset)
diff --git a/include/trace/events/firewire_ohci.h b/include/trace/events/firewire_ohci.h
index 67fa3c1c8f6d..483aeeb033af 100644
--- a/include/trace/events/firewire_ohci.h
+++ b/include/trace/events/firewire_ohci.h
@@ -9,7 +9,38 @@
 
 #include <linux/tracepoint.h>
 
-// Placeholder for future use.
+TRACE_EVENT(irqs,
+	TP_PROTO(unsigned int card_index, u32 events),
+	TP_ARGS(card_index, events),
+	TP_STRUCT__entry(
+		__field(u8, card_index)
+		__field(u32, events)
+	),
+	TP_fast_assign(
+		__entry->card_index = card_index;
+		__entry->events = events;
+	),
+	TP_printk(
+		"card_index=%u events=%s",
+		__entry->card_index,
+		__print_flags(__entry->events, "|",
+			{ OHCI1394_selfIDComplete,	"selfIDComplete" },
+			{ OHCI1394_RQPkt,		"RQPkt" },
+			{ OHCI1394_RSPkt,		"RSPkt" },
+			{ OHCI1394_reqTxComplete,	"reqTxComplete" },
+			{ OHCI1394_respTxComplete,	"respTxComplete" },
+			{ OHCI1394_isochRx,		"isochRx" },
+			{ OHCI1394_isochTx,		"isochTx" },
+			{ OHCI1394_postedWriteErr,	"postedWriteErr" },
+			{ OHCI1394_cycleTooLong,	"cycleTooLong" },
+			{ OHCI1394_cycle64Seconds,	"cycle64Seconds" },
+			{ OHCI1394_cycleInconsistent,	"cycleInconsistent" },
+			{ OHCI1394_regAccessFail,	"regAccessFail" },
+			{ OHCI1394_unrecoverableError,	"unrecoverableError" },
+			{ OHCI1394_busReset,		"busReset" }
+		)
+	)
+);
 
 #endif // _FIREWIRE_OHCI_TRACE_EVENT_H
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
