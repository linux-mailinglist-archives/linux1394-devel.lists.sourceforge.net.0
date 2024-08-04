Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4405946ED7
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:03:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saat3-0004wD-8n;
	Sun, 04 Aug 2024 13:03:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasy-0004vH-6W
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=ijdPa2I0Y+D/MMU3+RT+r/TlTQ
 gHeyhDO/EKYduiSo6VUVCpnqgZx04Uui0Ap9Z+PxVvQbtF6vPoArp7c2yzv3nSCGTkiR0ozbExirq
 7x0BJxqTWXRhAbOsadSUyzcfkAEFCv36n2oEVCAlQpNU8rnthaJK6uUB8ZqcVxYk8HFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=Xdnj6ONEhKTkDsiYOYI3Aaq13+
 fT0HZPrVDbKY3DeaqwPSkz5wzxu01e/xoS5YXc+hrp92RkeyjjiUjMnZKoaq3IU0uNimZT05nob2E
 xISB0+z5otDIFfVbIAp2sLLrEJQhfudqLYebEBqWsrs+1n1BHdy61mr0Szg7cD95fCr4=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasx-0001Ec-7Q for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:55 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id A6259114814F;
 Sun,  4 Aug 2024 09:02:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 04 Aug 2024 09:02:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776569; x=
 1722862969; bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=K
 tvtMoTcmx5jSUiz10zOZ0vgMH/H0UGOgxo/4kx8kArjArkdqZDjuDjVyxFK5AuM0
 bt4uKKg08zH1uGCcPFAyEedGtnKV1ZIk4YPQMtzHdYnODuzAxUSk8+f7ZCDp0Ey2
 RoMpZFb6jej80tpRpUWWVnB3XP7YAhiyHtosqnkF6mYL7YbCgutPbdKKkwelfuY+
 G0g9wfmjhN9DTAsgQuRYA18Td+fpVeiz8jNctJ+Fc1jbTrLXPtFvopk/za/R42G5
 nEstd4Vfol7UM7Q071PIcCQW0rCCf2R/Iyg1/ipDbWY2sjDbqaI+sad8UaoY26JJ
 dmZ+r86P6IluKyf2xU3NA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776569; x=
 1722862969; bh=bU5KUiELPtrWttit1O/f/6nD4P98n+MP8Do0wq0HKos=; b=k
 EOTm/UhtajSp8x0G807qlS6XiRnrqervBMh0oBatOketmDqjYfQHhnipGGabLbT+
 /g1w+f6d3wZTgt0aV7q8FPRxE3qBOQpiR9J1eknZbNcx0hxCN47gpZ6VnlaMoFqL
 5FFY3i7YwAxnKzyQWAcLKovG0Go9XnSG42O/GxWAqKE1UktW+JyIJPjVZorO1nul
 cu6W6uukLfUgK6pZaoGqM7pm0iqoj1p+LklgXaSwpPCnndt9KcvxHub3jqZ1q+p1
 AvrdGr3kZ6+b4m+E09QjfpnH+5e9gslaQ5Xs/kex0UdHaQbDpJmapJIULLmmJ1C7
 KLwEWtNGV+lufLtDY+Teg==
X-ME-Sender: <xms:-XuvZs08JTgKAfxAab0qCCMSiO4uWfhN88CNwW4yvA1yJMttpVsAtg>
 <xme:-XuvZnEtbXcyzIWo36J73C8QrrDxF1ztDqiX2ZJCuvKQsK0wPAtauTM2gLt955krS
 ypU9E8eE3qdvQPcuXw>
X-ME-Received: <xmr:-XuvZk433MnL4-HcMdna_ulZvpfACPlcwj7XPoX8tGWmCmvGX--we527AKcKMst0jIoF9w4Oy58m-1-4wOkfpcF_b9EuHMYFSZXYHI-PxtONEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:-XuvZl0MP7HHXqDVnxgY2w6YLRc7TyVfLY-OWtg44vYQcoPRnuZmdA>
 <xmx:-XuvZvGV82TQ-5tlns0LheZTAg2UT8DGnnJohVQGDUJ26ZhO5C1gqw>
 <xmx:-XuvZu_5f41x0RQW31OuAhcOdYkQU7GUZB9QxhlcywOaj1Cxuiht2A>
 <xmx:-XuvZkm2-1ZxGHL6AGiDkwPymaqaU86-xbCFnNAq1MVsw9KPJnAWSQ>
 <xmx:-XuvZkQQJ2VuWpJmGDSBdh5isnKEE7Z1_fDojs7eSgwnaSY6-li11B2A>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:48 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 15/17] firewire: ohci: use guard macro to maintain bus time
Date: Sun,  4 Aug 2024 22:02:22 +0900
Message-ID: <20240804130225.243496-16-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver maintains bus time to respond to
 querying
 request. The concurrent access to the bus time is protected by spinlock.
 This commit uses guard macro to maintain the spinlock. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/ohci.c | 30
 ++++++++++++ 1 file changed, 12 insertions(+), 18 deletions(-) 
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
 [103.168.172.159 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [103.168.172.159 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1saasx-0001Ec-7Q
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

The 1394 OHCI driver maintains bus time to respond to querying request.
The concurrent access to the bus time is protected by spinlock.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 30 ++++++++++++------------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 1461e008d265..5cb7c7603c2c 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2300,9 +2300,8 @@ static irqreturn_t irq_handler(int irq, void *data)
 		handle_dead_contexts(ohci);
 
 	if (event & OHCI1394_cycle64Seconds) {
-		spin_lock(&ohci->lock);
+		guard(spinlock)(&ohci->lock);
 		update_bus_time(ohci);
-		spin_unlock(&ohci->lock);
 	} else
 		flush_writes(ohci);
 
@@ -2762,7 +2761,6 @@ static int ohci_enable_phys_dma(struct fw_card *card,
 static u32 ohci_read_csr(struct fw_card *card, int csr_offset)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	unsigned long flags;
 	u32 value;
 
 	switch (csr_offset) {
@@ -2786,16 +2784,14 @@ static u32 ohci_read_csr(struct fw_card *card, int csr_offset)
 		return get_cycle_time(ohci);
 
 	case CSR_BUS_TIME:
-		/*
-		 * We might be called just after the cycle timer has wrapped
-		 * around but just before the cycle64Seconds handler, so we
-		 * better check here, too, if the bus time needs to be updated.
-		 */
-		spin_lock_irqsave(&ohci->lock, flags);
-		value = update_bus_time(ohci);
-		spin_unlock_irqrestore(&ohci->lock, flags);
-		return value;
+	{
+		// We might be called just after the cycle timer has wrapped around but just before
+		// the cycle64Seconds handler, so we better check here, too, if the bus time needs
+		// to be updated.
 
+		guard(spinlock_irqsave)(&ohci->lock);
+		return update_bus_time(ohci);
+	}
 	case CSR_BUSY_TIMEOUT:
 		value = reg_read(ohci, OHCI1394_ATRetries);
 		return (value >> 4) & 0x0ffff00f;
@@ -2813,7 +2809,6 @@ static u32 ohci_read_csr(struct fw_card *card, int csr_offset)
 static void ohci_write_csr(struct fw_card *card, int csr_offset, u32 value)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
-	unsigned long flags;
 
 	switch (csr_offset) {
 	case CSR_STATE_CLEAR:
@@ -2849,12 +2844,11 @@ static void ohci_write_csr(struct fw_card *card, int csr_offset, u32 value)
 		break;
 
 	case CSR_BUS_TIME:
-		spin_lock_irqsave(&ohci->lock, flags);
-		ohci->bus_time = (update_bus_time(ohci) & 0x40) |
-		                 (value & ~0x7f);
-		spin_unlock_irqrestore(&ohci->lock, flags);
+	{
+		guard(spinlock_irqsave)(&ohci->lock);
+		ohci->bus_time = (update_bus_time(ohci) & 0x40) | (value & ~0x7f);
 		break;
-
+	}
 	case CSR_BUSY_TIMEOUT:
 		value = (value & 0xf) | ((value & 0xf) << 4) |
 			((value & 0xf) << 8) | ((value & 0x0ffff000) << 4);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
